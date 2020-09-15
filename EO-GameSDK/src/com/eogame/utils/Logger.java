package com.eogame.utils;

import android.util.Log;

import java.io.BufferedWriter;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;

import com.eogame.constants.EOCommon;

/**
 * 日志打印 正式环境下不打印日志信息
 * @author Malone
 * 
 */
public class Logger {
	
	private static final String LOG_LEVEL_V = "v";
	private static final String LOG_LEVEL_D = "d";
	private static final String LOG_LEVEL_I = "i";
	private static final String LOG_LEVEL_W = "w";
	private static final String LOG_LEVEL_E = "e";
	private static final String LOG_LEVEL_C = "c";
	private static final String LOG_LEVEL_P = "p";
	
	private static Logger mInstance = new Logger();
	
	private HashMap<String, BufferedWriter> mWriterMap;

	private Logger() {
		mWriterMap = new HashMap<String, BufferedWriter>();
	}

	public static Logger getInstance() {
		return mInstance;
	}

	public void i(String TAG, String str) {
		if(EOCommon.debug){
			Log.i(TAG, str);
		}
	}

	public void d(String TAG, String str) {
		if(EOCommon.debug){
			Log.d(TAG, str);
		}
	}

	public void v(String TAG, String str) {
		if(EOCommon.debug){
			Log.v(TAG, str);
		}
	}

	public void w(String TAG, String str) {
		if(EOCommon.debug){
			Log.w(TAG, str);
		}
	}
	public void w2(String TAG, String str) {
		Log.w(TAG, str);
	}
	
	public void p(String TAG, String str) {
		if(EOCommon.debug){
			Log.d(TAG, str);
		}
	}
	
	public void downLoad(String TAG, String str){
		if(EOCommon.debug){
			Log.w(TAG, str);
		}
	}
	
	public void e(String TAG, String errorMsg) {
		if(EOCommon.debug){
			Log.e(TAG, errorMsg);
		}	
	}
}
