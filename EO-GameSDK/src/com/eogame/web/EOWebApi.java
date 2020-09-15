package com.eogame.web;

import java.util.Map;

import com.eogame.model.HttpResult;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;

public interface EOWebApi {
	/**
	 * 初始化
	 * @return
	 */
	HttpResult init();

	/**
	 * 查询更新
	 * @return
	 */
	HttpResult checkUpdate();

	/**
	 * 弹出公告
	 * @return
	 */
	String getNotice();

    /**
     * 登录
     * @param username
     * @param password
     * @return
     */
	HttpResult login(String username, String password);

    /**
     * token登录
     * @param token
     * @return
     */
    HttpResult loginToken(String token);

    /**
     * 游客登录
     * @param deviceId
     * @return
     */
    HttpResult guestLogin(String deviceId);

    /**
     * fb登录
     * @param fid
     * @param fName
     * @return
     */
    HttpResult facebookLogin(String fid,String fName);

    /**
     * 发送重置密码邮件
     * @param username
     * @return
     */
    HttpResult sendResetPwdEmail(String username);
	
	/**
	 * 绑定成平台账号
	 */
	HttpResult bindForEO(String userName,  String pwd);
	
	
	/**
	 * 绑定成fb账号
	 */
	HttpResult bindForFacebook(String fid, String fbName);
	
	/**
	 * 注册
	 * @param username
	 * @param pwd
	 * @return
	 */
	HttpResult regist(String username, String pwd);
	
	/**
	 * 获取支付渠道
	 * @return
	 */
	HttpResult getPayChannels(String userId,String roleLevel);

    /**
     * 下单。
     * @param roleInfo
     * @param payInfo
     * @return
     */
    HttpResult createPayOrder(String userId,EORoleInfo roleInfo,EOPayInfo payInfo);

    /**
     * 支付成功后，验证订单。
     * @return
     */
    HttpResult verifyPayOrder(String userID,String orderId,String productID,String repateData,String signData);

    /**
     *
     * @param map
     * @return
     */
    HttpResult sendLog(int logType,Map<String,String>map);

    /**
     * 获取fb好友的平台id。（包括自己）
     * @param jsonFidArray
     * @return
     */
    HttpResult getUserIdsForFacebookIds(String jsonFidArray);

	/**
	 * 获取支付档位品项
	 * @return
	 */
	HttpResult getPayItems(String payChannel,String currencyCode);
}
