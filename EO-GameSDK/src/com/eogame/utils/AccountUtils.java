package com.eogame.utils;

import android.app.Activity;
import android.text.TextUtils;
import android.widget.EditText;

public class AccountUtils {

	/**
	 * 检查密码是否符合登录要求
	 * 
	 * @param activity
	 * @param editText
	 * @return 符合要求则返回true
	 */
	public static boolean checkPassword(Activity activity, EditText editText) {
		String password = editText.getText().toString();
		if (password == null || password.length() == 0 || TextUtils.isEmpty(password)) {
			Util.showToast(activity, ResourceUtil.getString(activity, "eo_error_login_password_empty"));
			editText.requestFocus();
			return false;
		}

		if (!PatternUtil.checkPassword(password)) {
			Util.showToast(activity, ResourceUtil.getString(activity, "eo_error_login_password_error"));
			editText.requestFocus();
			return false;
		}
		return true;
	}

	/**
	 * 检查手机号码是否符合注册要求：是否为空，是否属于存在的号段
	 * 
	 * @param activity
	 * @param editText
	 * @return 符合要求则返回true
	 */
	public static boolean checkPhone(Activity activity, EditText editText) {
		String phone = editText.getText().toString();
		if (TextUtils.isEmpty(phone)) {
			editText.requestFocus();
			return false;
		}

		if (!PatternUtil.chcekPhone(phone)) {
			editText.requestFocus();
			return false;
		}
		return true;
	}

	/**
	 * 检查邮箱是否合法
	 * 
	 * @param mLoginUsernameEt
	 * @return
	 */
	public static boolean checkUsername(Activity activity, EditText mLoginUsernameEt) {
		String username = mLoginUsernameEt.getText().toString();
		if (PatternUtil.checkEmail(username)) {
			// 使用邮箱登录
			if (username.length() < 50) {
				return true;
			}
		} else {
//			Util.showToast(activity, ResourceUtil.getString(activity, "eo_error_login_username_invalid"));
			mLoginUsernameEt.requestFocus();
			return false;
		}
		return true;
	}
	
	public static boolean checkUsername(String username) {
		if(username != null && PatternUtil.checkEmail(username)){
			if(username.length() < 50)
				return true;
		}
		return false;
	}

	
}
