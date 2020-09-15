package com.eogame.constants;


import com.eogame.utils.EODeviceInfoUtil;
import com.eogame.utils.Util;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;

/**
 * 公共数据
 * @author Malone
 *
 */
public class EOCommon {
	
	public static final String SandClass = "sandclass";

	//meta data键值
	public static final String KEY_MODE = "MODE";
	//用于控制是否屏蔽闪屏，悬浮窗，为true
	public static boolean enableFlag = true;

	public static String gameCode;
	public static String gameKey;
	public static String gameName;
	public static String gameLanguage;

	public static String packgeName;
	public static String gameVersion;
	public static String platformTag;


	public static String serviceEmail = "eoservice88@gmail.com";
	public static String serviceFbFans = "https://www.facebook.com/新三國外傳-104999917664368/";
	public static String customService = "https://www.facebook.com/新三國外傳-104999917664368/";

	/**debug模式开关，用于控制连接测试、正式环境 true为debug环境 false为正式环境*/
	public static boolean debug = true;
	public static boolean backPressedInvalid = false;
	public static int screenOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
    public static String udid;

	public static void init(Context context, EOConfig configInfo) throws Exception {

		if (configInfo.isDebug()) { //debug模式
			debug = true;
		} else {
			debug = false;
		}

		gameCode = configInfo.getGameCode();
		gameKey = configInfo.getGameKey();
		gameName = configInfo.getGameName();
		gameLanguage = configInfo.getGameLanguage();
		backPressedInvalid = configInfo.isBackPressedInvalid();
        platformTag = "2";

		screenOrientation = configInfo.getScreenOrientation();
		gameVersion = Util.getVersionName(context);
		packgeName = context.getPackageName();
        udid = EODeviceInfoUtil.getUUID(context);
		
		if(Util.getLogState(context)){
			//文件配置日志状态优先级高于代码配置，方便调试
			EOConfig.DEBUG = true;
		}
		
		if(debug && context instanceof Activity){
			Util.showToast((Activity) context, Data.eo_debug_tips);
		}
	}
}
