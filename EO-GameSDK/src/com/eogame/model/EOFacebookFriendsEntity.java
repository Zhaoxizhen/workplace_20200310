package com.eogame.model;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Facebook 好友实体类。
 */
public class EOFacebookFriendsEntity {
	public String userId;
	public String name;
	public String headImg;
	
	public EOFacebookFriendsEntity() {	
	}
	
	public EOFacebookFriendsEntity(String userId,String name,String headImg) {
		super();
		this.userId = userId;
		this.name = name;
		this.headImg = headImg;
	}
	
	public EOFacebookFriendsEntity jsonToEntity(JSONObject jsonObject) {
		try {
			return new EOFacebookFriendsEntity(jsonObject.getString("user_id"),jsonObject.getString("name"),jsonObject.getString("head_img"));
		} catch (JSONException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public String toString() {
		return "{ userId = "+userId+", name = "+name+", headImg = "+headImg+" }";
	}
}
