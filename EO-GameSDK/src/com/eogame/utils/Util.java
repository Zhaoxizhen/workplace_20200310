package com.eogame.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.Toast;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.Reader;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * 工具类  
 * @author Malone
 *
 */
public class Util {
	
	private static final String FILEPREFIX = "eo_channel.txt";
	private static final String SDK_LOG_STATE = "sdk_log_state";
	
	/**
	 * 获取设备号
	 * @param ctx
	 * @return
	 */
	public static String getUdid(Context ctx) {
		String udid = "";
		try {
			TelephonyManager tm = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
			String deviceId = tm.getDeviceId();
			if (null == deviceId || "".equals(deviceId) || deviceId.contains("000000") || deviceId.length() < 7) {
				WifiManager wifi = (WifiManager) ctx.getSystemService(ctx.WIFI_SERVICE);
				WifiInfo info = wifi.getConnectionInfo();
				String mac = info.getMacAddress();
				if (null == mac || "".equals(mac)) {
					String android_id = Secure.getString(ctx.getContentResolver(), Secure.ANDROID_ID);
					if (null == android_id || "".equals(android_id)) {

					} else {
						udid = android_id;
					}
				} else {
					udid = mac;
				}
			} else {
				udid = deviceId;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return udid;
	}

	/**
	 * 
	 * @param activity
	 * @param content
	 */
	public static void showToast(final Activity activity, final String content){
		activity.runOnUiThread(new Runnable() {	
			public void run() {
				final Toast toast = Toast.makeText(activity, content, Toast.LENGTH_LONG);
				toast.show();
				Handler handler = new Handler();
				handler.postDelayed(new Runnable() {
					public void run() {
						toast.cancel(); 
					}
				}, 2000);
			}
		});
	}

	public static int getStatusBarHeight(Context cx) {
		//获取status_bar_height资源的ID
		int resourceId = cx.getResources().getIdentifier("status_bar_height", "dimen", "android");
		if (resourceId > 0) {
			//根据资源ID获取响应的尺寸值
			return cx.getResources().getDimensionPixelSize(resourceId);
		}
		DisplayMetrics displayMetrics = new DisplayMetrics();
		((WindowManager)cx.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(displayMetrics);
		int statusBarHeight = 0;
		switch (displayMetrics.densityDpi) {
			case DisplayMetrics.DENSITY_HIGH:
				statusBarHeight = 38;
				break;
			case DisplayMetrics.DENSITY_MEDIUM:
				statusBarHeight = 25;
				break;
			case DisplayMetrics.DENSITY_LOW:
				statusBarHeight = 19;
				break;
			default:
				statusBarHeight = 25;
		}
		return dip2px(cx,statusBarHeight);
	}

	public static int dip2px(Context ctx, int dpValue) {
		float scale = ctx.getResources().getDisplayMetrics().density;
		return (int) (dpValue * scale + 0.5f);
	}

	public static ListView getListViewForUserAccount(Context cx){
		ListView listview = new ListView(cx);
		Drawable drawable = cx.getResources().getDrawable(ResourceUtil.getColorId(cx, "eo_name_gray_color"));
		listview.setDivider(drawable);
		listview.setDividerHeight(1);
		return listview;
	}

	/**获取安卓系统SDK版本*/
	public static int getSDKVersion(){
		return android.os.Build.VERSION.SDK_INT;
	}

	/**
	 * 获取手机型号
	 * @return
	 */
	public static String getPhoneModel(){
		return android.os.Build.MODEL;
	}

	/**
	 * 获取系统版本号
	 * @return
	 */
	public static String getSystemVersion(){
		return android.os.Build.VERSION.RELEASE;
	}

	public static String getVersionName(Context context){
		String versionName = "";
		try {
			versionName = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
		} catch (NameNotFoundException e) {
			e.printStackTrace();
		}
		return versionName;
	}

	/**设置窗体外点击不可关闭,此API要求SDK版本高于API-10*/
	@SuppressLint("NewApi") public static void setFinishOnTouchOutside(Activity activity){
		if(Util.getSDKVersion() > 10){
			activity.setFinishOnTouchOutside(false);
		}
	}

	/**
	 * 获取Mac地址
	 * @param context
	 * @return
	 */
	public static String getLocalMacAddress(Context context){
		try {
			if(getSDKVersion() >= 23){
				return getMac();
			}
			WifiManager wifiManager = (WifiManager) context  
					.getSystemService(Context.WIFI_SERVICE);  
			WifiInfo wifiInfo = wifiManager.getConnectionInfo();  
			return wifiInfo.getMacAddress();  
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;  
		}
	}

	/**
	 * 获取网络类型
	 * @param cx
	 * @return
	 */
	public static String getNetworkType(Context cx){
		String strNetworkType = "not net";

		NetworkInfo networkInfo = ((ConnectivityManager)cx. getSystemService(Context.CONNECTIVITY_SERVICE)).getActiveNetworkInfo();
		if (networkInfo != null && networkInfo.isConnected()){
			if (networkInfo.getType() == ConnectivityManager.TYPE_WIFI){
				strNetworkType = "WIFI";
			}else if (networkInfo.getType() == ConnectivityManager.TYPE_MOBILE){
				String _strSubTypeName = networkInfo.getSubtypeName();

				// TD-SCDMA   networkType is 17
				int networkType = networkInfo.getSubtype();
				switch (networkType) {
				case TelephonyManager.NETWORK_TYPE_GPRS:
				case TelephonyManager.NETWORK_TYPE_EDGE:
				case TelephonyManager.NETWORK_TYPE_CDMA:
				case TelephonyManager.NETWORK_TYPE_1xRTT:
				case TelephonyManager.NETWORK_TYPE_IDEN: //api<8 : replace by 11
					strNetworkType = "2G";
					break;
				case TelephonyManager.NETWORK_TYPE_UMTS:
				case TelephonyManager.NETWORK_TYPE_EVDO_0:
				case TelephonyManager.NETWORK_TYPE_EVDO_A:
				case TelephonyManager.NETWORK_TYPE_HSDPA:
				case TelephonyManager.NETWORK_TYPE_HSUPA:
				case TelephonyManager.NETWORK_TYPE_HSPA:
				case TelephonyManager.NETWORK_TYPE_EVDO_B: //api<9 : replace by 14
				case TelephonyManager.NETWORK_TYPE_EHRPD:  //api<11 : replace by 12
				case TelephonyManager.NETWORK_TYPE_HSPAP:  //api<13 : replace by 15
					strNetworkType = "3G";
					break;
				case TelephonyManager.NETWORK_TYPE_LTE:    //api<11 : replace by 13
					strNetworkType = "4G";
					break;
				default:
					// http://baike.baidu.com/item/TD-SCDMA 中国移动 联通 电信 三种3G制式
					if (_strSubTypeName.equalsIgnoreCase("TD-SCDMA") 
							|| _strSubTypeName.equalsIgnoreCase("WCDMA") 
							|| _strSubTypeName.equalsIgnoreCase("CDMA2000")) {
						strNetworkType = "3G";
					}else{
						strNetworkType = _strSubTypeName;
					}
					break;
				}
			}
		}
		return strNetworkType;
	}
	
	private static String getMac() {  
        String str = "";  
        String macSerial = "";  
        try {  
            Process pp = Runtime.getRuntime().exec("cat /sys/class/net/wlan0/address ");  
            InputStreamReader ir = new InputStreamReader(pp.getInputStream());  
            LineNumberReader input = new LineNumberReader(ir);  
            for (; null != str;) {  
                str = input.readLine();  
                if (str != null) {  
                    macSerial = str.trim();// 去空格  
                    break;  
                }
            }
        } catch (Exception ex) {  
            ex.printStackTrace();  
        }
        if (macSerial == null || "".equals(macSerial)) {  
            try {  
                return loadFileAsString("/sys/class/net/eth0/address").toUpperCase().substring(0, 17);
            } catch (Exception e) {  
                e.printStackTrace();  
            }
        }
        return macSerial;  
    }
      
    private static String loadFileAsString(String fileName) throws Exception {  
        FileReader reader = new FileReader(fileName);  
        String text = loadReaderAsString(reader);  
        reader.close();  
        return text;  
    }
  
    private static String loadReaderAsString(Reader reader) throws Exception {  
        StringBuilder builder = new StringBuilder();  
        char[] buffer = new char[4096];  
        int readLength = reader.read(buffer);  
        while (readLength >= 0) {  
            builder.append(buffer, 0, readLength);  
            readLength = reader.read(buffer);  
        }
        return builder.toString();  
    }
    
    public static boolean getLogState(Context context) {
		String logState = getPrams(context, FILEPREFIX, SDK_LOG_STATE);
		if(logState == null){
			return false;
		}
		return logState.equalsIgnoreCase("true")?true:false;
	}
	
	private static String getPrams(Context context, String mFilePrefix, String keyWord) {
		HashMap<String, String> pramsMap = getLogicChannelFile(context, mFilePrefix);
		if (pramsMap != null && pramsMap.size() > 0) {
			Iterator<String> keys = pramsMap.keySet().iterator();
			while (keys.hasNext()) {
				String key = (String) keys.next();
				if (keyWord.equals(key)) {
					return pramsMap.get(key);
				}
			}
		}
		return null;
	}

	/**
	 * 有时候，我们需要根据一个SDK渠道包，去生成多个仅仅渠道号不同的包。但是使用的SDK还是相同的。那么这个时候
	 * 我们通常称这些包为逻辑渠道包，打包工具我们提供一个工具通过在META-INF/目录下生成空文件的形式来标识 逻辑渠道号
	 * 
	 * @param context
	 * @param prefix
	 * @return
	 */
	private static HashMap<String, String> getLogicChannelFile(Context context, String prefix) {
		ApplicationInfo appInfo = context.getApplicationInfo();
		String sourceDir = appInfo.sourceDir;
		String key = "META-INF/" + prefix;
		ZipFile zip = null;
		try {
			zip = new ZipFile(sourceDir);
			Enumeration<?> entries = zip.entries();
			String ret = null;
			ZipEntry entry = null;
			while (entries.hasMoreElements()) {
				entry = (ZipEntry) entries.nextElement();
				String entryName = entry.getName();
				if (entryName.equals(key)) {
					ret = entryName;
					break;
				}
			}
			if (!TextUtils.isEmpty(ret)) {
				long size = entry.getSize();
				if (size > 0) {
					BufferedReader br = new BufferedReader(
							new InputStreamReader(zip.getInputStream(entry)));
					String line;
					HashMap<String, String> map = new HashMap<String, String>();
					while ((line = br.readLine()) != null) { // 文件内容都在这里输出了，根据你的需要做改变
						line=line.replaceAll(" ", "");
						line = line.replace("\n", "");
						String[] split = line.split("=", 2);
						if (split != null && split.length >= 2) {
							map.put(split[0], split[1]);
						}
					}
					br.close();
					if (map.size() > 0) {
						return map;
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (zip != null) {
				try {
					zip.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}
}
