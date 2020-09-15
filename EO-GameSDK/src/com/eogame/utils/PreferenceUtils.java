package com.eogame.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

public class PreferenceUtils {

	private static PreferenceUtils instance = new PreferenceUtils();
	
	private static SharedPreferences sp;
	
	private static final String IS_SWITCH_LOGIN = "is_switch_login";
	private static final String EO_UUID = "eo_uuid";

	private PreferenceUtils() {

	}

	public static PreferenceUtils instance() {
		return instance;
	}

	public static PreferenceUtils instance(Context ctx) {
		if (sp == null) {
			sp = PreferenceManager.getDefaultSharedPreferences(ctx);
		}
		return instance;
	}

	public void putString(String name, String value) {
		sp.edit().remove(name).commit();
		sp.edit().putString(name, value).commit();
	}

	public void putLong(String name, long value) {
		sp.edit().remove(name).commit();
		sp.edit().putLong(name, value).commit();
	}

	public void putInt(String name, int value) {
		sp.edit().remove(name).commit();
		sp.edit().putInt(name, value).commit();
	}

	public void putFloat(String name, float value) {
		sp.edit().remove(name).commit();
		sp.edit().putFloat(name, value).commit();
	}

	public String getString(String name, String defValue) {
		return sp.getString(name, defValue);
	}

	public long getLong(String name, long defValue) {
		return sp.getLong(name, defValue);
	}

	public int getInt(String name, int defValue) {
		return sp.getInt(name, defValue);
	}

	public float getFloat(String name, float defValue) {
		return sp.getFloat(name, defValue);
	}

	public void putBoolean(String name, Boolean value) {
		sp.edit().remove(name).commit();
		sp.edit().putBoolean(name, value).commit();
	}

	public boolean getBoolean(String name, boolean defValue) {
		return sp.getBoolean(name, defValue);
	}

	public void remove(String name) {
		sp.edit().remove(name).commit();
	}
	
	
	/**
	 * 是否回调切换帐号成功
	 * @return
	 */
	public boolean getIsSwitchLogin(){
		boolean isSwitchAccount = sp.getBoolean(IS_SWITCH_LOGIN, false);
		//获取一次用于判断是否自动登录之后即清空
		sp.edit().putBoolean(IS_SWITCH_LOGIN, false).commit();
		return isSwitchAccount;
	}
	
	public void setIsSwitchLogin(){
		sp.edit().putBoolean(IS_SWITCH_LOGIN, true).commit();
	}

	
	/**
	 * 获取SP中存储的uuid
	 * @return
	 */
	public String getUuid(){
		return sp.getString(EO_UUID, "");
	}
	
	/**
	 * 设置计算生成的uuid到SP中，方便下次获取调用
	 * @param uuid
	 */
	public void setUuid(String uuid){
		sp.edit().putString(EO_UUID, uuid).commit();
	}
}