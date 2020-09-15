package com.eogame.base;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;

import java.util.Locale;

import com.eogame.constants.EOCommon;
import com.eogame.model.UserSession;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.Util;


/** 
 * @author  zhaoxizhen
 * @date 创建时间：2016-10-18 下午12:05:36 
 * @version 1.0   
 */
public abstract class BasePage extends Activity implements OnClickListener{
	
	public String TAG = "EOSDK";
	public Activity mContext;
	public UserSession mUserSession;

	//数据埋点功能中记录界面停留时长
	private long tempTimestamp;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		mContext = this;
//		AndroidUtils.setLanguage(mContext, EOCommon.gameLanguage);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
//		if(EOCommon.screenOrientation == ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE){
			setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);//设置横竖屏
//		}else{
//			setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT);
//		}
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN); // 设置全屏
		mUserSession = UserSession.getInstance();
		mUserSession.buildAccountInfos(mContext.getApplication());
		Util.setFinishOnTouchOutside(mContext);
		initView();
		initListener();
		initData();
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		
		
	}
	
	public void showToast(String content){
		Toast.makeText(this, content, Toast.LENGTH_SHORT).show();
	}
	
	@SuppressWarnings("unchecked")
	public <T> T getView(String resName){
		return (T)findViewById(ResourceUtil.getViewId(mContext,resName));
	}
	
	public View getLayout(String resName){
		LayoutInflater inflater = getLayoutInflater();
		View mView = inflater.inflate(ResourceUtil.getLayoutId(mContext,resName),null);
		return mView;
	}
	
	@Override
	public void onClick(View v) {
		int id = v.getId();
		onClick(v,id);
	}
	

	/**
	 * 点击事件回调
	 * @param v
	 * @param id
	 */
	protected abstract void onClick(View v,int id);
	
	/**
	 * 初始化界面数据
	 */
	protected abstract void initData();
	/**
	 * 初始化界面监听
	 */
	protected abstract void initListener();
	/**
	 * 初始化控件
	 */
	protected abstract void initView();
	/**
	 * 清空界面内容
	 */
	protected abstract void clear();
}
