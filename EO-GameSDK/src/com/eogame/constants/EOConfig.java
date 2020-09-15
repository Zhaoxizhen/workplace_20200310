package com.eogame.constants;

import android.content.pm.ActivityInfo;

/**
 * 配置
 * @author Malone
 *
 */
public class EOConfig {

	public static final String SDK_VERSION     = "1.0.0";
	private static final String SDK_VERSIONCODE = "1";

	/**内部用调试模式设置，控制log输出*/
	public static boolean DEBUG = true;

	/**横竖屏*/
	private int screenOrientation = ActivityInfo.SCREEN_ORIENTATION_PORTRAIT;
	/**游戏名称*/
	private String gameName;
	private String gameCode;
	private String gameKey;
	private String gameLanguage;
	/**登录界面首页是否可被返回*/
	private boolean backPressedInvalid = true;

	private boolean debug = true;
	
	//此部分字段用于热更新版本设置init参数给奥飞SDK，避免重复请求同一接口
	private String serviceEmail = null;
	private String serviceFbFans = null;

	public String getGameLanguage() {
		return gameLanguage;
	}

	public void setGameLanguage(String gameLanguage) {
		this.gameLanguage = gameLanguage;
	}


	public int getScreenOrientation() {
		return screenOrientation;
	}

	public void setScreenOrientation(int screenOrientation) {
		this.screenOrientation = screenOrientation;
	}

	public String getGameName() {
		return gameName;
	}

	public void setGameName(String gameName) {
		this.gameName = gameName;
	}

	public String getGameCode() {
		return gameCode;
	}

	public void setGameCode(String gameCode) {
		this.gameCode = gameCode;
	}

	public String getGameKey() {
		return gameKey;
	}

	public void setGameKey(String gameKey) {
		this.gameKey = gameKey;
	}

	public boolean isDebug() {
		return DEBUG;
	}//TODO 测试

	/**设置是否为调试模式，为true则连接测试服务器；为false则连接正式服务器。默认为false*/
	public void setDebug(boolean debug) {
		this.debug = debug;
	}

	public static String getSdkVersioncode() {
		return SDK_VERSIONCODE;
	}

	public static String getSdkVersion() {
		return SDK_VERSION;
	}

	/**
	 * 设置登陆第一页是否可以被返回，默认可以返回。调用此方法则为不可返回
	 */
	public void setBackPressedInValid(){
		this.backPressedInvalid = true;
	}

	public boolean isBackPressedInvalid() {
		return backPressedInvalid;
	}
	
	public String getServiceEmail() {
		return serviceEmail;
	}

	public void setServiceEmail(String serviceEmail) {
		this.serviceEmail = serviceEmail;
	}

	public String getServiceFbFans() {
		return serviceFbFans;
	}

	public void setServiceFbFans(String serviceFbFans) {
		this.serviceFbFans = serviceFbFans;
	}
}
