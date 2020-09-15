package com.eogame.presenter;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

import com.eogame.constants.Data;
import com.eogame.constants.MessageCode;
import com.eogame.constants.EOCommon;
import com.eogame.crypto.Base64;
import com.eogame.crypto.DES;
import com.eogame.google.IabHelper;
import com.eogame.google.IabResult;
import com.eogame.google.Inventory;
import com.eogame.google.Purchase;

import java.util.HashMap;
import java.util.Map;

/**
 * google支付逻辑处理类
 * 
 * @author wujunfeng
 * @date 创建时间：2016-10-19 下午4:19:51
 * @version 1.0
 */
public class EOGooglePresenter  {
	private Activity mContext;
	private String skuID;
	private IabHelper mIabHelper;
    private Purchase currentPurchase;  //当前支付品项
	private Handler handler;

    private static final String KEY_OREDER_ID = "order_id";
    private static final int CODE_GOOGEL_PLAY = 23416;

	public EOGooglePresenter(Activity context , Handler handler) {
	    mContext = context;
	    this.handler =  handler;
		this.mIabHelper = new IabHelper(context);//创建iabhelper实例，根据不同回调做相应处理
	}

	/**
	 * 初始化google支付服务。
	 */
	public void initIabHelper(){
	    mIabHelper.enableDebugLogging(EOCommon.debug);
	    mIabHelper.startSetup(new IabHelper.OnIabSetupFinishedListener() {//设置初始化完成监听
            @Override
            public void onIabSetupFinished(IabResult result) {
                sendMsg(result.isSuccess(),MessageCode.CODE_PAY_GOOGLE_Init);//信息码10105 初始化成功
            }
        });
    }
	
	/**
	 * 查询是否有sku的库存。配置在google console的应用内商品
	 * @param sku
	 */
    public void queryInventory(String sku){
        this.skuID = sku;
        currentPurchase = null;
        try {
            mIabHelper.queryInventoryAsync(mGetInventoryListener);
        } catch (IabHelper.IabAsyncInProgressException e) {
            e.printStackTrace();
            sendMsg(null,MessageCode.CODE_PAY_GOOGLE_QUERY_FAIL);
        }
    }
    
    /**
     * 购买id为sku的品项。
     * @param sku
     * @param orderId
     */
    public void buyPurchase(String sku,String orderId){ //sku为payInfo.getProductId()
        currentPurchase = null;
        try {
            mIabHelper.launchPurchaseFlow(mContext,sku,CODE_GOOGEL_PLAY, mPurchaseFinishedListener,DES.encrypt(orderId,KEY_OREDER_ID));
        } catch (Exception e) {
            e.printStackTrace();
            sendMsg(e.getMessage(),MessageCode.CODE_PAY_GOOGLE_BUY_FAIL);
        }
    }
    
    /**
     * 消费当前品项。
     */
    public void consumePurchase(){
        try {
            mIabHelper.consumeAsync(currentPurchase, new IabHelper.OnConsumeFinishedListener() {
                @Override
                public void onConsumeFinished(Purchase purchase, IabResult result) {
                    if(result.isFailure()){
                        sendMsg(result.getMessage(),MessageCode.CODE_PAY_GOOGLE_CONSUME_FAIL);
                    }else{
                        try {
                            sendMsg(DES.decrypt(purchase.getDeveloperPayload(), KEY_OREDER_ID), MessageCode.CODE_PAY_GOOGLE_CONSUME_SUCCESS);
                            currentPurchase = null;
                        }catch (Exception e){
                            sendMsg(e.getMessage(),MessageCode.CODE_PAY_GOOGLE_CONSUME_FAIL);
                        }
                    }
                }
            });
        } catch (IabHelper.IabAsyncInProgressException e) {
            e.printStackTrace();
            sendMsg(e.getMessage(),MessageCode.CODE_PAY_GOOGLE_CONSUME_FAIL);
        }
    }

	/**
	 * 处理支付页面的返回结果
	 * @param requestCode
	 * @param resultCode
	 * @param data
	 */
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		//处理google支付。
		mIabHelper.handleActivityResult(requestCode,resultCode,data);
	}
	
	/**
	 * 销毁Helper
	 */
    public void onDestroy() {
        if (mIabHelper != null) {
            try {
                mIabHelper.dispose();
            } catch (IabHelper.IabAsyncInProgressException e) {
                e.printStackTrace();
            }
        }
        mIabHelper = null;
    }


	private void sendMsg(Object object,int what){//向主Activity发送信息
        Message msg = Message.obtain();
        msg.what = what;
        msg.obj = object;
        if(handler != null)
            handler.sendMessage(msg);
    }
	
	//查询库存监听
    private IabHelper.QueryInventoryFinishedListener mGetInventoryListener = new IabHelper.QueryInventoryFinishedListener() {
        @Override
        public void onQueryInventoryFinished(IabResult result, Inventory inv) {
            if(result.isFailure()){
                sendMsg(result.getMessage(),MessageCode.CODE_PAY_GOOGLE_QUERY_FAIL);
                return;
            }
            try {
                currentPurchase = inv.getPurchase(skuID);
                if(currentPurchase == null) {
                		sendMsg("no have purchase to re pay!",MessageCode.CODE_PAY_GOOGLE_QUERY_FAIL);
                }else {
                		sendPurchase(currentPurchase,MessageCode.CODE_PAY_GOOGLE_QUERY_SUCCESS);
                }
            } catch (Exception e) {
                e.printStackTrace();
                sendMsg(e.getMessage(),MessageCode.CODE_PAY_GOOGLE_QUERY_FAIL);
            }
        }
    };


    //购买品项监听
    private IabHelper.OnIabPurchaseFinishedListener mPurchaseFinishedListener = new IabHelper.OnIabPurchaseFinishedListener() {
        @Override
        public void onIabPurchaseFinished(IabResult result, Purchase info) {
            if(result.isFailure()){
                if(result.getResponse() == IabHelper.IABHELPER_USER_CANCELLED){
                    sendMsg(null,MessageCode.CODE_PAY_GOOGLE_BUY_CANCEL);
                }else{
                    sendMsg(result.getMessage(),MessageCode.CODE_PAY_GOOGLE_BUY_FAIL);
                }
                return;
            }
            currentPurchase =  info;
            try {
                sendPurchase(info,MessageCode.CODE_PAY_GOOGLE_BUY_SUCCESS);
            } catch (Exception e) {
                e.printStackTrace();
                sendMsg(e.getMessage(),MessageCode.CODE_PAY_GOOGLE_BUY_FAIL);
            }
        }
    };
    //将品项中的关键信息，转成map，发送到主线程中，进行处理。
    private void sendPurchase(Purchase purchase,int what) throws Exception {
        Map<String,String> p = new HashMap<String,String>();
        p.put(Data.eo_key_google_repatedata, Base64.encode(purchase.getOriginalJson().getBytes()));
        p.put(Data.eo_key_google_signdata,Base64.encode(purchase.getSignature().getBytes()));
        p.put(Data.eo_key_order_id, Base64.encode(DES.decrypt(purchase.getDeveloperPayload(),KEY_OREDER_ID).getBytes()));
        sendMsg(p, what);
    }

}