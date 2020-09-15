package com.eogame.presenter;

import android.app.Activity;
import android.widget.EditText;

import com.eogame.activity.EOUserCenterActivity;
import com.eogame.base.BasePresenter;
import com.eogame.constants.MessageCode;
import com.eogame.facebook.FacebookHelper;
import com.eogame.listener.FacebookLoginApi;
import com.eogame.model.HttpResult;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.UserSession;
import com.eogame.utils.AccountUtils;
import com.eogame.utils.AndroidUtils;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOThread;
import com.eogame.utils.Util;
import com.eogame.web.EOWebApiImpl;

/**
 * Created by john on 2017/11/15.
 */

public class EOBindPresenter extends BasePresenter {


    public EOBindPresenter(Activity context, UserSession session) {
        super(context, session);
    }
    
    /**
     * 绑定成平台账号
     * @param emailEt
     * @param pwdEt
     * @param rePwdEt
     */
    public void bindEOAccount(EditText emailEt,EditText pwdEt,EditText rePwdEt){
        final String email = emailEt.getText().toString();
        final String pwd = pwdEt.getText().toString();
        final String repwd = rePwdEt.getText().toString();
        if(!AccountUtils.checkUsername(mContext, emailEt)){
            Util.showToast(mContext, ResourceUtil.getInstance().getString("eo_email_error"));
            return;
        }
        if(!AccountUtils.checkPassword(mContext, pwdEt)){
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
                Logger.getInstance().d("BIND","start binding");
                HttpResult result = EOWebApiImpl.instance().bindForEO(email,pwd);
                Logger.getInstance().d("BIND","end binding");
                AndroidUtils.closeProgress(mContext);
                if (isDestory()) {
                    return;
                }
                sendMsg(result, MessageCode.CODE_BIND_SANDCLASS);
            }
        };
        thread.start();
    }
    
    /**
     * 绑定成facebook账号
     */
    public void bindFacebookAccount(){
    		Logger.getInstance().e("eo", "bind facebook account");
    		AndroidUtils.showProgress(mContext, ResourceUtil.getString(mContext, "eo_loading"), false);
    		FacebookHelper.getInstance().loginFacebook(mContext, true, new FacebookLoginApi() {
				@Override
				public void loginSuccess(final String fbId,final String fbName,final String headImg) {
					AndroidUtils.closeProgress(mContext);
					EOThread thread = new EOThread(){
			            @Override
			            public void run() {
			                AndroidUtils.showProgress(mContext, "",ResourceUtil.getString(mContext,"eo_loading"), false, false, this);
			                HttpResult result = EOWebApiImpl.instance().bindForFacebook(fbId,fbName);
			                AndroidUtils.closeProgress(mContext);
			                if (isDestory()) {
			                    return;
			                }
			                sendMsg(result, MessageCode.CODE_BIND_FACEBOOK);
			            }
			        };
			        thread.start();
				}
				
				@Override
				public void loginFail(String msg) {
					AndroidUtils.closeProgress(mContext);
					Util.showToast(mContext, msg);
				}
				
				@Override
				public void loginCancel() {
					AndroidUtils.closeProgress(mContext);
				}
			});
        
    }

    @Override
    protected void dealMessage(Object obj, int what) {
        HttpResult bindResult = (HttpResult)obj;
        Logger.getInstance().e("eo","json = "+bindResult.getmJsonData() + "\t msg="+bindResult.getMessage());
        if(bindResult.getCode() == HttpResult.CODE_SUCCESS){
            EOAccountEntity entity = (EOAccountEntity) bindResult.getObj();
            mUserSession.updateTime(entity);
            if(what == MessageCode.CODE_BIND_SANDCLASS){
                getActivity().bindEOSuccess();
                EOLogPresenter.getInstance().sendBind(UserSession.getInstance().getCurrentUserId());
            }else if(what == MessageCode.CODE_BIND_FACEBOOK){
                getActivity().bindFacebookSuccess();
                EOLogPresenter.getInstance().sendBind(UserSession.getInstance().getCurrentUserId());
            }

        }else{
            Util.showToast(mContext,bindResult.getMessage());
        }

    }

    @Override
    protected void initData() {

    }

    @Override
    public void onDestory() {

    }

    private EOUserCenterActivity getActivity(){
        return (EOUserCenterActivity)mContext;
    }
}
