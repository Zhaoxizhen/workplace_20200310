package com.eogame.listener;

import java.util.List;

import com.eogame.model.EOFacebookFriendsEntity;

public interface FacebookFriendsApi {
	public void getFriendsSuccess(List<EOFacebookFriendsEntity> friends);
	public void getFriendsFail(String msg);
	
}
