package com.eogame.model;

import org.json.JSONObject;

/** 
 * 账户信息实体类
 * @author  wujunfeng
 * @date 创建时间：2016-10-19 下午2:08:22 
 * @version 1.0   
 */
public class EOAccountEntity extends EOBaseObject {
	
	public static String FB_TYPE = "fb";
	public static String EO_TYPE = "eo";
	public static String GUEST_TYPE = "guest";

    public static String ACCOUNT_SPACE = " ";
    public static String ACCOUNT_EMPTY = "";
    public static String ACCOUNT_TAB = "\t";

	public String username;
	public String timestamp;
	public String token;
	public String userId;
	public String userType;

	public EOAccountEntity(){
		
	}
	
	public EOAccountEntity(String username, String token){
		this.username = username;
		this.token = token;
	}

	public EOAccountEntity setToken(String token) {
		this.token = token;
		return this;
	}

	public EOAccountEntity setUserId(String uersId) {
		this.userId = uersId;
		return this;
	}


	public EOAccountEntity setUsername(String username) {
		this.username = username;
		return this;
	}

	public EOAccountEntity setTimestamp(String timestamp) {
		this.timestamp = timestamp;
		return this;
	}

	public static EOAccountEntity getEntityFromJson(JSONObject json) {
		EOAccountEntity entity = new EOAccountEntity();

		if (json.optString("uid") != null) {
			entity.setUserId(json.optString("uid"));
		}

		if (json.optString("tk") != null) {
			entity.setToken(json.optString("tk"));
		}

		if (json.optString("ln") != null) {
			entity.setUsername(json.optString("ln"));
		}
		
		if(json.optString("ut") != null)
		{
			entity.setUserType(json.optString("ut"));
		}

		return entity;
	}

	public static EOAccountEntity getEntityFromJson(JSONObject json, String pwd) {
		EOAccountEntity entity = getEntityFromJson(json);
		return entity;
	}

	@Override
	public boolean equals(Object paramObject) {
		return false;
	}

	@Override
	public int hashCode() {
		return 0;
	}

	public String getUserType() {
		return userType;
	}

	public EOAccountEntity setUserType(String userType) {
		this.userType = userType;
        return this;
	}

	@Override
	public String toString() {
		return "EOAccountEntity [username=" + username + ", timestamp="
				+ timestamp + ", token=" + token + ", userId=" + userId
				+ ", usertype =" + userType + "]";
	}

}
