package com.eogame.listener;

public interface FacebookLoginApi {
	public void loginSuccess(String fbId, String fbName, String headImg);

	public void loginFail(String msg);

	public void loginCancel();
}
