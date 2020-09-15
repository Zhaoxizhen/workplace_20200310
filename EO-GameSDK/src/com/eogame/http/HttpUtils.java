package com.eogame.http;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;

import com.eogame.constants.CommonData;
import com.eogame.constants.Data;
import com.eogame.constants.EOCommon;
import com.eogame.constants.EOConfig;
import com.eogame.utils.DeviceInfoUtils;
import com.eogame.utils.EODeviceInfoUtil;
import com.eogame.utils.ScreenUtils;
import com.eogame.utils.Util;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import org.json.JSONException;
import org.json.JSONObject;

public class HttpUtils {
	

	private static Context context;
	
	public static void setContext(Context context) {
		HttpUtils.context = context;
	}


	/**设备号*/
	private final static String DEVICEUID = "did";

	/**手机型号*/
	private final static String DEVICE = "dn";

	/**系统版本*/
	private final static String OSVERSION = "dvos";

//	/**SDK代码版本号*/
//	private final static String VERSIONCODE = "versionCode";

	/**SDK版本号*/
	private final static String SDKVERSION = "sdkv";

	/**厂商*/
	private final static String MANUFACTURER = "fn";

	/**屏幕大小*/
	private final static String SCREEN = "screen";


	/**网络类型*/
	private final static String NETWORKTYPE = "nt";

	private final static String LANGUAGE = "ls";

	private final static String PLATFORMTAG = "chnl";




	/**玩家测试（招募）：1000*/
	//private final static int PLAYER_TEST = 1000;
	
	/**卓游测试（内部）：1001*/
	//private final static int JOYGAMES_INNER_TEST = 1000;
	
	/**卓游正式（对外）：1002*/
	//private final static int JOYGAMES_OUTER_FORMAL = 1002;
	
	/**卓游测试（对外QA）：1003 */
	//private final static int JOYGAMES_OUTER_QA = 1003;
	
	/**默认渠道标识*/
	//private final static String CHANNEL_LABEL_DEFAULT = "卓游测试";
	
//	/**
//	 * 添加公共参数到请求头
//	 */
//	public static void addCommonParametersToHeader(HttpPost post) {
//		post.addHeader(SDKVERSION, SGConfig.getSdkVersion());
//		post.addHeader(VERSIONCODE, SGConfig.getSdkVersioncode());
//		post.addHeader(OSVERSION, String.valueOf(Util.getSystemVersion()));
//		post.addHeader(DEVICE, Util.getPhoneModel());
//		post.addHeader(NETWORKTYPE, Util.getNetworkType(context));
//		post.addHeader(DEVICEUID, SGDeviceInfoUtil.getUUID(context));
//		post.addHeader(OLDGUID, Util.getUdid(context));
//		post.addHeader(CHANNEL, String.valueOf(SGCommon.channel));
//		post.addHeader(GROUP_ID, "3");
//		post.addHeader(CHANNELLABEL, SGCommon.channelLabel);
//		post.addHeader(PLATFORMTAG, SGCommon.platformTag);
//		post.addHeader(SUBCHANNEL, getLogicChannel(context));
//		post.addHeader(ADID, getLogicAdid(context));
//		if(SGCommon.hostSdkVersion != null && !"".equals(SGCommon.hostSdkVersion)){
//			post.addHeader(HOSTSDKVERSION,SGCommon.hostSdkVersion);
//		}
//	}
	
//	/**
//	 * 为http请求添加固定的参数，
//	 * 包括：渠道ID，系统类型,渠道标识
//	 * @param list
//	 */
//	public static void addParameters(ArrayList<NameValuePair> list) {
//		list.add(new BasicNameValuePair(SDKVERSION, SGConfig.getSdkVersion()));
//		list.add(new BasicNameValuePair(VERSIONCODE, SGConfig.getSdkVersioncode()));
//		list.add(new BasicNameValuePair(OSVERSION, String.valueOf(Util.getSystemVersion())));
//		list.add(new BasicNameValuePair(DEVICE, Util.getPhoneModel()));
//		list.add(new BasicNameValuePair(NETWORKTYPE, Util.getNetworkType(context)));
//		list.add(new BasicNameValuePair(DEVICEUID, SGDeviceInfoUtil.getUUID(context)));
//		list.add(new BasicNameValuePair(OLDGUID, Util.getUdid(context)));
//		list.add(new BasicNameValuePair(CHANNEL, String.valueOf(SGCommon.channel)));
//		list.add(new BasicNameValuePair(GROUP_ID, "3"));
//		list.add(new BasicNameValuePair(CHANNELLABEL, SGCommon.channelLabel));
//		list.add(new BasicNameValuePair(PLATFORMTAG, SGCommon.platformTag));
//		list.add(new BasicNameValuePair(SUBCHANNEL, getLogicChannel(context)));
//		list.add(new BasicNameValuePair(ADID, getLogicAdid(context)));
//	}
	
	/**
	 * 添加公共参数到请求头
	 */
	public static void addCommonParametersToHeader(HttpURLConnection post) {
		post.addRequestProperty(SDKVERSION, EOConfig.getSdkVersion());
		post.addRequestProperty(OSVERSION, String.valueOf(Util.getSystemVersion()));
		post.addRequestProperty(DEVICE, Util.getPhoneModel());
		post.addRequestProperty(NETWORKTYPE, Util.getNetworkType(context));
		post.addRequestProperty(DEVICEUID, EODeviceInfoUtil.getUUID(context));
		post.addRequestProperty(PLATFORMTAG, EOCommon.platformTag);
		post.addRequestProperty(SCREEN, ScreenUtils.getScreen(context));
		post.addRequestProperty(MANUFACTURER,EODeviceInfoUtil.getManufacturer());
		post.addRequestProperty(LANGUAGE,EOCommon.gameLanguage);
	}
	
	public static String getHeaderParameters() {
		JSONObject params = new JSONObject();
		try {
			params.put(SDKVERSION, EOConfig.getSdkVersion());
			params.put(OSVERSION, String.valueOf(Util.getSystemVersion()));
			params.put(DEVICE, Util.getPhoneModel());
			params.put(NETWORKTYPE, Util.getNetworkType(context));
			params.put(DEVICEUID, EODeviceInfoUtil.getUUID(context));
			params.put(PLATFORMTAG, EOCommon.platformTag);
			params.put(SCREEN, ScreenUtils.getScreen(context));
			params.put(MANUFACTURER,EODeviceInfoUtil.getManufacturer());
			params.put(LANGUAGE,EOCommon.gameLanguage);
			return params.toString();
		} catch (JSONException e) {
			e.printStackTrace();
			return "";
		}
	}
	
//	/**
//	 * 为http请求添加固定的参数，
//	 * 包括：渠道ID，系统类型,渠道标识
//	 * @param list
//	 */
//	public static void addParameters(HashMap<String, String> list) {
//		list.put(APP_ID, SGCommon.gameCode);
//		list.put(SDKVERSION, SGConfig.getSdkVersion());
//		list.put(VERSIONCODE, SGConfig.getSdkVersioncode());
//		list.put(OSVERSION, String.valueOf(Util.getSystemVersion()));
//		list.put(DEVICE, Util.getPhoneModel());
//		list.put(NETWORKTYPE, Util.getNetworkType(context));
//		list.put(DEVICEUID, SGDeviceInfoUtil.getUUID(context));
//		list.put(OLDGUID, Util.getUdid(context));
//		list.put(CHANNEL, String.valueOf(SGCommon.channel));
//		list.put(GROUP_ID, "3");
//		list.put(CHANNELLABEL, SGCommon.channelLabel);
//		list.put(PLATFORMTAG, SGCommon.platformTag);
//		list.put(SUBCHANNEL, getLogicChannel(context));
//		list.put(ADID, getLogicAdid(context));
//	}



//	public static String getPrams(Context context, String mFilePrefix, String keyWord) {
//		HashMap<String, String> pramsMap = getLogicChannelFile(context, mFilePrefix);
//		if (pramsMap != null && pramsMap.size() > 0) {
//			Iterator<String> keys = pramsMap.keySet().iterator();
//			while (keys.hasNext()) {
//				String key = (String) keys.next();
//				if (keyWord.equals(key)) {
//					return pramsMap.get(key);
//				}
//			}
//		}
//		return null;
//	}
	
	public static boolean isPayUrl(String url){
		return url.contains(Data.URL_BASE_PAY);
	}
}
