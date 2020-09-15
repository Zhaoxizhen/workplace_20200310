package com.eogame.constants;

import com.eogame.listener.InitCallback;
import com.eogame.listener.LoginCallback;

import android.content.Context;


/** 
 * @author  wujunfeng
 * @date 创建时间：2017-9-7 上午11:49:50 
 * @version 1.0
 * 用于持有一些全局的变量，方便使用 
 */
public class EODataHolder {
	public static Context mContext;
	public static EOConfig mConfig;
	public static InitCallback mInitCallback;
	public static LoginCallback mLoginCallback;
}
