package com.eogame.activity;

import java.util.ArrayList;

import com.eogame.base.BasePage;
import com.eogame.constants.EOCommon;
import com.eogame.facebook.FacebookHelper;
import com.eogame.listener.EOLoginEvent;
import com.eogame.model.EOAccountEntity;
import com.eogame.presenter.EOLoginPresenter;
import com.eogame.presenter.EORegistPresenter;
import com.eogame.utils.PageUtil;
import com.eogame.utils.PreferenceUtils;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOAccountViewContainer;


import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.text.InputType;
import android.text.SpannableString;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * @author wujunfeng
 * @date 创建时间：2016-10-18 下午4:26:23
 * @version 1.0
 */
public class EOAccountActivity extends BasePage {
	private EOAccountViewContainer mContainer;
	//presenter实现类
	private EOLoginPresenter mLoginPresenter;
	private EORegistPresenter mRegistPresenter;
	//登录部分控件
	private EditText mLoginUsernameEt;
	private EditText mLoginPasswordEt;
	private Button mLoginContactServiceBt;
	private Button mLoginForgetBt;
	private Button mLoginLoginBt;
    private CheckBox mLoginEyesBt;
	private Button mLoginGuestBt;
	//使用Facebook登录按钮
	//private com.facebook.login.widget.LoginButton mLoginFbBt;
	private Button mLoginFbBt;

	private Button mLoginRegisterBt;
    //切换账号部分控件
	private LinearLayout mUerListLl;
	private Button mSwitchLoginBt;
	private TextView mSwitchUsernameTv;
    private ImageView mSwitchMoreIv;
	private LinearLayout mSwitchOtherLl;
    //自动登录部分控件
	private TextView mAutoLoginTv;
    private Button   mAutoSwitchBt;
    private ImageView mAutoLoadingIv;
	//注册部分控件
	private EditText mRegistEmailEt;
	private EditText mRegistPwdEt;
    private EditText mRegistRepwdEt;
	private Button mRegistBt;
    private ImageView mRegistBackBt;
	//重置密码部分控件
	private Button mResetEmailBt;
	private EditText mResetEmailEt;
    private ImageView mSendEmailBackBt;

	@Override
	protected void initView() {
		mContainer = new EOAccountViewContainer(this);
		//初始化容器
		mContainer.initContainer(this);
		//进行屏幕适配
		mContainer.scaleViews(this);
		//查找控件
		findViews();
		//初始化PreferenceUtils
		PreferenceUtils.instance(mContext);
	}

	private void findViews() {
		// 登录部分
		mLoginUsernameEt = (EditText) getView("eo_login_username_et");
		mLoginPasswordEt = (EditText) getView("eo_login_password_et");
		setPasswordType(mLoginPasswordEt);
        mLoginEyesBt  = (CheckBox) getView("eo_pwd_eyes_btn");
		mLoginContactServiceBt = (Button) getView("eo_login_custom_service_btn");
		mLoginForgetBt = (Button) getView("eo_login_forget_btn");
		mLoginLoginBt = (Button) getView("eo_login_btn");
		mLoginGuestBt = (Button) getView("eo_login_guest_btn");
		mLoginRegisterBt = (Button) getView("eo_login_register_btn");
        mLoginFbBt = (Button) getView("eo_login_fb_btn");
        //切换账号部分
		mUerListLl = (LinearLayout) getView("eo_switch_login_record_list_ll");
		mSwitchLoginBt = (Button) getView("eo_swith_login_btn");
		mSwitchOtherLl = (LinearLayout) getView("eo_switch_other_ll");
		mSwitchUsernameTv = (TextView) getView("eo_swith_login_username_et");
        mSwitchMoreIv = (ImageView) getView("eo_switch_login_record_list_bt");
        //自动登录部分
        mAutoLoginTv = (TextView) getView("eo_auto_text");
        mAutoSwitchBt = (Button) getView("eo_auto_login_switch_btn");
        mAutoLoadingIv = (ImageView) getView("eo_auto_login_loading_iv");
        if(mAutoLoadingIv != null){
            RotateAnimation rotateAnimation =new RotateAnimation(0f,360f, Animation.RELATIVE_TO_SELF,0.5f,Animation.RELATIVE_TO_SELF,0.5f);
            rotateAnimation.setDuration(1500);
            rotateAnimation.setInterpolator(new LinearInterpolator());
            rotateAnimation.setRepeatCount(1000);
            rotateAnimation.setRepeatMode(Animation.RESTART);
            mAutoLoadingIv.startAnimation(rotateAnimation);
        }
		//注册部分
		mRegistEmailEt = (EditText) getView("eo_register_email_et");
		mRegistPwdEt = (EditText) getView("eo_register_pwd_et");
		setPasswordType(mRegistPwdEt);
		mRegistRepwdEt = (EditText) getView("eo_register_re_pwd_et");
		setPasswordType(mRegistRepwdEt);
		mRegistBt = (Button) getView("eo_sign_up_btn");
        mRegistBackBt = (ImageView) getView("eo_sign_up_back_btn");
		//重置密码部分
		mResetEmailBt = (Button) getView("eo_send_email_bt");
		mResetEmailEt = (EditText) getView("eo_send_email_et");
        mSendEmailBackBt = (ImageView) getView("eo_send_email_back_btn");
	}

	@Override
	protected void initData() {
		ArrayList<EOAccountEntity> loginRecordList = mUserSession.buildAccountInfos(mContext.getApplication());
		if(loginRecordList.size()>=1){
			String username = loginRecordList.get(0).username;
			mAutoLoginTv.setText(username);
            mSwitchUsernameTv.setText(username);
		}


		// 登录部分
		mLoginPresenter = new EOLoginPresenter(mContext, mContainer,mUserSession);
		mRegistPresenter = new EORegistPresenter(mContext,mUserSession);
		//绑定按钮是否可用到相关编辑框
		mLoginPresenter.bindBtn2EtContent(mLoginLoginBt, mLoginUsernameEt,mLoginPasswordEt);
        mLoginPresenter.bindBtn2EtContent(mResetEmailBt,mResetEmailEt,null);
        //绑定
        mRegistPresenter.bindBtn2EtContent(mRegistBt, mRegistEmailEt, mRegistPwdEt,mRegistRepwdEt);
		mLoginPresenter.removeSpaceOnNoFocus(mLoginUsernameEt);
		mLoginPresenter.trimOnNoFocus(mLoginPasswordEt);
		//自动选择所显示的登录界面
		mContainer.autoShow(this);
		mRegistBt.setText(ResourceUtil.getStringId(this,"eo_sign_up"));
		
		SpannableString content = new SpannableString(mLoginForgetBt.getText());
		content.setSpan(new UnderlineSpan(), 0, content.length(), 0);
		mLoginForgetBt.setText(content);
	}

	@SuppressLint("NewApi")
	@Override
	protected void initListener() {
		// 登录部分
        mLoginUsernameEt.setOnClickListener(this);
        mLoginPasswordEt.setOnClickListener(this);
		mLoginContactServiceBt.setOnClickListener(this);
		mLoginForgetBt.setOnClickListener(this);
		mLoginLoginBt.setOnClickListener(this);
		mLoginGuestBt.setOnClickListener(this);
		mLoginFbBt.setOnClickListener(this);
        mLoginRegisterBt.setOnClickListener(this);

        mLoginPasswordEt.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if(actionId == EditorInfo.IME_ACTION_DONE){
                    mLoginPresenter.login(mLoginUsernameEt,mLoginPasswordEt);
                    return true;
                }
                return false;
            }
        });

        mLoginEyesBt.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @SuppressLint("NewApi")
			@Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                if(isChecked){
                    mLoginPasswordEt.setInputType(EditorInfo.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD);
                }else{
                    mLoginPasswordEt.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);
                }
            }
        });

		mUerListLl.setOnClickListener(this);
		mSwitchLoginBt.setOnClickListener(this);
		mSwitchOtherLl.setOnClickListener(this);

		mAutoSwitchBt.setOnClickListener(this);

		//注册部分
		mRegistEmailEt.setOnClickListener(this);
		mRegistPwdEt.setOnClickListener(this);
		mRegistRepwdEt.setOnClickListener(this);
		mRegistBt.setOnClickListener(this);
        mRegistBackBt.setOnClickListener(this);
        mRegistRepwdEt.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if(actionId == EditorInfo.IME_ACTION_DONE){
                    mRegistPresenter.registByEmail(mRegistEmailEt,mRegistPwdEt,mRegistRepwdEt);
                    return true;
                }
                return false;
            }
        });

		//重置密码部分
		mResetEmailBt.setOnClickListener(this);
		mResetEmailEt.setOnClickListener(this);
        mSendEmailBackBt.setOnClickListener(this);
        mResetEmailEt.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if(actionId == EditorInfo.IME_ACTION_DONE){
                    mLoginPresenter.sendResetPwdEmail(mResetEmailEt);
                    return true;
                }
                return false;
            }
        });

	}

	@Override
	protected void clear() {
		mLoginUsernameEt.setText("");
		mLoginPasswordEt.setText("");
	}

	public void onClick(View v,int id) {
		// 登录部分
		if (id == ResourceUtil.getViewId(mContext,"eo_login_btn")) {
			// 登录按钮-无记录
			mLoginPresenter.login(mLoginUsernameEt,mLoginPasswordEt);
		} else if (id == ResourceUtil.getViewId(mContext,"eo_login_forget_btn")) {
			// 无法登录，跳转发送重置邮件页面
			mLoginPresenter.showResetEmail();
		} else if (id == ResourceUtil.getViewId(mContext, "eo_login_guest_btn")) {
			// 游客登录
			mLoginPresenter.guestLogin();
		} else if (id == ResourceUtil.getViewId(mContext, "eo_login_register_btn")) {
			// 邮箱注册
			mLoginPresenter.registFromEmail();
		}else if (id == ResourceUtil.getViewId(mContext,"eo_switch_login_record_list_ll")) {
			// 帐号下拉列表
			mLoginPresenter.showUserList(mUerListLl,mSwitchUsernameTv,mSwitchMoreIv);
		}else if (id == ResourceUtil.getViewId(mContext,"eo_swith_login_btn")) {
			// 登录按钮-有记录
			mLoginPresenter.loginUseRecord();
		}else if(id == ResourceUtil.getViewId(mContext,"eo_login_fb_btn")){
			// facebook 登录。
            mLoginPresenter.loginWithFacebook();
		}else if(id == ResourceUtil.getViewId(mContext,"eo_auto_login_switch_btn")){
            mLoginPresenter.loginSwitch();
        }else if(id == ResourceUtil.getViewId(mContext,"eo_send_email_back_btn")){
            //重置密码界面返回
            mContainer.backToPre();
        }else if(id == ResourceUtil.getViewId(mContext,"eo_sign_up_back_btn")){
            //注册界面返回。
            mContainer.backToPre();
        }else if(id == ResourceUtil.getViewId(mContext,"eo_switch_other_ll")){
            //切换账号界面点南其它登录
            mContainer.showFirstLogin();
        }else if(id == ResourceUtil.getViewId(mContext,"eo_sign_up_btn")){
            mRegistPresenter.registByEmail(mRegistEmailEt,mRegistPwdEt,mRegistRepwdEt);
        }else if(id == ResourceUtil.getViewId(mContext, "eo_send_email_bt")) {
        		mLoginPresenter.sendResetPwdEmail(mResetEmailEt);
        }else if(id == ResourceUtil.getViewId(mContext,"eo_login_custom_service_btn")) {
			//跳转客服粉丝页
			Uri uri = Uri.parse(EOCommon.customService);
			Intent intent = new Intent(Intent.ACTION_VIEW,uri);
			startActivity(intent);
		}
	}

	public void autoLoginEndTime(){
	    mAutoSwitchBt.setEnabled(false);
	    mLoginPresenter.loginUseRecord();
    }

	/**
	 * 设置指定View的显示状态
	 */
	public void setViewVisible(String id, int visible){
		View view = (View) getView(id);
		view.setVisibility(visible);
	}

	/**
	 * 设置EditText显示内容
	 * @param id
	 * @param content
	 */
	public void setEditTextContent(String id,String content){
		EditText editText = (EditText) getView(id);
		if(editText != null){
			editText.setText(content);
		}
	}

	/**
	 * 设置TextView显示内容
	 * @param id
	 * @param content
	 */
	public void setTextViewContent(String id,String content){
		TextView textView = (TextView) getView(id);
		if(textView != null){
			textView.setText(content);
		}
	}

	/**
	 * 获取指定id的EditText中的内容
	 * @param id
	 * @return
	 */
	public String getEditTextContent(String id){
		EditText editText = (EditText) getView(id);
		String content = "";
		if(editText != null){
			content = editText.getText().toString();
		}
		return content;
	}

	/**
	 * 获取指定id的TextView中的内容
	 * @param id
	 * @return
	 */
	public String getTextViewContent(String id){
		TextView textView = (TextView) getView(id);
		String content = "";
		if(textView != null){
			content = textView.getText().toString();
		}
		return content;
	}

	/**
	 * 设置某个view获取焦点
	 * @param id
	 */
	public void setViewFocus(String id){
		View view = (View) getView(id);
		if(view != null){
			view.requestFocus();
		}
	}

	@Override
	protected void onDestroy() {
		mRegistPresenter.onDestory();
		mContainer.cancelTimer();
		super.onDestroy();
	}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		FacebookHelper.getInstance().onActivityResult(requestCode, resultCode, data);
		super.onActivityResult(requestCode, resultCode, data);
	}

	@Override
	public void onBackPressed() {
		String currentView = mContainer.getCurrentView();
		if(currentView.equals(EOAccountViewContainer.KEY_FRIST_LOGIN) || currentView.equals(EOAccountViewContainer.KEY_LOGIN_AUTO)){
			if(!EOCommon.backPressedInvalid){
				EOLoginEvent.onLoginCancle();
				super.onBackPressed();
			}else{
				return;
			}
		}
	}
	
	/**
	 * 自动登录
	 */
	public void autoLogin() {
		mLoginPresenter.loginUseRecord();
	}
	
	
	private void setPasswordType(EditText editText) {
//		editText.setInputType(InputType.TYPE_TEXT_VARIATION_VISIBLE_PASSWORD);
//		editText.setTypeface(Typeface.DEFAULT);
//		editText.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
		editText.setTypeface(Typeface.DEFAULT);
		editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
	}
	
}
