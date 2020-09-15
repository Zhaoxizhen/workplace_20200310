package com.eogame.utils;

import com.eogame.constants.EOCommon;
import com.eogame.constants.EOConfig;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;


/** 
 * 悬浮窗操作工具类（单独抽取，方便进行悬浮窗屏蔽）
 * @author  wujunfeng
 * @date 创建时间：2017-1-20 上午10:12:59 
 * @version 1.0   
 */
public class EOFloatViewUtil {

	/**
	 * 用于控制悬浮窗的显示与否（换皮SDK中使用）
	 */
	//	private boolean mEnable = EOCommon.enableFlag;

	/**
	 * 连接到Service
	 */
	private final ServiceConnection mServiceConnection = new ServiceConnection() {
		@Override
		public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
//			mFloatViewService = ((AFService.FloatViewServiceBinder) iBinder).getService();
		}

		@Override
		public void onServiceDisconnected(ComponentName componentName) {
//			mFloatViewService = null;
		}
	};

	public EOFloatViewUtil() {
	}

	public void bindService(Context cx) {
//		if((EOCommon.floatViewLocation == EOConfig.FLOAT_HIDE)){
//			return;
//		}
//		try {
//			Intent intent = new Intent(cx, AFService.class);
//			cx.startService(intent);
//			cx.bindService(intent, mServiceConnection, Context.BIND_AUTO_CREATE);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}

	public void showFloatView() {
//		if (mFloatViewService != null && UserCenterPresenter.isShowFloat) {
//			mFloatViewService.showFloat();
//		}
	}

	public void hideFloatView() {
//		if (mFloatViewService != null && UserCenterPresenter.isShowFloat) {
//			mFloatViewService.hideFloat();
//		}
	}

	public void destory(Context cx) {
//		try {
//			cx.stopService(new Intent(cx, AFService.class));
//			if(mServiceConnection != null){
//				cx.unbindService(mServiceConnection);
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}

	/**
	 * 设置悬浮窗显示位置
	 * @param location
	 */
	public void setLocation(int location) {
//		if(mFloatViewService != null){
//			mFloatViewService.setLocation(location);
//		}
	}

	/**
	 * 设置新消息的红点提示
	 * 返回false则表示当前悬浮窗为隐藏状态，不能设置
	 */
	public boolean setNewMessageTip(){
//		if(mFloatViewService != null){
//			if(mFloatViewService.isShowing()){
//				//悬浮窗正在显示中，可进行红点提示
//				mFloatViewService.refresh();
//				return true;
//			}
//		}
		//其他情况则不能依赖悬浮窗进行红点提示
		return false;
	}
	
	public void refresh(){
//		if(mFloatViewService != null){
//			mFloatViewService.refresh();
//		}
	}

}
