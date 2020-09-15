package com.eogame.constants;

import android.R.integer;

/**
 * @author wujunfeng
 * @date 创建时间：2016-10-28 下午6:00:59
 * @version 1.0
 */
public class MessageCode {

	/**
	 * 手机注册获取验证码
	 */
	public static final int CODE_REGIST_GET_CODE = 10000;

	/**
	 * 标准登录
	 */
	public static final int CODE_LOGIN_NORMAL = 10001;

	/**
	 * 使用token进行登录
	 */
	public static final int CODE_LOGIN_USE_TOKEN = 10002;

	/**
	 * 游客登录
	 */
	public static final int CODE_LOGIN_GUEST = 10003;

	/**
	 * 注册结果处理
	 */
	public static final int CODE_REGIST_RESULT = 10004;

	/**
	 * 重置密码邮件结果处理
	 */
	public static final int CODE_RESET_PWD_EMAIL_CODE = 10005;

	/**
	 * 重置密码结果处理
	 */
	public static final int CODE_RESET_PWD_RESET_CODE = 10006;

	public static final int CODE_LOGIN_FACEBBOOK = 10007;

    public static final int CODE_BIND_SANDCLASS = 10008;

    public static final int CODE_BIND_FACEBOOK = 10009;

	/**
	 * 支付宝支付模块
	 */
	public static final int CODE_PAY_GOOGLE = 10100;
	public static final int CODE_PAY_WEB = 10101;

    public static final int CODE_PAY_WAY = 10102;
    public static final int CODE_PAY_VERIFY = 10103;

    public static final int CODE_PAY_CREATE_ORDER = 10104;

    public static final int CODE_PAY_GOOGLE_Init = 10105;
    public static final int CODE_PAY_GOOGLE_QUERY_SUCCESS = 10106;
    public static final int CODE_PAY_GOOGLE_QUERY_FAIL = 10107;
    public static final int CODE_PAY_GOOGLE_QUERY_LIST_SUCCESS = 10108;
    public static final int CODE_PAY_GOOGLE_QUERY_LIST_FAIL = 10109;
    public static final int CODE_PAY_GOOGLE_BUY_SUCCESS = 10110;
    public static final int CODE_PAY_GOOGLE_BUY_FAIL = 10111;
    public static final int CODE_PAY_GOOGLE_BUY_CANCEL = 10112;
    public static final int CODE_PAY_GOOGLE_CONSUME_SUCCESS = 10113;
    public static final int CODE_PAY_GOOGLE_CONSUME_FAIL = 10114;
    
    public static final int CODE_RELEASE_PAYING = 10200;

}
