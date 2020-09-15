package com.eogame.listener;


/**
 * SDK支付回调
 * @author  wujunfeng
 * @date 创建时间：2016-8-9 下午3:28:28 
 * @version 1.0   
 */
public interface PayCallback{
	public void onSuccess(String afOrderId);
    public void onCancle();
    public void onError(String errorMsg);
}
