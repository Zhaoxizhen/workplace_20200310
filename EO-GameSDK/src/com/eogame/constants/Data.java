package com.eogame.constants;

/**
 * 存放自定义常量
 * 
 * @author wujunfeng
 * @date 创建时间：2016-10-25 上午10:09:42
 * @version 1.0
 */
public class Data {//TODO	常量涉及服务端接口，暂时不改
	
	/* 登录api */
	public static String URL_LOGIN_QA =  CommonData.URL_LOGIN_QA;
	public static String URL_LOGIN_URL_NORMAL = CommonData.URL_LOGIN_NORMAL;
	
	/**Login URL*/
	public static final String URL_BASE_PASSPORT = EOCommon.debug ? URL_LOGIN_QA : URL_LOGIN_URL_NORMAL;
//	public static final String URL_BASE_PASSPORT = "http://192.168.124.18:8080/Login.sgplayer.com/";
	
	/**初始化接口*/
	public static final String URL_INIT = EOCommon.debug ? CommonData.URL_INIT_QA:CommonData.URL_INIT_NORMAL;
//	public static final String URL_INIT = "http://192.168.124.18:8080/Apps.eoplayer.com/";

	/**检查更新接口*/
	public static final String URL_GET_UPDATE_INFO = URL_INIT + "apps/checkUpdate.do";

	/**获取公告*/
	public static final String URL_GET_NOTICE = "http://login.porty.top/notice/getNoticeMapping.do";
//	public static final String URL_GET_NOTICE = "https://login.eohfun.com/notice/getNoticeMapping.do";

	/**通用注册接口*/
	public static final String URL_REGISTER = URL_INIT + "apps/registerSgUser.do";

    public static final String URL_GET_SERVER_INFO = URL_INIT + "apps/gameServerInfo.do";

	/**帐号密码登录接口*/
	public static final String URL_LOGIN_NORMAL = URL_BASE_PASSPORT + "login/loginSg.do";

    public static final String URL_LOGIN_FOREIGN = URL_BASE_PASSPORT + "login/loginForeign.do";

	public static final String URL_BIND_SANDCLASS = URL_BASE_PASSPORT + "login/bindSgAccount.do";

    public static final String URL_BIND_FACEBOOK  = URL_BASE_PASSPORT + "login/bindFacebookAccount.do";
	
	/**游客登录接口*/
	public static final String URL_LOGIN_VISITOR = URL_BASE_PASSPORT + "login/loginGuest.do";
	
	/**token登录接口*/
	public static final String URL_LOGIN_TOKEN = URL_BASE_PASSPORT + "login/loginToken.do";

    /** 发送重置密码邮件 */
    public static final String URL_FORGET_PWD = URL_INIT + "apps/forgetPasswordUrl.do";

    /** 发送日志 */
    public static final String URL_SEND_LOG = URL_INIT + "apps/gameLog.do";

    public static final String URL_GET_FRIENDS_IDS = URL_INIT + "apps/queryUidByFbid.do";

	/* PAY-API */
	public static String URL_PAY_QA = CommonData.URL_PAY_QA;
	public static String URL_PAY_NORMAL = CommonData.URL_PAY_NORMAL;
	
	// 支付模块基础URL
	public static String URL_BASE_PAY = EOCommon.debug ? URL_PAY_QA: URL_PAY_NORMAL;

	// 查询可以使用的支付方式,http://payapi.qa.15166.com/pay-channel";
	public static String URL_QUERY_PAYWAY = URL_INIT+"apps/queryGamePayChannel.do";

	// 生成google渠道充值订单
    public static String URL_CREATE_ORDER = CommonData.URL_PAY_HTTP + "google/buildGooglePayOrder.do";

    // google充值回调
    public static String URL_VERIFY_ORDER =  CommonData.URL_PAY_HTTP+ "google/googlePayBack";//TODO 使用http

	// 获取充值品项
	public static String URL_GET_PAYITEMS = "https://gm.eohfun.com/web/getPayItems.do";

//	// MyCard充值地址
//	public static String URL_MYCARD_PAYSTART = "https://pay.eohfun.com/pay/mycardTradeStartTw.do";
//
//	// Razer充值地址
//	public static String URL_RAZER_PAYSTART = "https://pay.eohfun.com/pay/razerPaymentRequest.do";
//
//	//Xsolla充值地址
//	public static String URL_XSOLLA_PAYSTART = "https://pay.eohfun.com/pay/getXsoolaPayUrl.do";
//
//	//Codapay充值地址
//	public static String URL_CODAPAY_PAYSTART = "https://pay.eohfun.com/pay/codaInit.do";

	/**
	 * 本地服务区测试
	 */
	// MyCard充值地址
	public static String URL_MYCARD_PAYSTART = "http://192.168.0.107:10086/Pay.sgplayer.com/pay/mycardTradeStartTw.do";

	// Razer充值地址
	public static String URL_RAZER_PAYSTART = "http://192.168.0.107:10086/Pay.sgplayer.com/pay/razerPaymentRequest.do";

	//Xsolla充值地址
	public static String URL_XSOLLA_PAYSTART = "http://192.168.0.107:10086/Pay.sgplayer.com/pay/getXsoolaPayUrl.do";

	//Codapay充值地址
	public static String URL_CODAPAY_PAYSTART = "http://192.168.0.107:10086/Pay.sgplayer.com/pay/codaInit.do";

	// web端充值地址
	public static String URL_WEB_PAY = "https://gm.eohfun.com/web/getBackstageLoginPage.do";
	// 密码为空
//	public static final String eo_error_login_password_empty = "请输入密码";

	// 密码验证错误
//	public static final String af_error_login_password_error = "密码错误";

	// 网络错误或其他原因导致的登录失败
//	public static final String af_error_login_net_error = "登录超时，请检查网络\n如有疑问请联系客服QQ  87654321";

	// 用户名无效
//	public static final String eo_error_login_username_invalid = "该帐号不存在";

	//用户协议
//	public static final String af_userprotocol_text = "注册即同意《用户协议》";
	
	//欢迎界面
//	public static final String af_welcome_text = "，欢迎回来！";

// 注册模块

	// 手机号码已被注册
//	public static final String af_error_regist_phone_used = "该手机已被注册";

	// 手机号码格式错误
//	public static final String eo_error_regist_email_error = "该邮箱账号不存在";

	// 密码错误
//	public static final String eo_error_regist_pwd_error = "密码错误，请输入6~20位字符数字";
	
	// 验证码为空
//	public static final String af_error_regist_code_empty = "验证码不能为空";
	
	// 验证码长度不符
//	public static final String af_error_regist_code_length = "验证码长度必须为6位";

	// 密码长度不符
//	public static final String af_error_regist_password_error = "密码长度必须为6-20个字符";

	// 网络错误等其他原因导致的注册失败
//	public static final String af_error_regist_net_error = "注册帐号超时，请重试";


	// 手机注册获取验证码失败
//	public static final String af_tips_get_code_fail = "验证码发送失败，请重试";
	
	// 手机注册成功
//	public static final String eo_tips_regist_suc = "注册成功！";

	// 手机号码格式错误
//	public static final String af_error_reset_phone_error = "该手机号不存在";

	// 验证码错误
//	public static final String af_error_reset_code_error = "验证码错误";

	// 密码长度不符
//	public static final String af_error_reset_password_length = "密码长度必须为6-20个字符";


	
	// 短信验证码发送目标提示
	
	// 重置密码成功提示
	
	// 重置密码帮助提示
//	public static final String af_tips_reset_service = "如需帮助，请联系客服QQ：";
//	
//	
//
//    // 支付模块
//	public static final String af_result_pay_exception = "支付异常";
//	public static final String af_result_pay_unknow = "支付结果未知";
//	public static final String af_pay_tip_payresult = "未查到支付结果，是否继续查询";
//	public static final String af_pay_tip_continue = "继续查询";
//	public static final String af_pay_tip_inpayinging = "支付中";
//	public static final String af_pay_tip_check_pay_result = "查询支付结果...";
	

	//拉取订单支付方式
    public static final String eo_pay_channel_google   = "google";
    public static final String eo_pay_channel_webpay   = "webpay";

    public static final String eo_key_google_repatedata = "repate_data";
    public static final String eo_key_google_signdata = "sign_data";
    public static final String eo_key_order_id = "order_id";


	// 悬浮框模块
//	public static final String eo_layout_tip_title = "正在加载中...";


	// SocketTimeoutException
//	public static final String eo_error_net_timeout = "连接超时";

	// UnknownHostException
//	public static final String eo_error_net_exception = "网络异常";
	
	//SSLPeerUnverifiedException
//	public static final String eo_error_net_certificate_expired = "访问出错，请正确设置本机系统日期时间后重试！";

	// 系统异常
//	public static final String eo_error_sys_exception = "系统异常";
	
	//未知异常
//	public static final String eo_error_unkonw_exception = "未知异常";

	// json格式异常
//	public static final String eo_error_json = "服务器返回json异常";

	// 测试模式
	public static final String eo_debug_tips = "当前为测试模式!";

}
