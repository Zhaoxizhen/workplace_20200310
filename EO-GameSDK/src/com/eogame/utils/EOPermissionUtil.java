package com.eogame.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

/** 
 * @author  wujunfeng
 * @date 创建时间：2017-9-6 下午8:32:18 
 * @version 1.0   
 * 用于SDK兼容Android6.0及以上版本的动态权限申请
 */
public class EOPermissionUtil {
	
	public static final int READ_PHONE_STATE = 20001;
	public static final int SYSTEM_ALERT_WINDOW = 20002;
	public static final int SMS = 20003; 
	
	/**
	 * 检查是否有指定权限
	 * @param activity
	 * @return
	 */
	public static boolean checkPermission(Activity activity, String permissionType){
		if(Util.getSDKVersion() >= Build.VERSION_CODES.M){
			if(ContextCompat.checkSelfPermission(activity,permissionType) != PackageManager.PERMISSION_GRANTED){
				return false;
			}
		}
		return true;
	}
	
	/**
	 * 进行权限申请
	 * @param activity
	 * @param permissionType
	 */
	public static void requestPermission(Activity activity, String permissionType, int requestCode){
		ActivityCompat.requestPermissions(activity,new String[]{permissionType},requestCode);
	}
	
	/**
	 * 进行权限申请
	 * @param activity
	 * @param permissionType
	 */
	public static void requestPermission(Activity activity, String[] permissionType, int requestCode){
		ActivityCompat.requestPermissions(activity,permissionType,requestCode);
	}
	
	/**
	 * 检查当前是否有显示悬浮窗的权限
	 * @return
	 */
	@SuppressLint("NewApi")
	public static boolean checkDrawOverlays(Activity activity){
		if(Util.getSDKVersion() >= Build.VERSION_CODES.M){
			if (!Settings.canDrawOverlays(activity)) {
				return false;
			}
		}
		return true;
	}
}
