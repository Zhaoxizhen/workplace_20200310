package com.eogame.activity;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.MediaStore;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.eo.games.sdk.R;
import com.eogame.base.BasePage;
import com.eogame.constants.EOCommon;
import com.eogame.constants.EOConfig;
import com.eogame.crypto.DES;
import com.eogame.crypto.MD5;
import com.eogame.http.HttpUtils;
import com.eogame.listener.EOPayEvent;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.model.UserSession;
import com.eogame.utils.AndroidBug5497Workaround;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.EODeviceInfoUtil;
import com.eogame.utils.Logger;
import com.eogame.utils.PageUtil;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.ScreenUtils;
import com.eogame.utils.Util;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

import org.json.JSONException;
import org.json.JSONObject;

import tw.com.mycard.paymentsdk.MyCardSDK;
import tw.com.mycard.paymentsdk.baseLib.Config;
import tw.com.mycard.paymentsdk.https.CustomHttpURLConnection;

public class EOWebViewActivity extends Activity  {

	private int page_from;

	private WebView mWebView;
	private WebViewClient webViewClient;
	private TextView mTextView;
	private ProgressBar mProgressBar;
	private static int MAX_PROGRESS = 100;
	
	private EORoleInfo roleInfo;
	private EOPayInfo payInfo;
	private Handler handler = new Handler();

	//充值所用参数
	private String uid= "";
	private String pn=EOCommon.packgeName;//packagename
	private String gc=EOCommon.gameCode;//gamecode
	private String sc="";//servercode
	private String itemCode="";//默认不填
	private String serverId="";

	private String t;//时间戳
	private String sk;//MD5的验证//TODO 需要填入MD5

	//Mycard所用参数
    private String AuthCode = "";
    private String TradeSeq = ""; // facTradeSeq
    private boolean istest = EOConfig.DEBUG; // TODO true为测试模式 false为正式环境
    private String Key;
    private GetAuthCode dosync;
    private MycardPayBack doPayBackSync;
	private String FacServiceId ="Gbull";
	private String productId="";
	private String productName ="";
	private String tradeType ="1";//1为使用SDK方式，2为使用web方式
	private String Amount = "";//amount
	private String cpOrderId = "";
	private String currency = "TWD";
	private String paymentType="";//默认不填
	//private String FacReturnURL="https://pay.eohfun.com/pay/mycardBillingPayBackTw.do";//厂商回传URL

	private boolean isLoaded;
	private Activity mContext;
	private UserSession mUserSession;


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		//获取启动来源
//		page_from = getIntent().getIntExtra(PageUtil.PAGE_FROM, 0);
		super.onCreate(savedInstanceState);
		mContext = this;
//		AndroidUtils.setLanguage(mContext, EOCommon.gameLanguage);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN); // 设置全屏
		mUserSession = UserSession.getInstance();
		mUserSession.buildAccountInfos(mContext.getApplication());
		Util.setFinishOnTouchOutside(mContext);

		initView();
		initListener();
		initData();

	}
	public void initListener(){}

	protected void initView() {
		setContentView(ResourceUtil.getLayoutId(this, "eo_layout_webview"));
		mWebView = (WebView) getView("eo_layout_webview_root");
		mTextView = (TextView) getView("eo_webview_payInfoView");
		mProgressBar = (ProgressBar) getView("eo_webview_pb");
	}


	public void onClick(View v,int id) {
	}

	@SuppressLint("NewApi")
	protected void initData() {//设置页面为浏览器
		Key = getResources().getString(R.string.eo_MyCard_key);
		mWebView.getSettings().setJavaScriptEnabled(true);
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
			mWebView.setWebContentsDebuggingEnabled(true);
		}
		mWebView.setWebChromeClient(new EOWebChromeClient());
		mWebView.setWebViewClient(new WebViewClient() {//开启
			@Override
			public void onPageFinished(WebView view, String url) {
				super.onPageFinished(view, url);
				Logger.getInstance().e("eo", "page finished");
			}
			
			@Override
			public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
				super.onReceivedError(view, errorCode, description, failingUrl);
				Logger.getInstance().e("eo", "load web hasError , code = "+errorCode);
			}
		});
//		mWebView.getSettings().setJavaScriptEnabled(true);
		//设置映射对像。
		mWebView.addJavascriptInterface(this,"eo_pay");//注册一个js页面
		// 设置允许JS弹窗
        mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);

        //初始化相关参数
		gc = EOCommon.gameCode;
		pn = EOCommon.packgeName;
		roleInfo = (EORoleInfo)getIntent().getSerializableExtra("roleInfo");// 获得从demo传入的roleinfo
		sc = roleInfo.getServerId();
		serverId = sc;
		Logger.getInstance().d("eogameinfo","roleInfo:"+roleInfo.toString());
		payInfo = (EOPayInfo)getIntent().getSerializableExtra("payInfo");// 获得从demo传入的payInfo
		productId = payInfo.getProductId();
		productName = payInfo.getProductName();//需要URLdecode
		Amount = payInfo.getPrice()/100+"";

		cpOrderId = payInfo.getCpOrderId();
		Logger.getInstance().d("eogameinfo","payInfo:"+payInfo.toString());
		uid = mUserSession.getCurrentUserId();
		Logger.getInstance().d("eogameinfo","CurrentUserId:"+uid);
		mTextView.setText("商品金额:"+Amount+"\n订单号:"+payInfo.getCpOrderId());


		String url = getIntent().getStringExtra("web_pay_url");
		startMycard(url);
		//mWebView.loadUrl(url);
		AndroidUtils.showProgress(this, ResourceUtil.getString(mContext, "eo_loading"), true);
//		getHeaderParams();
	}

	@JavascriptInterface
	public String getPayParams(){//TODO 支付参数
		try {
			JSONObject json = new JSONObject();
			json.put("gc", EOCommon.gameCode);
			json.put("sc", roleInfo.getServerId());
			json.put("uid", mUserSession.getCurrentUserId());
//			json.put("gid",payInfo.getProductId());
			json.put("rid", roleInfo.getRoleId());
			json.put("rn", roleInfo.getRoleName());
			json.put("gl", roleInfo.getRoleLevel());
			json.put("ext", payInfo.getExtInfo());
			json.put("money", payInfo.getPrice());
			json.put("cpid", payInfo.getCpOrderId());
			return json.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "{}";
	}
	
	@JavascriptInterface
	public String getHeaderParams() {
		String param = HttpUtils.getHeaderParameters();
		Logger.getInstance().e("eo", "header parameters  \n"+param);
		return param;
	}

	@JavascriptInterface
	public void paySuccess(final String eono) {
		Logger.getInstance().e("eo", "web pay success eono = "+eono);
		handler.post(new Runnable() {
			@Override
			public void run() {
				EOPayEvent.onPaySuccess(eono);
				mContext.finish();
			}
		});
	}
	
	@JavascriptInterface
	public void closePay() {
		handler.post(new Runnable() {
			@Override
			public void run() {
				EOPayEvent.onPayCancle();
				mContext.finish();
			}
		});
	}
	
	@JavascriptInterface
	public void payFail(final String msg) {
		Logger.getInstance().e("eo","web pay fail, msg = "+ msg);
		handler.post(new Runnable() {
			@Override
			public void run() {
				EOPayEvent.onPayError(msg);
			}
		});
	}
	
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(keyCode == KeyEvent.KEYCODE_BACK) {
			if(mWebView.canGoBack()) {

				return true;
			}else {
				mContext.finish();
			}
		}
		return super.onKeyDown(keyCode, event);
	}
	
	@SuppressWarnings("unchecked")
	public <T> T getView(String resName){
		return (T)findViewById(ResourceUtil.getViewId(mContext,resName));
	}


	private class EOWebChromeClient extends WebChromeClient{
		@Override
		public void onProgressChanged(WebView view, int newProgress) {//状态改变后隐藏progressbar
			mProgressBar.setProgress(newProgress);
			if(newProgress == MAX_PROGRESS){
				AndroidUtils.closeProgress(mContext);
				isLoaded = true;
				Logger.getInstance().e("eo", "progress 100% !!!!");
				mProgressBar.setVisibility(View.GONE);
			}
			super.onProgressChanged(view, newProgress);
		}

	}


	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		// 接收SDK結果
		if (requestCode == Config.Payment_RequestCode||requestCode == Config.WebView_RequestCode) {
			if (Activity.RESULT_OK == resultCode) {
				try {
					JSONObject js = new JSONObject(data.getStringExtra(Config.PaySDK_Result));
					int returnCode = js.optInt("returnCode");
					int payResult = js.optInt("payResult");
					Logger.getInstance().e("eopaysdkresult",js.toString());
					if (returnCode == 1 && payResult == 3) {
						// 交易成功，向EO服务器转发交易结果回调
						ContentValues payBackContentValue =makePayBackData(js);
						Logger.getInstance().e("eopaybackcontentvalue",payBackContentValue.toString());
						doPayBackSync = new MycardPayBack(payBackContentValue);
						doPayBackSync.execute();
						//paySuccess(TradeSeq);
					} else {
						Toast.makeText(mContext, "SDK交易失敗，returnMsg：" + js.optString("returnMsg"), Toast.LENGTH_LONG).show();
						payFail(js.optString("returnMsg"));
					}
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}
		}


	}
	



    public void startMycard(String url){
		dosync = new GetAuthCode(istest, makeTradeData(),url);//向EO服务器请求AuthCode
        //dosync = new GetAuthCode(istest, makePostDataByGetAuthCode(),url);
        dosync.execute();
    }

    class GetAuthCode extends AsyncTask<String, Integer, String> {
        //Url：記得換上你們自已的 Url
        String Url;//http://pay.eohfun.com/pay/mycardTradeStartTw.do
        ContentValues contentValues;

        public GetAuthCode(boolean isTest, ContentValues contentValues,String Url) {
            this.contentValues = contentValues;
            //Url：記得換上你們廠商自已的 Url
            if (isTest){//TODO 应从EO后台服务器获取
				this.Url = Url;//EO后台服务器http://testpay.eo-game.com/pay/mycardTradeStartTw.do
			}
            else{
				this.Url = "http://pay.eohfun.com/pay/mycardTradeStartTw.do";//正式地址
			}
        }

        @Override
        protected String doInBackground(String... params) {//开始获取AuthCode
            String strResult = null;

            try {
                strResult = CustomHttpURLConnection.postByHttpURLConnection(Url, contentValues);//TODO
            } catch (Exception e) {
                e.printStackTrace();
            }
            if(strResult!=null){
				Logger.getInstance().e("strResult:",strResult);
			}else{
				Logger.getInstance().e("strResult:","strResult is null!");
			}

            return strResult;
        }

        @Override
        protected void onCancelled() {
            super.onCancelled();
        }

        @Override
        protected void onPostExecute(String result) {//拿到authcode后调用，开始支付

            if (result != null) {
                try {
                    JSONObject js = new JSONObject(result);
                    Logger.getInstance().d("eoresult",result);
                    if (js.optInt("code") == 10000) {//js.optInt("ReturnCode") == 1
                        AuthCode = js.optString("authCode");
                        MyCardSDK sdk = new MyCardSDK(mContext);//开始Mycard SDK支付
                        sdk.StartPayActivityForResult(istest, AuthCode);//根据
                    } else {
                        ShowAlertDialog("取得AuthCode失敗\n 錯誤：" + js.optString("code"));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            } else {//result = null
            	Logger.getInstance().e("eoresult","result is null!");
                ShowAlertDialog("取得AuthCode失敗\n 錯誤：網路連線失敗");
            }
        }

        @Override
        protected void onPreExecute() {
        }
    }




	public ContentValues makeTradeData() {
		t = String.valueOf(new Date().getTime());
		//sk = MD5.encode(EOCommon.packgeName+EOCommon.gameKey+t+EOCommon.gameCode);
		String gameketMD5= MD5.getMD5(EOCommon.gameKey);
		sk = MD5.getMD5( uid + gameketMD5 + gc + t + serverId + currency );//对hash值进行encode
		Logger.getInstance().d("eomd5","md5:"+sk);
		String sign = MD5.encode( uid + EOCommon.gameKey+ gc + t + serverId + currency );
		Logger.getInstance().d("eomd5","uid:"+uid + " gamekeymd5:"+gameketMD5+ " gamecode:"+gc +" t:"+ t + " serverid:"+serverId + " currency:"+currency);
		//Logger.getInstance().d("eomd5","packagename:"+EOCommon.packgeName+" gamekey:"+EOCommon.gameKey+" t:"+t+" gamecode:"+EOCommon.gameCode);
		ContentValues contentValues = new ContentValues();

		try {
			URLEncoder.encode(uid,"UTF-8");
			contentValues.put("uid", uid);
			contentValues.put("pn",pn);
			contentValues.put("gc",gc);
			contentValues.put("sc",sc);
			contentValues.put("serverId",serverId);
			contentValues.put("paymentType",paymentType);
			contentValues.put("itemCode",itemCode);
			contentValues.put("productName",productName);//需要选择对应商品名称 不能为中文
			contentValues.put("tradeType",tradeType);
			contentValues.put("currency",currency);//需要选择对应币种代码
			contentValues.put("amount",Amount);//amount需要根据游戏内品项选择对应的金额
			contentValues.put("t",t);
			contentValues.put("sk",sk);

			contentValues.put("rid",roleInfo.getRoleId());
			contentValues.put("rn",roleInfo.getRoleName());
			contentValues.put("gl",roleInfo.getRoleLevel()+"");
			contentValues.put("languageCode","en-us");
			contentValues.put("channel","2");
			contentValues.put("deviceId", EODeviceInfoUtil.getDeviceId(mContext));
			//contentValues.put("deviceId", URLEncoder.encode(EODeviceInfoUtil.getDeviceId(mContext)==null?"Default":EODeviceInfoUtil.getDeviceId(mContext),"UTF-8"));
			contentValues.put("deviceName", EODeviceInfoUtil.getDeviceName());
			contentValues.put("deviceSystemVersion", Util.getSystemVersion());
			contentValues.put("deviceSdkVersion",Util.getSDKVersion()+"");
			contentValues.put("deviceFactoryName", EODeviceInfoUtil.getManufacturer());
			contentValues.put("deviceScreen", ScreenUtils.getScreen(mContext));
			contentValues.put("network",Util.getNetworkType(mContext));
			contentValues.put("ext1",payInfo.getExtInfo());
		} catch (Exception e) {
			e.printStackTrace();
		}
		Logger.getInstance().d("contentvalue","contentvalue:"+contentValues.toString());
		return contentValues;
	}


    private void ShowAlertDialog(String message) {
        new AlertDialog.Builder(mContext).setTitle("MyCard S2S API").setMessage(message)
                .setPositiveButton("確定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
						mProgressBar.setVisibility(View.GONE);
						finish();
						onDestroy();

                    }
                }).show();
    }

	private String getHashKey() {
		String preHashValue = FacServiceId + TradeSeq + tradeType + ""
				+ uid + paymentType
				+ "" + productName
				+ Amount + currency
				+ istest + Key;//使用默认的FacReturnURL
		return Encrypt(preHashValue).toLowerCase();
	}

	public String Encrypt(String strSrc) {
		MessageDigest md = null;
		String strDes = null;
		byte[] bt = strSrc.getBytes();
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(bt);
			strDes = bytes2Hex(md.digest()); // to HexString
		} catch (NoSuchAlgorithmException e) {
			return null;
		}
		return strDes;
	}
	public String bytes2Hex(byte[] bts) {
		String des = "";
		String tmp = null;
		for (int i = 0; i < bts.length; i++) {
			tmp = (Integer.toHexString(bts[i] & 0xFF));
			if (tmp.length() == 1) {
				des += "0";
			}
			des += tmp;
		}
		return des;
	}


	public ContentValues makePayBackData(JSONObject js) {
		ContentValues contentValues = new ContentValues();
		try {
			contentValues.put("ReturnCode", js.optInt("returnCode")+"");
			contentValues.put("ReturnMsg", js.optInt("returnMsg")+"");
			contentValues.put("PayResult", js.optString("payResult"));
			contentValues.put("FacTradeSeq",js.optString("facTradeSeq"));
			contentValues.put("PaymentType",js.optString("paymentType"));
			contentValues.put("Amount",js.optLong("amount")+"");
			contentValues.put("Currency",js.optString("currency"));
			contentValues.put("MyCardTradeNo",js.optString("myCardTradeNO"));
			contentValues.put("MyCardType",js.optString("myCardType"));
			contentValues.put("PromoCode",js.optString("promoCode"));
			contentValues.put("Hash",js.optString("hash"));
			Logger.getInstance().e("paybackdata",contentValues.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return contentValues;
	}



	//向EO服务器发回调
	class MycardPayBack extends AsyncTask<String, Integer, String> {
		String Url="http://192.168.0.107:10086/Pay.sgplayer.com/pay/mycardBillingPayBackTw.do";
		ContentValues contentValues;

		public MycardPayBack(ContentValues contentValues) {
			this.contentValues = contentValues;
		}

		@Override
		protected String doInBackground(String... params) {
			String strResult = null;
			try {
				Logger.getInstance().e("eopayback","start send payback!");
				strResult = CustomHttpURLConnection.postByHttpURLConnection(Url, contentValues);//异步 向EO服务器转发回传参数
			} catch (Exception e) {
				e.printStackTrace();
			}
			if(strResult==null){
				Logger.getInstance().e("strResult:","strResult is null!");
			}else{
				Logger.getInstance().e("strResult:",strResult);
			}
			return strResult;
		}

		@Override
		protected void onCancelled() {
			super.onCancelled();

		}

		@Override
		protected void onPostExecute(String result) {

			if (result != null) {
				try {
					JSONObject js = new JSONObject(result);
					Logger.getInstance().d("eoresult",result);
					if (js.optInt("code") == 10000) {//js.optInt("ReturnCode") == 1
						ShowAlertDialog("交易成功！" );
					} else {
						ShowAlertDialog("交易失败\n 錯誤：" + js.optString("code"));
					}
				} catch (JSONException e) {
					e.printStackTrace();
				}
			} else {//result = null
				Logger.getInstance().e("eoresult","payback result is null!");
				ShowAlertDialog("交易失败\n 錯誤：網路連線失敗");
			}
		}

		@Override
		protected void onPreExecute() {
		}
	}
}
