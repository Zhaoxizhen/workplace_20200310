package com.eogame.presenter;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;

import com.eogame.activity.EOPayActivity;
import com.eogame.constants.EOCommon;
import com.eogame.constants.EOConfig;
import com.eogame.constants.EODataHolder;
import com.eogame.http.HttpUtils;
import com.eogame.listener.InitCallback;
import com.eogame.listener.LoginCallback;
import com.eogame.listener.PayCallback;
import com.eogame.listener.EOLoginEvent;
import com.eogame.listener.EOPayEvent;
import com.eogame.model.HttpResult;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.model.UserSession;
import com.eogame.utils.AnimationUtil;
import com.eogame.utils.EOPackageUtils;
import com.eogame.utils.EOUpdateUtils;
import com.eogame.utils.Logger;
import com.eogame.utils.PageUtil;
import com.eogame.utils.PreferenceUtils;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOFloatViewUtil;
import com.eogame.utils.EOPermissionUtil;
import com.eogame.utils.EOThread;
import com.eogame.utils.ScreenUtils;
import com.eogame.web.EOWebApiImpl;
import com.kochava.base.Tracker;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;

/** 
 * @author  wujunfeng
 * @date 创建时间：2017-8-28 上午11:29:21 
 * @version 1.0   
 */
public class EOSDKPresenter {
	public static final String TAG = "EOSDKPresenter";
	public static Context mActivity;
	private static EOSDKPresenter instance;
	private boolean isInit = false;
	private boolean isLogging = false;
	private boolean isLogined = true;//TODO 默认false才对
	private EOFloatViewUtil mFloatViewUtil;
	private EOUpdateUtils mUpdateUtil;

	public static EOSDKPresenter instance() {
		if (instance == null) {
			instance = new EOSDKPresenter();
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
	 * 初始化之前的操作，如权限申请等
	 * @param context
	 * @param config
	 * @param initCallback
	 */
	public void prepareInit(final Context context, EOConfig config, InitCallback initCallback) {//TODO 申请权限以适配6.0及以上系统,包括安装权限等
		EODataHolder.mContext = context;
		EODataHolder.mConfig = config;
		EODataHolder.mInitCallback = initCallback;
		ResourceUtil.init(context.getApplicationContext());
		if(!EOPermissionUtil.checkPermission(getActivity(context),Manifest.permission.READ_PHONE_STATE)){
			//申请权限READ_PHONE_STATE
			EOPermissionUtil.requestPermission(getActivity(context),Manifest.permission.READ_PHONE_STATE, EOPermissionUtil.READ_PHONE_STATE);
			return;
		}
//		if(!SGPermissionUtil.checkDrawOverlays(getActivity(context))){
//			//申请权限SYSTEM_ALERT_WINDOW,用于悬浮窗显示,此权限需特殊处理
//			AndroidUtils.showAFPermissionTips(getActivity(context), new SGTipsDialog.SGTipsListener() {
//
//				@Override
//				public void onContinueClick() {
//					//玩家选择前往设置
//					Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION, Uri.parse("package:" + getActivity(context).getPackageName()));
//					getActivity(context).startActivityForResult(intent, SGPermissionUtil.SYSTEM_ALERT_WINDOW);
//				}
//
//				@Override
//				public void onCancelClick() {
//					//用户拒绝后不显示悬浮窗
//					SGDataHolder.mConfig.setFloatViewLocation(SGConfig.FLOAT_HIDE);
//				}
//			});
//			return;
//		}
		init(context, EODataHolder.mConfig, EODataHolder.mInitCallback);
	}

	/**
	 * 检查更新 若返回10000 则开始后台下载
	 */
	public void update(final Context context){//TODO 实现更新功能 需后端添加接口
		EOThread thread = new EOThread() {
			@Override
			public void run() {
				if(isInit == true){//TODO true 下载测试
					Looper.prepare();
					new AlertDialog.Builder(context).setTitle("发现新版本!").setMessage("是否开始下载新版本？")
							.setPositiveButton("確定", new DialogInterface.OnClickListener() {
								@Override
								public void onClick(DialogInterface dialog, int which) {
									EOUpdateUtils.checkDownloadManagerEnable(context);
									String testApkUrl = "http://www.eohfun.com/EODemo-release-origin.apk";//TODO 使用配置文件进行配置更新地址
									String testTitle = "testApk";//更新包标题
									String testDesc = "downloadTestApk";//更新包描述
									EOUpdateUtils.downloadApk(context,testApkUrl,testTitle,testDesc);
								}
							}).show();
					Looper.loop();
					return;
				}
				HttpResult result = EOWebApiImpl.instance().checkUpdate();
				final String apkUrl;
				final String title;
				final String desc;
				if (isDestory()) {
					return;
				}
				if (result.getCode() == HttpResult.CODE_SUCCESS) {
					JSONObject jsonData = result.getmJsonData();
					try {
						apkUrl = jsonData.getString("apkUrl");
						title = jsonData.getString("title");
						desc = jsonData.getString("desc");//最新版本的版本号
						if(EOPackageUtils.getVersionCode(context)<Integer.parseInt(desc)){//TODO 本地版本低于最新版本
							Looper.prepare();
							new AlertDialog.Builder(context).setTitle("发现新版本!").setMessage("是否开始下载新版本？")
									.setPositiveButton("確定", new DialogInterface.OnClickListener() {
										@Override
										public void onClick(DialogInterface dialog, int which) {
											EOUpdateUtils.checkDownloadManagerEnable(context);
											EOUpdateUtils.downloadApk(context,apkUrl,title,desc);
										}
									}).show();
							Looper.loop();
						}
					} catch (JSONException e) {
						e.printStackTrace();
					}
				}else{
					Toast.makeText(context,"未发现更新",Toast.LENGTH_SHORT);
				}
			}
		};
		thread.start();
	}

	/**
	 * 初始化
	 *
	 * @param context
	 * @param config
	 * @param initCallback
	 */
	public void init(final Context context, final EOConfig config, final InitCallback initCallback) {
		mActivity = context;
		if (config == null) {
			if (initCallback != null) {
				initCallback.onError("config is null in EOSDK init().");
			}
			return;
		}
		if (TextUtils.isEmpty(config.getGameCode().trim()) || TextUtils.isEmpty(config.getGameKey().trim())) {
			initCallback.onError("gameCode or gameNmae is empty.");
		}
		try {
			EOCommon.init(context, config);
			HttpUtils.setContext(context.getApplicationContext());
			initServiceInfo();
			ScreenUtils.calculateViewSize(context);
//			bindService(context);
			isInit = true;
			initCallback.onSuccess();
		} catch (Exception e) {
			e.printStackTrace();
			initCallback.onError("init with exception.");
		}
//		try {//初始化后自动更新一次
//			update(context);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}

	/**
	 * 登录之前的操作
	 * @param context
	 * @param loginCallback
	 */
	public void prepareLogin(Context context, LoginCallback loginCallback) {
		EODataHolder.mContext = context;
		EODataHolder.mLoginCallback = loginCallback;
//		if(!SGPermissionUtil.checkPermission(getActivity(context), Manifest.permission.READ_SMS) ||
//				!SGPermissionUtil.checkPermission(getActivity(context), Manifest.permission.RECEIVE_SMS)){
//			//没有短信权限，进行申请
//			SGPermissionUtil.requestPermission(getActivity(context),new String[]{Manifest.permission.READ_SMS,Manifest.permission.RECEIVE_SMS}, SGPermissionUtil.SMS);
//		}else{
			login(context, loginCallback);
//		}
	}

	/**
	 * 登录
	 *
	 * @param context
	 * @param loginCallback
	 */
	public void login(final Context context, final LoginCallback loginCallback) {
		mActivity = context;
		if (!isInit) {
			loginCallback.onError("Call init first.");
			return;
		}


		if (isLogging) {
			return;
		}
		try {
			EOLoginEvent.setListener(context, new EOLoginEvent.LoginEventListener() {

				@Override
				public void onSuccess(String token) {
					isLogined = true;
					isLogging = false;
					loginCallback.onSuccess(token);
				}

				@Override
				public void onCancle() {
					isLogging = false;
					loginCallback.onCancle();
				}

				@Override
				public void onError(String errorMsg) {
					isLogging = false;
					loginCallback.onError(errorMsg);
				}

				@Override
				public void onLogout() {
					isLogined = false;
					loginCallback.onLogout();
				}
			});
			//TODO 在此对服务器发起请求，得到允许登陆返回值后才跳转登录，否则弹出公告窗口
			EOThread thread = new EOThread(){
				@Override
				public void run() {
					String data = EOWebApiImpl.instance().getNotice();
					final String title;
					final String content;
					int loginStatus;
					int noticeStatus;
					final int version;
					final int comparetype;

					if(data == null){
						Logger.getInstance().d("260","jsonData is null");
						return;
					}

					if("".equals(data)){
						PageUtil.jump2Login(context);//暂无公告
					}else{
						try {
							JSONObject jsonData = new JSONObject(data);
							title = jsonData.getString("title");
							content = jsonData.getString("content");
							loginStatus = jsonData.getInt("loginStatus");
							noticeStatus = jsonData.getInt("noticeStatus");
							version = jsonData.getInt("version");
							comparetype = jsonData.getInt("comparetype");
							if(comparetype == 0){
								if(EOPackageUtils.getVersionCode(context) <= version){
									if(loginStatus == 1 && noticeStatus == 1){//显示公告 可以登陆
										Looper.prepare();
										new AlertDialog.Builder(context).setTitle(title).setMessage(content)
												.setPositiveButton("確定", new DialogInterface.OnClickListener() {
													@Override
													public void onClick(DialogInterface dialog, int which) {
														PageUtil.jump2Login(context);//允许登陆
													}
												}).setCancelable(true).show();//显示公告
										Looper.loop();
									}else if(loginStatus == 0 && noticeStatus == 1){//显示公告 不可登录
										Looper.prepare();
										new AlertDialog.Builder(context).setTitle(title).setMessage(content)
												.setPositiveButton("確定", new DialogInterface.OnClickListener() {
													@Override
													public void onClick(DialogInterface dialog, int which) {
														return;//禁止登陆
													}
												}).setCancelable(false).show();//显示公告
										Looper.loop();
									}else{
										PageUtil.jump2Login(context);
										return;//其他情况 不显示公告 允许登陆
									}
								}
								PageUtil.jump2Login(context);//其余情况直接登录
							}else{
								if(EOPackageUtils.getVersionCode(context) >= version){
									if(loginStatus == 1 && noticeStatus == 1){//显示公告 可以登陆
										Looper.prepare();
										new AlertDialog.Builder(context).setTitle(title).setMessage(content)
												.setPositiveButton("確定", new DialogInterface.OnClickListener() {
													@Override
													public void onClick(DialogInterface dialog, int which) {
														PageUtil.jump2Login(context);//允许登陆
													}
												}).setCancelable(true).show();//显示公告
										Looper.loop();
									}else if(loginStatus == 0 && noticeStatus == 1){//显示公告 不可登录
										Looper.prepare();
										new AlertDialog.Builder(context).setTitle(title).setMessage(content)
												.setPositiveButton("確定", new DialogInterface.OnClickListener() {
													@Override
													public void onClick(DialogInterface dialog, int which) {
														return;//禁止登陆
													}
												}).setCancelable(false).show();//显示公告
										Looper.loop();
									}else{
										PageUtil.jump2Login(context);//其他情况 不显示公告 允许登陆
										return;
									}
								}
								PageUtil.jump2Login(context);//其余情况直接登录
							}
						} catch (JSONException e) {
							e.printStackTrace();
						}
					}
				}
			};
			thread.start();
		} catch (Exception e) {
			e.printStackTrace();
			isLogging = false;
			isLogined = false;
			loginCallback.onError("login with exception.");
		}
	}

	/**
	 * 支付
	 *
	 * @param context
	 * @param payInfo
	 * @param payCallback
	 */
	public void pay(final Context context,final EORoleInfo roleInfo, final EOPayInfo payInfo, final PayCallback payCallback) {
		try {
			if (!isLogined) {
				payCallback.onError("Call EOSDK.login first.");
				return;
			}
			mActivity = context;
			EOPayActivity.mPayCallback = payCallback;
			PageUtil.jump2Pay(context,roleInfo, payInfo);
			EOPayEvent.setListener(context, new EOPayEvent.PayEventListener() {
				@Override
				public void onSuccess(String afOrderId) {
					Tracker.sendEvent(new Tracker.Event(Tracker.EVENT_TYPE_PURCHASE)
							.setPrice(payInfo.getPrice()/100)
							.setName(payInfo.getProductName())
							.setUserId(roleInfo.getRoleId())
							.setCurrency(payInfo.getCurrencyCode())
							.setContentId(payInfo.getProductId()));
					payCallback.onSuccess(afOrderId);
				}

				@Override
				public void onCancle() {
					payCallback.onCancle();
				}

				@Override
				public void onError(String errorMsg) {
					payCallback.onError(errorMsg);
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 注销
	 */
	public void logout(Context context) {
		if (!isLogined) {
			EOLoginEvent.onLogout();
			return;
		}
		mActivity = context;
		try {
			UserSession.getInstance().cleanCurrent();
			isLogined = false;
			EOLoginEvent.onLogout();
            PreferenceUtils.instance().setIsSwitchLogin();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 设置悬浮窗显示位置
	 * @param location
	 */
	public void setFloatLocation(int location){
		mFloatViewUtil.setLocation(location);
	}

	/**
	 * 打开用户中心
	 * @param context
	 */
	public void openUserCenter(Context context){
		if (!isLogined) {
			Log.w("EOSDK", "login please");
			return;
		}
		mActivity = context;
		PageUtil.jump2UserCenter(context);
	}

	/**
	 * 获取当前登录的账号信息
	 * @return
	 */
	private EOAccountEntity getCurrentUser(){
		EOAccountEntity entity;
		entity = UserSession.getInstance().getCurrentUserInfo();
		if(TextUtils.isEmpty(entity.token)){
			//token为空，判断当前为未登录状态
			return null;
		}
		return entity;
	}

	/**
	 * 释放数据
	 */
	public void destroy(Context cx) {
		if (!isInit) {
			return;
		}
		isLogined = false;
	}

	/**
	 * 初始化服务信息
	 */
	private void initServiceInfo() {
		EOThread thread = new EOThread() {
			@Override
			public void run() {
				HttpResult result = EOWebApiImpl.instance().init();
				if (isDestory()) {
					return;
				}
				if (result.getCode() == HttpResult.CODE_SUCCESS) {
					JSONObject jsonData = result.getmJsonData();
					try {
						EOCommon.serviceFbFans = jsonData.getString("fu");
						EOCommon.serviceEmail = jsonData.getString("csemail");
					} catch (JSONException e) {
						e.printStackTrace();
					}
				}
			}
		};
		thread.start();
	}
	
	/**
	 * 显示欢迎回来界面
	 * @param context
	 */
	private void showWelcome(Context context) {
		if(context instanceof Activity)
			AnimationUtil.startWelcomeAnimation((Activity)context,UserSession.getInstance().currentUsername);
	}

	/**
	 * 处理acitivity的onActivityResult回调，目前用于6.0及以上版本悬浮窗权限申请
	 * @param requestCode
	 * @param resultCode
	 * @param data
	 */
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if(requestCode == EOPermissionUtil.SYSTEM_ALERT_WINDOW){
			if(!EOPermissionUtil.checkDrawOverlays(getActivity(mActivity))){
				//如果还是没有悬浮窗权限，则认为用户拒绝
//				SGDataHolder.mConfig.setFloatViewLocation(SGConfig.FLOAT_HIDE);
			}
		}
	}

	private Activity getActivity(Context context){
		return (Activity)context;
	}

	/**
	 * 处理权限回调结果。
	 * @param requestCode
	 * @param permissions
	 * @param grantResults
	 */
	public void onRequestPermissionsResult(int requestCode,String[] permissions, int[] grantResults) {
		switch (requestCode) {
		case EOPermissionUtil.READ_PHONE_STATE:
			if(grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED){
				instance.init(EODataHolder.mContext, EODataHolder.mConfig, EODataHolder.mInitCallback);
			}else{
				EODataHolder.mInitCallback.onError(ResourceUtil.getInstance().getString("eo_user_denied_permission"));
			}
			break;
		case EOPermissionUtil.SMS:
			instance.login(EODataHolder.mContext, EODataHolder.mLoginCallback);
			break;
		default:
			break;
		}
	}
}
