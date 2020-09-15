package com.eogame.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import com.eogame.activity.EOAccountActivity;
import com.eogame.activity.EOPayActivity;
import com.eogame.activity.EOUserCenterActivity;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;


/**
 * @author wujunfeng
 * @date 创建时间：2016-10-27 上午10:19:50
 * @version 1.0
 */
public class PageUtil {
	public static void jump2Login(Context context) {
		Intent intent = new Intent();
		intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		intent.setClass(context, EOAccountActivity.class);
		context.startActivity(intent);
	}

	public static void jump2Pay(Context context, EORoleInfo roleInfo, EOPayInfo payInfo) {
		Intent intent = new Intent();
		intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		intent.setClass(context, EOPayActivity.class);
		Bundle bundle = new Bundle();
		bundle.setClassLoader(EOPayInfo.class.getClassLoader());
		bundle.putSerializable("payInfo", payInfo);
		bundle.putSerializable("roleInfo",roleInfo);
		intent.putExtras(bundle);
		context.startActivity(intent);
	}
	
	public static void jump2UserCenter(Context mContext) {
		Intent intent = new Intent();
		intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		intent.setClass(mContext, EOUserCenterActivity.class);
		mContext.startActivity(intent);
	}
}
