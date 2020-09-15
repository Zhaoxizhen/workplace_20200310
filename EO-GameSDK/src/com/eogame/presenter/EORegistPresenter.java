package com.eogame.presenter;

import android.app.Activity;
import android.widget.EditText;

import com.eogame.activity.EOAccountActivity;
import com.eogame.base.BasePresenter;
import com.eogame.constants.MessageCode;
import com.eogame.listener.EOLoginEvent;
import com.eogame.model.HttpResult;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.UserSession;
import com.eogame.utils.AccountUtils;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.AppflyerUtil;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOAccountViewContainer;
import com.eogame.utils.EOThread;
import com.eogame.utils.Util;
import com.eogame.web.EOWebApiImpl;

/**
 * 注册相关界面逻辑处理类
 * 
 * @author wujunfeng
 * @date 创建时间：2016-10-19 下午4:20:15
 * @version 1.0
 */
public class EORegistPresenter extends BasePresenter {

	public EORegistPresenter(Activity context, UserSession session) {
		super(context,session);
		initView();
	}

	@Override
	protected void initData() {
	}

    @Override
    public void onDestory() {
    }

    private void initView() {

	}

	@Override
	protected void dealMessage(Object obj,int what) {
		switch (what) {
		case MessageCode.CODE_REGIST_RESULT:
			//邮箱注册结果处理
			HttpResult registByEmailResult = (HttpResult)obj;
			if(registByEmailResult.getCode() == HttpResult.CODE_SUCCESS){
				EOAccountEntity entity = (EOAccountEntity) registByEmailResult.getObj();
				mUserSession.addAccount(entity);
				AppflyerUtil.getInstance().register(mUserSession.getCurrentUserId());
				EOLogPresenter.getInstance().sendLogin(mUserSession.getCurrentUserId());
                EOLoginEvent.onLoginSuccess(entity.userId,entity.token,entity.username);
                mContext.finish();
			}else{
				EOLoginEvent.onLoginError(registByEmailResult.getMessage());
				Util.showToast(mContext, registByEmailResult.getMessage());
			}
			break;
		default:
			break;
		}
	}
	

	/**
	 * 邮箱注册
	 */
	public void registByEmail(EditText mRegisterEmailEt, EditText mRegisterPwd, EditText mRegisterRePwd) {
		final String email = mRegisterEmailEt.getText().toString();
		final String pwd = mRegisterPwd.getText().toString();
		final String repwd = mRegisterRePwd.getText().toString();
		if(!AccountUtils.checkUsername(mContext, mRegisterEmailEt)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_email_error"));
			return;
		}
		if(!AccountUtils.checkPassword(mContext, mRegisterPwd)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_pwd_error"));
			return;
		}
		if(pwd == null || !pwd.equals(repwd)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_error_regist_pwd_no_some"));
            return;
        }

		EOThread thread = new EOThread(){
			@Override
			public void run() {
				AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
				HttpResult result = EOWebApiImpl.instance().regist(email, pwd);
				AndroidUtils.closeProgress(mContext);
				if (isDestory()) {
					return;
				}
				sendMsg(result, MessageCode.CODE_REGIST_RESULT);
			}
		};
		thread.start();
	}
}