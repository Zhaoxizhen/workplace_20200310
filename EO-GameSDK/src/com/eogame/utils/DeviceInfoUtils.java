package com.eogame.utils;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;

/** 
 * 手机相关信息获取工具类
 * @author  wujunfeng
 * @date 创建时间：2016-7-4 下午2:39:31 
 * @version 1.0   
 */
public class DeviceInfoUtils {
	
	/** 
     * 获取当前ip地址 
     *  
     * @param context 
     * @return 
     */  
	public static String getLocalIpAddress(Context context){
		try {  
			WifiManager wifiManager = (WifiManager) context  
					.getSystemService(Context.WIFI_SERVICE);  
			WifiInfo wifiInfo = wifiManager.getConnectionInfo();  
			int i = wifiInfo.getIpAddress();  
			return int2ip(i);  
		} catch (Exception ex) {
			ex.printStackTrace();
			//"获取IP出错!请保证是WIFI,或者请重新打开网络!\n" + ex.getMessage()
			return null;  
		}
	}
	
	/**
	 * 获取Mac地址
	 * @param context
	 * @return
	 */
	public static String getLocalMacAddress(Context context){
		try {  
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
	 * 获取手机IMEI号
	 * 若返回为空字符串，则获取IMEI号失败
	 * @return
	 */
	public static String getPhoneIMEI(Context context){
		TelephonyManager manager = (TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE);
		return manager.getDeviceId() == null ? manager.getDeviceId() : "";
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
	
	/**
	 * 获取SDK版本号
	 * @return
	 */
	public static int getSDKVersion(){
		return android.os.Build.VERSION.SDK_INT;
	}
	
	/**
	 * 获取手机号码
	 * 若返回为空字符串，则该手机未装入sim卡
	 * @return
	 */
	public static String getPhoneNumber(Context context){
		TelephonyManager manager = (TelephonyManager)context.getSystemService(Context.TELEPHONY_SERVICE);
		return manager.getLine1Number() == null ? "" : manager.getLine1Number();
	}
	
	/** 
     * 将ip的整数形式转换成ip形式 
     *  
     * @param ipInt 
     * @return 
     */  
	public static String int2ip(int ipInt) {  
        StringBuilder sb = new StringBuilder();  
        sb.append(ipInt & 0xFF).append(".");  
        sb.append((ipInt >> 8) & 0xFF).append(".");  
        sb.append((ipInt >> 16) & 0xFF).append(".");  
        sb.append((ipInt >> 24) & 0xFF);  
        return sb.toString();  
    }
}
