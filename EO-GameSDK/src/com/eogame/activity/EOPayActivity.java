package com.eogame.activity;

import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.eogame.base.BasePage;
import com.eogame.crypto.DES;
import com.eogame.listener.PayCallback;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.model.UserSession;
import com.eogame.presenter.EOPayPresenter;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.ScreenUtils;


/**
 * @author wujunfeng
 * @date 创建时间：2016-10-27 上午11:27:10
 * @version 1.0
 */
public class EOPayActivity extends BasePage {//Basepage类继承Activity类 Basepage的onCreate方法按顺序执行抽象方法initView();initListener();initData();
	
	public static EOPayActivity instance;

	private ImageView mCloseIv;
	private TextView mRoleNameTv;
	private TextView mAccountNameTv;

	private LinearLayout mGoogleLl;
	private LinearLayout mOtherLl;//google包的SDK隐藏其他充值渠道的按钮
	private LinearLayout mWebLl;//We段充值渠道

	private EOPayPresenter mPayPresenter;
	private EOPayInfo mPayInfo;
	private EORoleInfo mRoleInfo;
	public static PayCallback mPayCallback;
	
	@Override
	protected void initData() {
		instance = this;

		Logger.getInstance().e("eopayinit","start");
        mPayInfo = (EOPayInfo) getIntent().getSerializableExtra("payInfo");
        mRoleInfo = (EORoleInfo) getIntent().getSerializableExtra("roleInfo");
        mUserSession.setRoleInfo(mRoleInfo);
        mRoleNameTv.setText(mRoleInfo.getRoleName());
        mPayPresenter = new EOPayPresenter(mContext,UserSession.getInstance(),mRoleInfo,mPayInfo);
        mPayPresenter.doQueryPayWay(mGoogleLl,mOtherLl);//查询支付渠道
		Logger.getInstance().e("eopayinit","success");
	}

	@Override
	protected void initListener() {
	    mCloseIv.setOnClickListener(this);
	    mGoogleLl.setOnClickListener(this);
	    mOtherLl.setOnClickListener(this);
	}

	@Override
	protected void initView() {
        View rootView = getLayout("eo_pay_channel_layout");
        rootView.setVisibility(View.VISIBLE);
		setContentView(rootView);
		ScreenUtils.autoScaleView(this, rootView.findViewById(ResourceUtil.getViewId(mContext, "eo_pay_channel_root")));
        mCloseIv = (ImageView) getView("eo_pay_close_btn");
        mAccountNameTv = (TextView) getView("eo_pay_account_name");
        mRoleNameTv  =  (TextView) getView("eo_pay_role_name");
        try {
            mAccountNameTv.setText(mUserSession.getCurrentUserName());
        } catch (Exception e) {
            e.printStackTrace();
        }

        mGoogleLl = (LinearLayout) getView("eo_pay_google_ll");
        mOtherLl = (LinearLayout) getView("eo_pay_other_ll");
	}

	@Override
	protected void clear() {
	}

	public void onClick(View v,int id) {
        if (id == ResourceUtil.getViewId(this, "eo_pay_close_btn")) {
			mPayPresenter.onPayCancle();
		} else if(id == ResourceUtil.getViewId(mContext, "eo_pay_google_ll")){
            // TODO 调用google 支付
            mPayPresenter.GooglePay();
        }else if(id == ResourceUtil.getViewId(mContext,"eo_pay_other_ll")){
		    //调用web 支付。
        		mPayPresenter.jumpToWebPay();
        }
	}

	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent intentData) {
		mPayPresenter.onActivityResult(requestCode,resultCode,intentData);
	}
	
	@Override
	public void onBackPressed() {
		mPayPresenter.onPayCancle();
	}
	

	public void setViewVisible(String resName, int visible){
		((View)getView(resName)).setVisibility(visible);
	}
}
