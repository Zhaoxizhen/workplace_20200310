package com.eogame.utils;

import java.util.HashMap;
import java.util.Map;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AppsFlyerConversionListener;
import com.appsflyer.AppsFlyerLib;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.provider.Settings;
import android.telephony.TelephonyManager;

public class AppflyerUtil {
	
	private Context mContext;

	private static AppflyerUtil instance = new AppflyerUtil();

	private AppflyerUtil() {
	}

	public static AppflyerUtil getInstance() {
		return instance;
	}

	public void init(Application app) {
		mContext = app.getApplicationContext();
		 AppsFlyerLib.getInstance().init(getString(app.getApplicationContext(),"eo_appflyer_key"),new AppsFlyerConversionListener() {
			
			@Override
			public void onInstallConversionFailure(String arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onInstallConversionDataLoaded(Map<String, String> arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onAttributionFailure(String arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onAppOpenAttribution(Map<String, String> arg0) {
				// TODO Auto-generated method stub
				
			}
		});
		 AppsFlyerLib.getInstance().setImeiData(getImei());
		 AppsFlyerLib.getInstance().setAndroidIdData(getAndroidId());
		 AppsFlyerLib.getInstance().startTracking(app, getString(mContext,"eo_appflyer_key"));
		 AppsFlyerLib.getInstance().setCurrencyCode(getString(mContext,"eo_currency_code"));
	}
	
	public void startTrack(Activity aty) {
//		 AppsFlyerLib.getInstance().setImeiData(getImei());
//		 AppsFlyerLib.getInstance().setAndroidIdData(getAndroidId());
//		 AppsFlyerLib.getInstance().startTracking(aty.getApplication(), getString(mContext,"eo_appflyer_key"));
//		 AppsFlyerLib.getInstance().setCurrencyCode(getString(mContext,"eo_currency_code"));
	}
	
	public void login(String userID) {
		Map<String,Object> values = new HashMap<String,Object>();
		values.put(AFInAppEventParameterName.PARAM_1, userID);
		AppsFlyerLib.getInstance().trackEvent(mContext, AFInAppEventType.LOGIN, values);
	}
	
	public void register(String userID) {
		Map<String,Object> values = new HashMap<String,Object>();
		values.put(AFInAppEventParameterName.PARAM_1, userID);
		AppsFlyerLib.getInstance().trackEvent(mContext, AFInAppEventType.COMPLETE_REGISTRATION, values);
	}
	
	public void createOrder(String cpOrderId,String produceId,float price) {
		Map<String, Object> eventValue = new HashMap<String, Object>();
		eventValue.put(AFInAppEventParameterName.REVENUE,price);
		eventValue.put(AFInAppEventParameterName.CONTENT_TYPE,produceId);
		eventValue.put(AFInAppEventParameterName.CONTENT_ID,cpOrderId);
		eventValue.put(AFInAppEventParameterName.CURRENCY,getString(mContext,"eo_currency_code"));
		AppsFlyerLib.getInstance().trackEvent(mContext,AFInAppEventType.ADD_TO_CART,eventValue);
	}
	
	public void paySuccess(String cpOrderId,String produceId,float price) {
		Map<String, Object> eventValue = new HashMap<String, Object>();
		eventValue.put(AFInAppEventParameterName.REVENUE,price);
		eventValue.put(AFInAppEventParameterName.CONTENT_TYPE,produceId);
		eventValue.put(AFInAppEventParameterName.CONTENT_ID,cpOrderId);
		eventValue.put(AFInAppEventParameterName.CURRENCY,getString(mContext,"eo_currency_code"));
		AppsFlyerLib.getInstance().trackEvent(mContext,AFInAppEventType.PURCHASE,eventValue);
	}

	private String getString(Context context, String id) {
		return context.getString(context.getResources().getIdentifier(id, "string", context.getPackageName()));
	}

	private String getImei() {
		try {
			return ((TelephonyManager) mContext.getApplicationContext().getSystemService(Context.TELEPHONY_SERVICE))
					.getDeviceId();
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	private String getAndroidId() {
		try {
			return Settings.System.getString(mContext.getContentResolver(), Settings.System.ANDROID_ID);
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}
}
