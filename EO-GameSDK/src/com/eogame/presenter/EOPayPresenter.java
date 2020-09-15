package com.eogame.presenter;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;

import com.eo.games.sdk.R;
import com.eogame.activity.EOPayActivity;
import com.eogame.activity.EOWebPayActivity;
import com.eogame.activity.EOWebViewActivity;
import com.eogame.base.BasePresenter;
import com.eogame.constants.Data;
import com.eogame.constants.MessageCode;
import com.eogame.crypto.DES;
import com.eogame.crypto.MD5;
import com.eogame.listener.EOPayEvent;
import com.eogame.model.HttpResult;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.model.UserSession;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.AppflyerUtil;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOAccountViewContainer;
import com.eogame.utils.EOThread;
import com.eogame.utils.Util;
import com.eogame.web.EOWebApiImpl;

import org.json.JSONObject;

import java.util.Date;
import java.util.Map;

/**
 * 支付相关界面逻辑处理类
 *
 * @author wujunfeng
 * @version 1.0
 * @date 创建时间：2016-10-19 下午4:19:51
 */
public class EOPayPresenter extends BasePresenter {

	private EOPayInfo mPayInfo;
	private EORoleInfo mRoleInfo;

	private static final int STATE_ON = 2; // 支付渠道启用
	private static final int STATE_OFF = 1; // 支付渠道禁用

	private static boolean isRePay = false;
	private String webUrl; // web支付地址。

	private EOGooglePresenter mGooglePayPresenter;
	// 判断是否已经点起某种登录方式，若已开启某种支付方式则不允许其他支付方式再被点击以及不可退出支付界面。
	private boolean isPaying = false;
	private boolean isInit = false;

	private LinearLayout mGoogleLayout;
	private LinearLayout mWebLayout;

	public EOPayPresenter(Activity context, UserSession session, EORoleInfo roleInfo, EOPayInfo payInfo) {
		super(context, session);
		mGooglePayPresenter = new EOGooglePresenter(context, mHandler);
		mPayInfo = payInfo;
		mRoleInfo = roleInfo;
	}

	@Override
	protected void initData() {
		isRePay = false;
	}

	/**
	 * google支付入口
	 */
	public void GooglePay() {
		if (isPaying) {
			Util.showToast(mContext, ResourceUtil.getString(mContext, "eo_pay_tip_inpayinging"));
		} else if (!isInit) {
			Util.showToast(mContext, ResourceUtil.getString(mContext, "eo_pay_google_no_init"));
		} else {
			AndroidUtils.showProgress(mContext, ResourceUtil.getString(mContext, "eo_loading"), false);
			Log.d("googlepay","try to queryInventory");
			mGooglePayPresenter.queryInventory(mPayInfo.getProductId());//查询库存
			isPaying = true;
		}
	}

	@Override
	protected void dealMessage(Object obj, int what) {
		Log.d("dealmessagewhat","what= "+what);
		switch (what) {
		case MessageCode.CODE_PAY_CREATE_ORDER://生成订单
			HttpResult orderResult = (HttpResult) obj;
			if (orderResult.getCode() == HttpResult.CODE_SUCCESS) {
				// TODO: 生成订单成功，调用gp进行支付操作
				AndroidUtils.showProgress(mContext, ResourceUtil.getString(mContext, "eo_loading"), false);
				String orderId = orderResult.getmJsonData().optString("sgno");//TODO String orderId = orderResult.getmJsonData().optString("sgno")
				mPayInfo.setOrderNO(orderId);
				//AppflyerUtil.getInstance().createOrder(mPayInfo.getCpOrderId(), mPayInfo.getProductId(), mPayInfo.getPrice()/100.f);//TODO AppflyerUtil.getInstance().createOrder(mPayInfo.getCpOrderId(), mPayInfo.getProductId(), mPayInfo.getPrice()/100.f)
				Log.e("eo", "create order success, orderId= " + orderId);
				mGooglePayPresenter.buyPurchase(mPayInfo.getProductId(), orderId);//TODO mGooglePayPresenter.buyPurchase(mPayInfo.getProductId(), orderId)
				EOLogPresenter.getInstance().sendCreateOrder(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			} else {
				Logger.getInstance().e("eo", "create order fail");
				Util.showToast(mContext, orderResult.getMessage());
				isPaying = false;
				EOPayEvent.onPayError(orderResult.getMessage());
			}
			break;
		case MessageCode.CODE_PAY_VERIFY:
			dealPayVerify(obj);
			break;
		case MessageCode.CODE_PAY_WAY:
			dealPayChannelState(obj);
			break;
		case MessageCode.CODE_PAY_GOOGLE_Init:
			isInit = (Boolean) obj;
			Logger.getInstance().e("eo", "google init =" + isInit);
			mGoogleLayout.setEnabled(isInit);
			if (!isInit) {
				Util.showToast(mContext, ResourceUtil.getString(mContext, "eo_pay_google_init_fail"));
			}
			break;
		case MessageCode.CODE_PAY_GOOGLE_QUERY_FAIL:
			Logger.getInstance().e("eo", "query product fail");
			AndroidUtils.closeProgress(mContext);
			getOrderForGoogle();
			break;
		case MessageCode.CODE_PAY_GOOGLE_QUERY_SUCCESS:
			// AndroidUtils.showProgress(mContext,ResourceUtil.getString(mContext,"eo_pay_google_re_pay"),false);
			Log.e("eo", "query product success, into the verify google pay!");
			Util.showToast(mContext, ResourceUtil.getString(mContext, "eo_pay_google_re_pay"));
			Map<String, String> params = (Map<String, String>) obj;
			try {
				String userId = mUserSession.getCurrentUserId();
				Log.d("googlepay","try to verifyGooglePay");
				verifyGooglePay(params.get(Data.eo_key_order_id).toString(), userId,
						params.get(Data.eo_key_google_repatedata).toString(),
						params.get(Data.eo_key_google_signdata).toString());
			} catch (Exception e) {
				e.printStackTrace();
				isPaying = false;
				AndroidUtils.closeProgress(mContext);
				EOPayEvent.onPayError("no user data");
			}

			break;
		case MessageCode.CODE_PAY_GOOGLE_BUY_CANCEL:
			Logger.getInstance().e("eo", "buy google cancel");
			AndroidUtils.closeProgress(mContext);
			EOPayEvent.onPayCancle();
			EOLogPresenter.getInstance().sendBuyFail(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			isPaying = false;
			break;
		case MessageCode.CODE_PAY_GOOGLE_BUY_FAIL:
			Logger.getInstance().e("eo", "buy google faile, msg = " + obj.toString());
			AndroidUtils.closeProgress(mContext);
			EOPayEvent.onPayError(obj.toString());
			Util.showToast(mContext, obj.toString());
			isPaying = false;
			EOLogPresenter.getInstance().sendBuyFail(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			break;
		case MessageCode.CODE_PAY_GOOGLE_BUY_SUCCESS:
			Logger.getInstance().e("eo", "buy google success");
			Map<String, String> map = (Map<String, String>) obj;
			String userId2 = mUserSession.getCurrentUserId();
			verifyGooglePay(map.get(Data.eo_key_order_id).toString(), userId2,
					map.get(Data.eo_key_google_repatedata).toString(), map.get(Data.eo_key_google_signdata).toString());
			break;
		case MessageCode.CODE_PAY_GOOGLE_CONSUME_FAIL:
			isPaying = false;
			Logger.getInstance().e("eo", "consume google fale, msg = " + obj.toString());
			AndroidUtils.closeProgress(mContext);
			Util.showToast(mContext, obj.toString());
			EOPayEvent.onPayError(obj.toString());
			break;
		case MessageCode.CODE_PAY_GOOGLE_CONSUME_SUCCESS:
			isPaying = false;
			AndroidUtils.closeProgress(mContext);
			Logger.getInstance().e("eo", "consume google success, msg = " + obj.toString());
			EOPayEvent.onPaySuccess(obj.toString());
			//AppflyerUtil.getInstance().paySuccess(mPayInfo.getCpOrderId(), mPayInfo.getProductId(), mPayInfo.getPrice()/100.f);
			mContext.finish();
			break;

		default:
			break;
		}
	}

	// TODO 目前无法从服务器获取订单 为google支付生成平台订单。
	private void getOrderForGoogle() {
		EOThread progressThread = new EOThread() {
			@Override
			public void run() {
				String userId = mUserSession.getCurrentUserId();
				AndroidUtils.showProgress(mContext, "", ResourceUtil.getString(mContext, "eo_loading"), false, false,
						this);
				HttpResult httpResult = EOWebApiImpl.instance().createPayOrder(userId, mRoleInfo, mPayInfo);
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				Logger.getInstance().e("eo", "create order result = " + httpResult.getmJsonData());
				sendMsg(httpResult, MessageCode.CODE_PAY_CREATE_ORDER);

			}
		};
		progressThread.start();
	}
	
	//google支付已经成功，请求服务器校验订单信息。
	private void verifyGooglePay(final String orderId, final String userId, final String repeatData,
			final String signData) {
		Log.e("eo", "verify google pay.  \t orderId = " + orderId + "\n repeatData = " + repeatData
				+ "\n signData = " + signData);
		EOThread progressThread = new EOThread() {
			@Override
			public void run() {
				AndroidUtils.showProgress(mContext, "", ResourceUtil.getString(mContext, "eo_loading"), false, false,
						this);
				Log.e("eo","verify google pay: try to EOWebApiImpl.instance().verifyPayOrder");
				HttpResult httpResult = EOWebApiImpl.instance().verifyPayOrder(userId, orderId, mPayInfo.getProductId(),
						repeatData, signData);
				if(httpResult==null){
					Log.e("googlepayresult","httpresult is null!");
				}else{
					Log.e("googlepayresult",httpResult.toString());
				}
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				sendMsg(httpResult, MessageCode.CODE_PAY_VERIFY);
			}
		};
		progressThread.start();
	}
	
	/**
	 * 查询支付渠道。
	 * @param layoutGooglePay
	 * @param layoutWeb
	 */
	public void doQueryPayWay(LinearLayout layoutGooglePay, LinearLayout layoutWeb) {
		mGoogleLayout = layoutGooglePay;
		mWebLayout = layoutWeb;
		mGoogleLayout.setVisibility(View.INVISIBLE);
		mWebLayout.setVisibility(View.INVISIBLE);

		EOThread progressThread = new EOThread() {
			public void run() {
				AndroidUtils.showProgress(mContext, "", ResourceUtil.getString(mContext, "eo_loading"), false, false,
						this);
				HttpResult httpResult = EOWebApiImpl.instance().getPayChannels(mUserSession.getCurrentUserId(),mRoleInfo.getRoleLevel()+"");//获取
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				sendMsg(httpResult, MessageCode.CODE_PAY_WAY);
			}
		};
		progressThread.start();

	}

	/**
	 * 处理查询支付方式结果
	 */
	private void dealPayChannelState(Object obj) {

		if (obj == null) {
			Logger.getInstance().e("eodealPayChannelState","fail");
			return;
		}

		HttpResult getOrderWayResult = (HttpResult) obj;
		if (getOrderWayResult.getCode() == HttpResult.CODE_SUCCESS) {
			Logger.getInstance().e("eo", "get pay channels success . \n " + getOrderWayResult.getmJsonData());
			JSONObject jsonObject = getOrderWayResult.getmJsonData();
			if (jsonObject != null) {
				int webState = jsonObject.optInt("web");
				int googleState = jsonObject.optInt("local");
				if (googleState == STATE_ON) {//TODO google in-app billing支付相关
					mGoogleLayout.setVisibility(View.VISIBLE);
					mGoogleLayout.setEnabled(false);
					mGooglePayPresenter.initIabHelper();
				} else {
					mGoogleLayout.setVisibility(View.INVISIBLE);
				}
				if (webState == STATE_ON) {//TODO Mycard支付相关
					mWebLayout.setVisibility(View.VISIBLE);
					webUrl = jsonObject.optString("webUrl");//jsonObject.optString("webUrl")获得weburl
				} else {
					mWebLayout.setVisibility(View.INVISIBLE);
				}
			}
		} else {
			Logger.getInstance().e("eo","httpResult:"+getOrderWayResult);
			Logger.getInstance().e("eo","get code failed, code=:"+getOrderWayResult.getCode());// 获取不成功就直接退出
			onPayCancle();
		}
		if("Google".equals(mContext.getResources().getString(R.string.eo_payChannel))){//如果是google渠道则隐藏其他充值渠道
			mWebLayout.setVisibility(View.GONE);// TODO google包取消显示其他充值渠道图标
		}else{
			mGoogleLayout.setVisibility(View.GONE);//TODO 第三方包取消显示其他充值渠道图标
		}

	}
	
	//处理支付校验结果。
	private void dealPayVerify(Object obj) {
		if (obj == null)
			return;
		HttpResult verifyResult = (HttpResult) obj;
		Log.e("dealpayverify",verifyResult.toString());
		Log.e("eo", "verify google pay \n" + verifyResult.getmJsonData());
		if (verifyResult.getCode() == HttpResult.CODE_SUCCESS|| verifyResult.getCode() == HttpResult.CODE_REPAY_SUCCESS) {//TODO 测试消耗 verifyResult.getCode() == HttpResult.CODE_SUCCESS|| verifyResult.getCode() == HttpResult.CODE_REPAY_SUCCESS
			//已经完成发放或已经发放过了。通知完成消费。
			AndroidUtils.showProgress(mContext, ResourceUtil.getString(mContext, "eo_loading"), false);
			if (isRePay) {
				EOLogPresenter.getInstance().sendRePaySuccess(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			} else {
				EOLogPresenter.getInstance().sendBuySuccess(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			}
			Log.d("googlepay","try to consumePurchase");
			mGooglePayPresenter.consumePurchase();
		} else {
			isPaying = false;
			Util.showToast(mContext, verifyResult.getMessage());
			EOPayEvent.onPayError(verifyResult.getMessage());
			if (isRePay) {
				EOLogPresenter.getInstance().sendRePayFail(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			} else {
				EOLogPresenter.getInstance().sendBuyFail(mUserSession.getCurrentUserId(), mRoleInfo, mPayInfo);
			}
		}
	}

	/**
	 * 处理支付页面的返回结果
	 *
	 * @param requestCode
	 * @param resultCode
	 * @param data
	 */
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if (null == data) {
			return;
		}
		mGooglePayPresenter.onActivityResult(requestCode, resultCode, data);
	}
	
	/**
	 * 转跳到web支付界面。
	 */
	public void jumpToWebPay() {
		if (TextUtils.isEmpty(webUrl)) {
			Util.showToast(mContext, ResourceUtil.getString(mContext, "eo_pay_tip_no_web_pay"));
			return;
		}

		Intent intent = new Intent();
		intent.putExtra("roleInfo", mRoleInfo);
		intent.putExtra("payInfo", mPayInfo);
		intent.putExtra("uid",mUserSession.getCurrentUserId());
		intent.putExtra("web_pay_url", webUrl);
		//intent.setClass(mContext, EOWebViewActivity.class);//mycard充值界面
		intent.setClass(mContext,EOWebPayActivity.class);//TODO 新充值界面
		mContext.startActivity(intent);
		mContext.finish();
	}

	/**
	 * 跳转到新支付页面
	 */
	public void jumpToNewWebPay(){
		Intent intent = new Intent();
		intent.putExtra("roleInfo",mRoleInfo);
		intent.putExtra("payInfo",mPayInfo);
		intent.putExtra("uid",mUserSession.getCurrentUserId());
		intent.setClass(mContext,EOWebPayActivity.class);
		mContext.startActivity(intent);
		mContext.finish();
	}


	
	/**
	 * 支付取消。
	 */
	public void onPayCancle() {
		if (isPaying) {
			Util.showToast(mContext, ResourceUtil.getString(mContext, "eo_pay_tip_inpayinging"));
		} else {
			EOPayEvent.onPayCancle();
			mContext.finish();
		}
	}

	@Override
	public void onDestory() {
		mGooglePayPresenter.onDestroy();
	}
}