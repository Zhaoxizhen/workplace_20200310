package com.eogame.listener;


/** 
 * SDK登录回调
 * @author  wujunfeng
 * @date 创建时间：2016-8-9 下午3:28:11 
 * @version 1.0   
 */
public interface LoginCallback {
	public void onSuccess(String token);
    public void onCancle();
    public void onError(String errorMsg);
    public void onLogout();
//    public void onSwitchAccount(String userId, String token, String username);
}
