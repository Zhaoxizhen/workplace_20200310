package com.eogame.presenter;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;

import com.eogame.activity.EOAccountActivity;
import com.eogame.base.BasePresenter;
import com.eogame.constants.MessageCode;
import com.eogame.facebook.FacebookHelper;
import com.eogame.listener.FacebookLoginApi;
import com.eogame.listener.EOLoginEvent;
import com.eogame.model.HttpResult;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.UserSession;
import com.eogame.model.Useradpter;
import com.eogame.utils.AccountUtils;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.Logger;
import com.eogame.utils.PreferenceUtils;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOAccountViewContainer;
import com.eogame.utils.EODeviceInfoUtil;
import com.eogame.utils.EOThread;
import com.eogame.utils.Util;
import com.eogame.web.EOWebApiImpl;
import com.eogame.widgets.EOTipsDialog;
import com.eogame.widgets.EOTipsListener;

import java.util.ArrayList;

/**
 * 登录相关界面逻辑处理类
 * 
 * @author wujunfeng
 * @date 创建时间：2016-10-19 下午4:19:51
 * @version 1.0
 */
public class EOLoginPresenter extends BasePresenter {
	// 此Presenter所用到的控件id统一定义常量于此，方便修改
	
	//其他登录登录界面帐号编辑et
	private String EO_LOGIN_USERNAME_ET = "eo_login_username_et";
	//其他登录方式界面中密码编辑et
	private String EO_LOGIN_PASSWORD_ET = "eo_login_password_et";
	//有记录登录界面的帐号列表指示箭头
	private String EO_LOGIN_LIST_UP = "eo_login_list_up";
	//有记录登录界面的帐号列表指示箭头
	private String EO_LOGIN_LIST_DOWN = "eo_login_list_down";

	private PopupWindow popSelectAccount;
	private ArrayList<EOAccountEntity> mLoginRecordList;
	private EOAccountViewContainer mContainer;
	private Useradpter userAdpter;
	private String currentUserName;
	
	public EOLoginPresenter(Activity context, EOAccountViewContainer container, UserSession session) {
		super(context,session);
		this.mContainer = container;
	}

	@Override
	protected void initData() {
		//初始化账户列表数据
		mLoginRecordList=mUserSession.buildAccountInfos(mContext.getApplication());
	}

	@Override
	protected void dealMessage(Object obj,int what) {
        switch(what) {
            case MessageCode.CODE_RESET_PWD_EMAIL_CODE:
                HttpResult sendEmailResult = (HttpResult)obj;
                if(sendEmailResult.getCode() == HttpResult.CODE_SUCCESS){
                    Util.showToast(mContext,ResourceUtil.getString(mContext, "eo_reset_email_success"));
                    mContainer.backToPre();
                }else{
                    Util.showToast(mContext,sendEmailResult.getMessage());
                }
                break;
            case MessageCode.CODE_LOGIN_GUEST:
            case MessageCode.CODE_LOGIN_USE_TOKEN:
            case MessageCode.CODE_LOGIN_NORMAL:
            case MessageCode.CODE_LOGIN_FACEBBOOK:
                dealLoginResult(what, obj);
                break;
        }

	}
	
	//处理登录结果。
	private void dealLoginResult(int type,Object obj){
		HttpResult loginResult = (HttpResult)obj;
		Logger.getInstance().d("eologintype","type:"+type);
		if(loginResult.getCode() == HttpResult.CODE_SUCCESS){
			EOAccountEntity entity = (EOAccountEntity) loginResult.getObj();
			if(type == MessageCode.CODE_LOGIN_GUEST){
				mUserSession.currentUsername = entity.username;

				UserSession.getInstance().addAccount(entity);
			}else if(type == MessageCode.CODE_LOGIN_USE_TOKEN){
				UserSession.getInstance().updateTime(entity);
			}else if(type == MessageCode.CODE_LOGIN_NORMAL){
				mUserSession.addAccount(entity);
			}else if(type == MessageCode.CODE_LOGIN_FACEBBOOK){
                mUserSession.addAccount(entity);
            }
			EOLoginEvent.onLoginSuccess(entity.userId, entity.token, entity.username);
			mContext.finish();

		}else{
			if(type == MessageCode.CODE_LOGIN_USE_TOKEN ){
				if(loginResult.getCode() == HttpResult.CODE_TOKEN_TIME_OUT) {
					mContainer.showFirstLogin();
					getActivity(mContext).setViewFocus(EO_LOGIN_USERNAME_ET);
//					Logger.getInstance().e("eo", "current user name = "+currentUserName);
					if(AccountUtils.checkUsername(currentUserName)){
//						Logger.getInstance().e("eo", "current user name = "+currentUserName);
						getActivity(mContext).setEditTextContent(EO_LOGIN_USERNAME_ET, currentUserName);
					}
				}else {
					mContainer.showSwitchLogin();
				}
			}
			Util.showToast(mContext, loginResult.getMessage());
			EOLoginEvent.onLoginError(loginResult.getMessage());
		}	
	}

	
	/**
	 * 进行登录回调
	 */
	public void doLoginCallback() {
		PreferenceUtils instance = PreferenceUtils.instance();
		String username = mUserSession.currentUsername;
		EOLoginEvent.onLoginSuccess(mUserSession.getCurrentUserId(), mUserSession.getCurrentToken(), username);
		
	}

	/**
	 * 登录
	 */
	public void login(EditText mLoginUsernameEt, EditText mLoginPasswordEt) {
		removeSpace(mLoginUsernameEt);
		final String username = mLoginUsernameEt.getText().toString();
		final String password = mLoginPasswordEt.getText().toString();
        if(!AccountUtils.checkUsername(mContext, mLoginUsernameEt)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_email_error"));
            return;
        }
        if(!AccountUtils.checkPassword(mContext, mLoginPasswordEt)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_pwd_error"));
            return;
        }
		EOThread thread = new EOThread(){
			@Override
			public void run() {
				AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
				HttpResult result = EOWebApiImpl.instance().login(username, password);
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				sendMsg(result, MessageCode.CODE_LOGIN_NORMAL);
			}
		};
		thread.start();
	}

	
	/**
	 * 游客登录之前的逻辑处理操作
	 */
	public void guestLogin(){
		boolean isShowTips = true;
		for(EOAccountEntity entity : mLoginRecordList){
			if(entity.userType.equals(EOAccountEntity.GUEST_TYPE)){
				isShowTips = false;
				break;
			}
		}
		if(isShowTips){
			EOTipsDialog tipsDialog = new EOTipsDialog(mContext);
			tipsDialog.setEOTipsListener(new EOTipsListener() {
				
				@Override
				public void onContinueClick() {
					checkWifiManagerBeforeLogin();
				}
				
				@Override
				public void onCancelClick() {
				}
			});
			tipsDialog.show();
		}else{
			checkWifiManagerBeforeLogin();
		}
	}
	
	private void checkWifiManagerBeforeLogin(){
		if(EODeviceInfoUtil.getMacAddress(mContext) == null){
			//WifiManager为空，提示用户打开wifi
			Builder builder = new Builder(mContext);
			builder.setMessage(mContext.getString(ResourceUtil.getStringId(mContext, "eo_layout_tip_open_wifi")));
			builder.setTitle(mContext.getString(ResourceUtil.getStringId(mContext, "eo_layout_tip_sys_title")));
			builder.setPositiveButton(mContext.getString(ResourceUtil.getStringId(mContext, "eo_layout_tip_goto_setting")),
					new OnClickListener() {
				@Override
				public void onClick(DialogInterface dialog, int which) {
					//前往设置
					getActivity(mContext).startActivity(new Intent(android.provider.Settings.ACTION_WIFI_SETTINGS));
				}
			});
			builder.setNegativeButton(mContext.getString(ResourceUtil.getStringId(mContext, "eo_layout_tip_cancel")),
					new OnClickListener() {
				
				@Override
				public void onClick(DialogInterface dialog, int which) {
				}
			});
			builder.setCancelable(false);
			builder.create().show();
		}else{
			localLogin();
		}
	}

	/**
	 * 游客登录
	 */
	private void localLogin() {
		EOThread thread = new EOThread(){
			@Override
			public void run() {
				AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
				HttpResult result = EOWebApiImpl.instance().guestLogin(EODeviceInfoUtil.getUUID(mContext));
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				sendMsg(result, MessageCode.CODE_LOGIN_GUEST);
			}
		};
		thread.start();
	}

	/**
	 * 邮箱注册
	 */
	public void registFromEmail() {
		mContainer.showRegistEmail();
	}


	/**
	 * 显示帐号下拉列表
	 * @param mLoginRecordListBt 
	 */
	@SuppressLint("NewApi")
	public void showUserList(LinearLayout mLoginRecordUsernameLl,TextView mLoginRecordUsernameEt, final ImageView mLoginRecordListBt) {
		if(mLoginRecordList.size()<1){
			return;
		}
		mLoginRecordListBt.setImageDrawable(mContext.getResources().getDrawable(ResourceUtil.getDrawableId(mContext, EO_LOGIN_LIST_UP)));
		UserSession.getInstance().buildAccountInfos(mContext.getApplication());
		ListView lv_account = Util.getListViewForUserAccount(mContext);
		popSelectAccount = new PopupWindow(lv_account,mLoginRecordUsernameLl.getMeasuredWidth(),LayoutParams.WRAP_CONTENT, true);
		popSelectAccount.setBackgroundDrawable(mContext.getResources().getDrawable(ResourceUtil.getDrawableId(mContext, "eo_login_userlist_shape")));
		popSelectAccount.showAsDropDown(mLoginRecordUsernameLl, 0, 0);
		popSelectAccount.setOutsideTouchable(true);	
		popSelectAccount.setOnDismissListener(new OnDismissListener() {
			@Override
			public void onDismiss() {
				mLoginRecordListBt.setImageDrawable(mContext.getResources().getDrawable(ResourceUtil.getDrawableId(mContext, EO_LOGIN_LIST_DOWN)));
			}
		});
		userAdpter = new Useradpter(mContext,mLoginRecordList, popSelectAccount, mLoginRecordUsernameEt,mLoginRecordListBt,mContainer);
		lv_account.setAdapter(userAdpter);
	}

	/**
	 * 使用账户记录登录
	 * 
	 * @param mLoginRecordUsernameTv
	 */
	public void loginUseRecord() {
		EOThread thread = new EOThread(){
			@Override
			public void run() {
				String userId ;
				if(userAdpter == null) {
					userId = mLoginRecordList.get(0).userId;
					currentUserName = mLoginRecordList.get(0).username;
				}else {
					userId = mLoginRecordList.get(Useradpter.getCurrentUserIndex()).userId;
					currentUserName =  mLoginRecordList.get(Useradpter.getCurrentUserIndex()).username;
				}
				AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
				EOAccountEntity entity = UserSession.getInstance().queryAccount(userId);
				HttpResult result = EOWebApiImpl.instance().loginToken(entity.token);
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				sendMsg(result, MessageCode.CODE_LOGIN_USE_TOKEN);
			}
		};
		thread.start();
	}
	
	/**
	 * facebook登录
	 */
	public void loginWithFacebook(){
		AndroidUtils.showProgress(mContext, ResourceUtil.getString(mContext, "eo_loading"), false);
		FacebookHelper.getInstance().loginFacebook(mContext, mContainer.isSwitch(), new FacebookLoginApi() {
			@Override
			public void loginSuccess(final String fbId,final  String fbName, final String headImg) {
				Logger.getInstance().d("eo", "getfacebook info success, fbId = "+fbId+"\t fbName="+fbName);
				AndroidUtils.closeProgress(mContext);
				EOThread thread  = new EOThread() {
					public void run() {
						AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
						HttpResult result = EOWebApiImpl.instance().facebookLogin(fbId, fbName);
						AndroidUtils.closeProgress(mContext);
						if (isDestory()) {
							return;
						}
						sendMsg(result, MessageCode.CODE_LOGIN_FACEBBOOK);
					};
				};
				thread.start();
			}

			@Override
			public void loginFail(String msg) {
				Logger.getInstance().d("eo","fb login fail, msg = "+msg);
				AndroidUtils.closeProgress(mContext);
				Util.showToast(mContext, msg);
			}

			@Override
			public void loginCancel() {
				Logger.getInstance().d("eo","fb login cancel");
				AndroidUtils.closeProgress(mContext);
			}
		});
	}
	
	/**
	 * 发送重置密码邮件
	 * @param mEmailEt
	 */
	public void sendResetPwdEmail(final EditText mEmailEt){
        if(!AccountUtils.checkUsername(mContext,mEmailEt)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_email_error"));
            return;
        }
        EOThread thread = new EOThread() {
            @Override
            public void run() {
                AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
                HttpResult result = EOWebApiImpl.instance().sendResetPwdEmail(mEmailEt.getText().toString().trim());
                AndroidUtils.closeProgress(mContext);
                if(isDestory()){
                    return;
                }
                sendMsg(result,MessageCode.CODE_RESET_PWD_EMAIL_CODE);
            }
        };
        thread.start();
    }

	/**
	 * 切换帐号登录
	 */
	public void loginSwitch() {
		mContainer.showSwitchLogin();
	}
	
	/**
	 * 转跳忘记密码界面。
	 */
	public void showResetEmail(){
        mContainer.showSendEmail();
    }
	
	/**
	 * 强转actvity为EOAccountActivity
	 * @param activity
	 * @return
	 */
	private EOAccountActivity getActivity(Activity activity){
		return (EOAccountActivity) activity;
	}

	@Override
	public void onDestory() {
		
	}
}