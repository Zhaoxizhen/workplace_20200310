package com.eogame.facebook;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.CountDownTimer;

import com.eogame.listener.FacebookFriendsApi;
import com.eogame.listener.FacebookLoginApi;
import com.eogame.listener.FacebookShareApi;
import com.eogame.model.EOFacebookFriendsEntity;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.facebook.FacebookSdk;
import com.facebook.CallbackManager;
import com.facebook.login.*;
import com.facebook.*;
import com.facebook.share.model.*;
import com.facebook.share.widget.*;
import com.facebook.share.Sharer;
import com.facebook.share.Sharer.Result;
import com.facebook.appevents.AppEventsLogger;


import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Created by john on 2017/11/15.
 */

public class FacebookHelper {

	private static FacebookHelper instance;

	private CallbackManager callbackManager;
	
	private FacebookHelper() {
	}

	public static void init(Context mContext) {
		if (instance == null) {
			instance = new FacebookHelper();
		}
		instance.callbackManager = CallbackManager.Factory.create();
		FacebookSdk.sdkInitialize(mContext.getApplicationContext());
		FacebookSdk.isDebugEnabled();

	}

	public static FacebookHelper getInstance() {
		return instance;
	}

	/**
	 * facebook登录
	 * @param context
	 * @param mustShowUI
	 * @param callback
	 */
	public void loginFacebook(Activity context, boolean mustShowUI, final FacebookLoginApi callback) {
		if (callback == null)
			return;
		Logger.getInstance().d("eo", "login with facebook");
		if (mustShowUI || AccessToken.getCurrentAccessToken() == null) {
			LoginManager.getInstance().logOut();
			LoginManager.getInstance().registerCallback(callbackManager, new FacebookCallback<LoginResult>() {
				@Override
				public void onSuccess(LoginResult loginResult) {
					getFacebookUserInfo(loginResult.getAccessToken(), callback);
				}

				@Override
				public void onCancel() {
					callback.loginCancel();
				}

				@Override
				public void onError(FacebookException e) {
					callback.loginFail(e.getLocalizedMessage());
				}
			});
			//LoginManager.getInstance().logInWithReadPermissions(context,Arrays.asList("public_profile", "user_about_me", "user_friends"));//TODO 设置可用权限 user_about_me不可用
			LoginManager.getInstance().logInWithReadPermissions(context,Arrays.asList("public_profile"));
		} else {
			getFacebookUserInfo(AccessToken.getCurrentAccessToken(), callback);
		}
	}

	@SuppressLint("NewApi")
	public void getFacebookFriendsInfo(final Activity context, final FacebookFriendsApi callback) {
		if (callback == null)
			return;
//		AndroidUtils.showProgress(context, ResourceUtil.getString(context, "eo_loading"), true);
		loginFacebook(context, false, new FacebookLoginApi() {

			@Override
			public void loginSuccess(String fbId, String fbName, String headImg) {
				AndroidUtils.closeProgress(context);
				final List<EOFacebookFriendsEntity> friendsList = new ArrayList<EOFacebookFriendsEntity>();
				friendsList.add(new EOFacebookFriendsEntity(fbId, fbName, headImg));

				GraphRequest request = new GraphRequest(AccessToken.getCurrentAccessToken(),
						"me/friends?fields=id,name,picture", null, HttpMethod.GET);
				request.setCallback(new GraphRequest.Callback() {

					@Override
					public void onCompleted(GraphResponse graphResponse) {
						AndroidUtils.closeProgress(context);
						if (graphResponse.getError() != null) {
							callback.getFriendsFail(graphResponse.getError().getErrorMessage());
							return;
						}
						JSONObject data = graphResponse.getJSONObject();
						try {
							JSONArray fJsonArray = data.getJSONArray("data");
							for (int i = 0; i < fJsonArray.length(); i++) {
								JSONObject fJsonObject = fJsonArray.getJSONObject(i);
								friendsList.add(new EOFacebookFriendsEntity(fJsonObject.getString("id"),
										fJsonObject.getString("name"),
										fJsonObject.getJSONObject("picture").getJSONObject("data").getString("url")));
							}
						} catch (Exception e) {
							e.printStackTrace();
						} finally {
							callback.getFriendsSuccess(friendsList);
						}

					}
				});
				request.executeAsync();
			}

			@Override
			public void loginFail(String msg) {
				AndroidUtils.closeProgress(context);
				callback.getFriendsFail(msg);
			}

			@Override
			public void loginCancel() {
				AndroidUtils.closeProgress(context);
				callback.getFriendsFail("user cancel");
			}
		});
	}

	public void facebookShare(Activity context,final FacebookShareApi callback) {

		try {
			ShareLinkContent content = new ShareLinkContent.Builder()
					.setContentUrl(Uri.parse(ResourceUtil.getString(context, "eo_fb_share_url")))
					.build();
			ShareDialog shareDialog = new ShareDialog(context);
			shareDialog.registerCallback(callbackManager, new FacebookCallback<Sharer.Result>() {
				
				@Override
				public void onSuccess(Result result) {
					callback.shareSuccess();
				}
				
				@Override
				public void onError(FacebookException error) {
					callback.shareFail();
				}
				
				@Override
				public void onCancel() {
					callback.shareCancel();
				}
			});
			shareDialog.show(content);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		callbackManager.onActivityResult(requestCode, resultCode, data);
	}
	
	private void getFacebookUserInfo(AccessToken token, final FacebookLoginApi callback) {
		Logger.getInstance().d("eo", "get login user info with facebook");
		GraphRequest request = new GraphRequest(token, "me?fields=id,name,picture", null, HttpMethod.GET);
		request.setCallback(new GraphRequest.Callback() {
			@Override
			public void onCompleted(GraphResponse graphResponse) {
				Logger.getInstance().e("eo",graphResponse.getJSONObject()+"");
				if (graphResponse.getError() != null) {
					callback.loginFail(graphResponse.getError().getErrorMessage());
					return;
				}
				JSONObject data = graphResponse.getJSONObject();
				try {
					callback.loginSuccess(data.getString("id"), data.getString("name"),
							data.getJSONObject("picture").getJSONObject("data").getString("url"));
				} catch (Exception e) {
					callback.loginFail("result data has error");
				}

			}
		});
		request.executeAsync();
	}
}