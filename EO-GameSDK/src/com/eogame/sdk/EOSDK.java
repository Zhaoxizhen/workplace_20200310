package com.eogame.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;

import java.io.FileNotFoundException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.eo.games.sdk.R;
import com.eogame.activity.EOWebViewActivity;
import com.eogame.constants.EOCommon;
import com.eogame.constants.EOConfig;
import com.eogame.facebook.FacebookHelper;
import com.eogame.listener.FacebookFriendsApi;
import com.eogame.listener.FacebookShareApi;
import com.eogame.listener.InitCallback;
import com.eogame.listener.LoginCallback;
import com.eogame.listener.PayCallback;
import com.eogame.model.HttpResult;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.EOFacebookFriendsEntity;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.model.UserSession;
import com.eogame.presenter.EOLogPresenter;
import com.eogame.presenter.EOSDKPresenter;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.AppflyerUtil;
import com.eogame.utils.ImageFilePath;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOThread;
import com.eogame.web.EOWebApiImpl;
import com.kochava.base.Tracker;


/**
 * SDK开放接口
 *
 * @version 1.0
 * @date 创建时间：2016-10-19 下午8:11:09
 */
public class EOSDK {

	public static final String TAG = "EOSDK";
	private static EOSDK instance;
	
	private static EOSDKPresenter mPresenter;
	
	private EOSDK() {
	}
	
	/**
	 * 获取EOSDK单例类。
	 * @return
	 */
	public static EOSDK getInstance() {
		if (instance == null) {
			instance = new EOSDK();
			mPresenter = EOSDKPresenter.instance();
		}
		return instance;
	}

	/**
	 * @param roleInfo
	 */
	private void setRoleInfo(EORoleInfo roleInfo) {
		UserSession.getInstance().setRoleInfo(roleInfo);
	}

	/**
	 * 检查更新 旧版本可不用
	 */
	public void update(Activity context){
		mPresenter.update(context);
		return;
	}
	/**
	 * 初始化
	 *
	 * @param context
	 * @param config
	 * @param initCallback
	 */
	public void init(Activity context, EOConfig config, InitCallback initCallback) {
		if (context == null) {
			if (initCallback != null) {
				initCallback.onError("context is null in EOSDK init().");
			}
			return;
		}
		String language = getSystemLanguage(context);//根据系统语言切换SDK语言
		config.setGameLanguage(language);
		instance.setGameLanguage(context,language);

		AndroidUtils.setLanguage(context, config.getGameLanguage());
		mPresenter.prepareInit(context,config,initCallback);
		//TODO kochava tracker SDK初始化时接入kochava第三方监控
		String GUID = context.getResources().getString(R.string.kochava_app_guid);
		Log.d("kochava","start");
		Tracker.configure(new Tracker.Configuration(context.getApplicationContext()).setAppGuid(GUID));
		Log.d("kochava","end");
		AppflyerUtil.getInstance().startTrack(context);
		FacebookHelper.init(context);
		EOLogPresenter.getInstance().sendInit();
	}

	/**
	 * 获取系统语言 中文简体 中文繁体 英文
	 * @param context
	 * @return
	 */
	private String getSystemLanguage(Context context){
		Locale locale = context.getResources().getConfiguration().locale;
		String language = locale.getLanguage();
		String local = Locale.getDefault().toString();
		if(language.equals("zh")){
			if(local.equals("zh_CN")){
				return "zh-cn";
			}
			return "zh-hk";
		}
		return "en-us";
	}
	/**
	 * 登录
	 *
	 * @param context
	 * @param loginCallback
	 */
	public void login(Context context, LoginCallback loginCallback) {
		mPresenter.login(context, loginCallback);
	}

	/**
	 * 支付
	 *
	 * @param context
	 * @param payInfo
	 * @param payCallback
	 */
	public void pay(final Context context,final EORoleInfo roleInfo, final EOPayInfo payInfo, final PayCallback payCallback) {
		//TODO 接入Google支付
		mPresenter.pay(context, roleInfo,payInfo, payCallback);
	}

	/**
	 * 注销
	 */
	public void logout(Context context) {
		mPresenter.logout(context);
	}
	
	/**
	 * 设置SDK使用的语言。
	 * @param language
	 */
	public void setGameLanguage(Activity activity, String language) {
		AndroidUtils.setLanguage(activity, language);
	}
	
	/**
	 * 获取facebook好友列表
	 * @param context
	 * @param callback
	 */
	public void getFacebookFriends(final Activity context,final FacebookFriendsApi callback) {
		if(EOAccountEntity.FB_TYPE.equals(UserSession.getInstance().getCurrentUserType())) {
			FacebookHelper.getInstance().getFacebookFriendsInfo(context, new FacebookFriendsApi() {
				
				@Override
				public void getFriendsSuccess(final List<EOFacebookFriendsEntity> friends) {
					AndroidUtils.showProgress(context, ResourceUtil.getString(context, "eo_loading"), false);
					JSONArray array = new JSONArray();
					for(EOFacebookFriendsEntity entity : friends) {
						try {
							array.put(new JSONObject("{\"fid\":\""+entity.userId+"\"}"));
						} catch (JSONException e) {
							e.printStackTrace();
						}
					}
					if(array.length() > 0) {
						final String jsonArray = array.toString();
						EOThread thread = new EOThread() {
							public void run() {
								AndroidUtils.showProgress(context, "", ResourceUtil.getString(context, "eo_loading"), false, false, this);
								HttpResult httpResult =EOWebApiImpl.instance().getUserIdsForFacebookIds(jsonArray);
								AndroidUtils.closeProgress(context);
								if (isDestory()) {
									return;
								}
								if(httpResult.getCode() == HttpResult.CODE_SUCCESS) {
									
									JSONArray friendsArray;
									List<EOFacebookFriendsEntity> userFriends = new ArrayList<EOFacebookFriendsEntity>();
									try {
										friendsArray = httpResult.getmJsonData().getJSONArray("data");
										for(int i =0; i < friendsArray.length(); i++) {
											int uid = friendsArray.getJSONObject(i).getInt("uid");
											String fid = friendsArray.getJSONObject(i).getString("fid");
											for(EOFacebookFriendsEntity entity: friends) {
												if(entity.userId.equals(fid)) {
													friends.remove(entity);
													entity.userId = uid+"";
													userFriends.add(entity);
													break;
												}
											}
										}
										if(userFriends.size() > 0) {
											callback.getFriendsSuccess(userFriends);
										}else {
											callback.getFriendsFail("no friends in game");
										}
									} catch (JSONException e) {
										e.printStackTrace();
										callback.getFriendsFail("data error");
									}
									
								}else {
									callback.getFriendsFail(httpResult.getMessage());
								}
							};
						};
						thread.start();
					}else {
						callback.getFriendsFail("no have friends");
					}
				}
				
				@Override
				public void getFriendsFail(String msg) {
					callback.getFriendsFail(msg);
				}
			});
		}else {
			callback.getFriendsFail("user is no facebook user");
		}
		
	}

	/**
	 * LINE分享文字或链接
	 * @param activity
	 * @param content
	 */
	public void shareTextToLine(Activity activity, String content){
		String scheme = "line://msg/text/"+content;
		Uri uri = Uri.parse(scheme);
		activity.startActivity(new Intent(Intent.ACTION_VIEW,uri));
	}

	/**
	 * LINE分享当前屏幕截图
	 * @param activity
	 * @param imageUri
	 */
	public void shareImageToLine(Activity activity,String imageUri){
		activity.getWindow().getDecorView().setDrawingCacheEnabled(true);
		Bitmap bitmap = activity.getWindow().getDecorView().getDrawingCache();
		Uri uri = Uri.parse(MediaStore.Images.Media.insertImage(activity.getContentResolver(), bitmap, null, null));

		String scheme ="line://msg/image/"+ ImageFilePath.getPath(activity,uri);

		activity.startActivity(new Intent(Intent.ACTION_VIEW,Uri.parse(scheme)));


	}

	/**
	 * facebook分享功能
	 * @param activity
	 * @param callback
	 */
	public void shareFacebook(Activity activity,FacebookShareApi callback) {
		FacebookHelper.getInstance().facebookShare(activity, callback);
	}
	

	/**
	 * 打开用户中心
	 * @param context
	 */
	public void openUserCenter(Context context){
		mPresenter.openUserCenter(context);
	}

	
	/**
	 * 进入游戏日志
	 * @param roleInfo
	 */
	public void entryGame(EORoleInfo roleInfo) {
		Tracker.sendEvent(new Tracker.Event(Tracker.EVENT_TYPE_REGISTRATION_COMPLETE)
				.setUserId(roleInfo.getRoleId())
				.setUserName(roleInfo.getRoleName()));
		UserSession.getInstance().setRoleInfo(roleInfo);
		EOLogPresenter.getInstance().sendEntryGame(UserSession.getInstance().getCurrentUserId(), roleInfo);
	}
	
	/**
	 * 创角日志
	 * @param roleInfo
	 */
	public void createRoleGame(EORoleInfo roleInfo) {
		EOLogPresenter.getInstance().sendCreateRole(UserSession.getInstance().getCurrentUserId(),roleInfo);
	}
	
	/**
	 * 释放数据
	 */
	public void destroy(Context cx) {
		EOLogPresenter.getInstance().sendQuitGame(UserSession.getInstance().getCurrentUserId(), UserSession.getInstance().getRoleInfo());
		mPresenter.destroy(cx);
	}

	/**
	 * 安卓6.0及以上时，权限处理回调。
	 * @param requestCode
	 * @param permissions
	 * @param grantResults
	 */
	public void onRequestPermissionsResult(int requestCode,String[] permissions, int[] grantResults){
		mPresenter.onRequestPermissionsResult(requestCode, permissions, grantResults);
	}
	
	/**
	 * 回调activityResult
	 * @param requestCode
	 * @param resultCode
	 * @param data
	 */
	public void onActivityResult(int requestCode, int resultCode, Intent data){
		mPresenter.onActivityResult(requestCode,resultCode,data);
		FacebookHelper.getInstance().onActivityResult(requestCode, resultCode, data);

	}
	
	public void onApplicationCreate(Application app) {
		AppflyerUtil.getInstance().init(app);
	}
	
	public void onConfiggurationChanged(Context context,Configuration newConfig) {
		AndroidUtils.setLanguage(context, EOCommon.gameLanguage);
	}

}
