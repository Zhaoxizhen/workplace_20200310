package com.eogame.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.style.UnderlineSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.eogame.base.BasePage;
import com.eogame.constants.EOCommon;
import com.eogame.facebook.FacebookHelper;
import com.eogame.model.EOAccountEntity;
import com.eogame.presenter.EOBindPresenter;
import com.eogame.presenter.EOSDKPresenter;
import com.eogame.utils.PreferenceUtils;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.ScreenUtils;
import com.eogame.utils.Util;

/**
 * Created by john on 2017/11/15.
 */

public class EOUserCenterActivity extends BasePage {

    private EOBindPresenter bindPresenter;

    private View userCenterView;
    private View csView;
    private View bindView;

    //客服中心页面。
    private TextView mUserName;
    private ImageView mCloseView;
    private ImageView mLogoutView;

    private TextView mEOUserName;
    private ImageView mEONameLine;
    private ImageView mEOBindView;

    private TextView mFacebookUserName;
    private ImageView mFbNameLine;
    private ImageView mFbBindView;

    private Button mCsBtn;

    private LinearLayout eoNameLayout;
    private LinearLayout fbNameLayout;

    //客服界面
    private ImageView mCsCloseView;
    private TextView mCsEmail;
    private TextView mFacebookFans;

//    private LinearLayout emailLayout;
//    private LinearLayout fbFansLayout;

    private ImageView  bindBackbtn;
    private EditText bindEmailEt;
    private EditText bindPwdEt;
    private EditText bindRepwdEt;
    private Button     bindBt;

    public void bindEOSuccess(){
        bindView.setVisibility(View.GONE);
        userCenterView.setVisibility(View.VISIBLE);
        showEOType();
    }

    public void bindFacebookSuccess(){
        showFbType();
    }

    @Override
    protected void onClick(View v, int id) {
        if(id == mCloseView.getId()){
            this.finish();
        }else if(id == mCsBtn.getId()){
            userCenterView.setVisibility(View.INVISIBLE);
            csView.setVisibility(View.VISIBLE);
        }else if(id == mLogoutView.getId()){
            //调用登出
            EOSDKPresenter.instance().logout(mContext);
            mContext.finish();
        }else if(id == mEOBindView.getId()){
            bindView.setVisibility(View.VISIBLE);
            userCenterView.setVisibility(View.INVISIBLE);
        }else if(id == mFbBindView.getId()){
            // 调用fb登录	
        		bindPresenter.bindFacebookAccount();

        }else if(id == mCsEmail.getId()){
            //调用发送邮件
            Intent intent = new Intent(Intent.ACTION_SEND);
            intent.setType("plain/text");
            intent.putExtra(Intent.EXTRA_EMAIL,new String[]{EOCommon.serviceEmail});
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            try {
                startActivity(intent);
            }catch (Exception e ){
                Util.showToast(mContext,ResourceUtil.getString(mContext,"eo_no_install_email"));
            }

        }else if(id == mFacebookFans.getId()){
            //转跳fb粉丝页
            Uri uri = Uri.parse(EOCommon.serviceFbFans);
            Intent intent = new Intent(Intent.ACTION_VIEW,uri);
            startActivity(intent);

        }else if(id == mCsCloseView.getId()){
            csView.setVisibility(View.INVISIBLE);
            userCenterView.setVisibility(View.VISIBLE);
        }else if(id == bindBackbtn.getId()) {
        		bindView.setVisibility(View.INVISIBLE);
            userCenterView.setVisibility(View.VISIBLE);
        }
    }

    @Override
    protected void initData() {
        bindPresenter = new EOBindPresenter(mContext,mUserSession);
        String userType = mUserSession.getCurrentUserType();
        if(EOAccountEntity.FB_TYPE.equals(userType)){
            showFbType();
        }else if(EOAccountEntity.GUEST_TYPE.equals(userType)){
            showGuestType();
        }else{
            showEOType();
        }
        mCsEmail.setPaintFlags(mCsEmail.getPaintFlags() |   Paint.UNDERLINE_TEXT_FLAG);
        mFacebookFans.setPaintFlags(mFacebookFans.getPaintFlags() |   Paint.UNDERLINE_TEXT_FLAG);
        mCsEmail.setText(EOCommon.serviceEmail);
        mFacebookFans.setText(EOCommon.serviceFbFans);
//        setTextViewLine(mCsEmail, EOCommon.serviceEmail);
//        setTextViewLine(mFacebookFans, EOCommon.serviceFbFans);
    }

    @SuppressLint("NewApi")
	@Override
    protected void initListener() {
        mFacebookFans.setOnClickListener(this);
        mCsEmail.setOnClickListener(this);
        mCsCloseView.setOnClickListener(this);

        mCsBtn.setOnClickListener(this);
        mEOBindView.setOnClickListener(this);
        mFbBindView.setOnClickListener(this);
        mLogoutView.setOnClickListener(this);
        mCloseView.setOnClickListener(this);

        bindRepwdEt.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if(actionId == EditorInfo.IME_ACTION_DONE){
                    // 调用绑定接口进行绑定。

                }
                return false;
            }
        });
        bindBackbtn.setOnClickListener(this);
        bindBt.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                bindPresenter.bindEOAccount(bindEmailEt,bindPwdEt,bindRepwdEt);
            }
        });//TODO 绑定按钮
        bindBt.setText(ResourceUtil.getStringId(this,"eo_bind"));
    }

    @Override
    protected void initView() {
        FrameLayout frameLayout = new FrameLayout(this);
        setContentView(frameLayout);
        csView = View.inflate(this,ResourceUtil.getLayoutId(this,"eo_customer_service_layout"),null);
        csView.setVisibility(View.INVISIBLE);
        frameLayout.addView(csView);

        bindView = View.inflate(this,ResourceUtil.getLayoutId(this,"eo_sign_up_layout"),null);
        bindView.setVisibility(View.GONE);
        frameLayout.addView(bindView);

        userCenterView = View.inflate(this,ResourceUtil.getLayoutId(this,"eo_user_center_layout"),null);
        userCenterView.setVisibility(View.VISIBLE);
        frameLayout.addView(userCenterView);
        
        ScreenUtils.autoScaleView(this, bindView.findViewById(ResourceUtil.getViewId(mContext, "eo_sign_up_root")));
        ScreenUtils.autoScaleView(this, userCenterView.findViewById(ResourceUtil.getViewId(mContext, "eo_user_center_root")));
        ScreenUtils.autoScaleView(this, csView.findViewById(ResourceUtil.getViewId(mContext, "eo_user_center_root")));

        mCloseView = (ImageView) getView("eo_user_close_btn");
        mUserName = (TextView) getView("eo_user_center_user_name");
        mLogoutView = (ImageView) getView("eo_user_center_logout_iv");

        mEOUserName = (TextView) getView("eo_uc_email_text");
        mEOBindView = (ImageView) getView("eo_uc_email_bind");
        mEONameLine = (ImageView) getView("eo_uc_email_line");

        mFacebookUserName = (TextView) getView("eo_uc_fb_text");
        mFbBindView = (ImageView) getView("eo_uc_fb_bind");
        mFbNameLine = (ImageView) getView("eo_uc_fb_line");
        mCsBtn = (Button) getView("eo_uc_cs_btn");

        eoNameLayout = (LinearLayout) getView("eo_uc_name_layout_ll");
        fbNameLayout = (LinearLayout) getView("eo_uc_fb_layout_ll");

        mCsCloseView = (ImageView) getView("eo_cs_close_btn");
        mCsEmail = (TextView) getView("eo_cs_email_textview");
        mFacebookFans = (TextView) getView("eo_cs_fb_textview");

        bindBackbtn = (ImageView) getView("eo_sign_up_back_btn");
        bindEmailEt = (EditText) getView("eo_register_email_et");
        bindPwdEt = (EditText) getView("eo_register_pwd_et");
        setPasswordType(bindPwdEt);
        bindRepwdEt = (EditText) getView("eo_register_re_pwd_et");
        setPasswordType(bindRepwdEt);
        bindBt = (Button) getView("eo_sign_up_btn");

    }

    @Override
    protected void clear() {

    }

    private void showFbType(){
        String userName = mUserSession.getCurrentUserName();
        mUserName.setText(userName);
        eoNameLayout.setVisibility(View.INVISIBLE);
        fbNameLayout.setVisibility(View.VISIBLE);

        mFbNameLine.setVisibility(View.GONE);
        mFbBindView.setVisibility(View.INVISIBLE);
        mFacebookUserName.setVisibility(View.VISIBLE);
        mFacebookUserName.setText(userName);

    }

    private void showEOType(){
        String userName = mUserSession.getCurrentUserName();
        mUserName.setText(userName);
        eoNameLayout.setVisibility(View.VISIBLE);
        fbNameLayout.setVisibility(View.INVISIBLE);

        mEOUserName.setVisibility(View.VISIBLE);
        mEOUserName.setText(userName);
        mEONameLine.setVisibility(View.GONE);

        mEOBindView.setVisibility(View.INVISIBLE);
    }

    private void showGuestType(){
        String userName = mUserSession.getCurrentUserName();
        mUserName.setText(userName);

        eoNameLayout.setVisibility(View.VISIBLE);
        fbNameLayout.setVisibility(View.VISIBLE);

        mFbNameLine.setVisibility(View.VISIBLE);
        mFbBindView.setVisibility(View.VISIBLE);
        mFacebookUserName.setVisibility(View.GONE);

        mEOUserName.setVisibility(View.GONE);
        mEONameLine.setVisibility(View.VISIBLE);
        mEOBindView.setVisibility(View.VISIBLE);
    }
    
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    		super.onActivityResult(requestCode, resultCode, data);
    		FacebookHelper.getInstance().onActivityResult(requestCode, resultCode, data);
    }
    
    private void setPasswordType(EditText editText) {
		editText.setTypeface(Typeface.DEFAULT);
		editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
	}
    
    private void setTextViewLine(TextView textView,String text) {
	    	SpannableString content = new SpannableString(text);
	    	content.setSpan(new UnderlineSpan(), 0, content.length(), 0);
	    	textView.setText(content);
    }
}
