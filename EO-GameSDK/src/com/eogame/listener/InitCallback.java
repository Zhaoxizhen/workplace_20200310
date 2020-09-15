package com.eogame.listener;


/** 
 * SDK初始化回调
 * @author  wujunfeng
 * @date 创建时间：2016-8-9 下午3:27:29 
 * @version 1.0   
 */
public interface InitCallback {
	public void onSuccess();
    public void onError(String errorMsg);
}
