package com.eogame.listener;

import com.eogame.model.UserSession;
import com.eogame.presenter.EOLogPresenter;
import com.eogame.utils.AppflyerUtil;

import android.content.Context;


/**
 * 登录事件
 *
 * @author Malone
 */
public class EOLoginEvent {

	public static final String TAG = "EOLoginEvent";

	private static LoginEventListener mLoginEventListener;

	private static Context mContext;

	public static void setListener(Context context, LoginEventListener loginEventListener) {
		mLoginEventListener = loginEventListener;
		mContext = context;
	}

	public static void onLoginSuccess(final String userid, final String token, final String username) {
		if (mLoginEventListener != null){
			mLoginEventListener.onSuccess(token);
			EOLogPresenter.getInstance().sendLogin(UserSession.getInstance().getCurrentUserId());
			AppflyerUtil.getInstance().login(userid);
		}
	}

	public static void onLoginCancle() {
		if (mLoginEventListener != null){
			mLoginEventListener.onCancle();
//			TrackPresenter.getInstance().addCallbackLog(TrackPresenter.EType.LOGIN_EVENT,TrackPresenter.EStatus.FAIL);
		}
	}

	public static void onLoginError(final String errorMsg) {
		if (mLoginEventListener != null){
			mLoginEventListener.onError(errorMsg);
//			TrackPresenter.getInstance().addCallbackLog(TrackPresenter.EType.LOGIN_EVENT,TrackPresenter.EStatus.FAIL);
		}
	}

	public static void onLogout() {
		if (mLoginEventListener != null){
			mLoginEventListener.onLogout();
//			TrackPresenter.getInstance().addCallbackLog(TrackPresenter.EType.LOGIN_EVENT,TrackPresenter.EStatus.SUC);
		}
	}

//	public static void onSwitchAccount(final String userid, final String token, final String username) {
//		if (mLoginEventListener != null) {
//			mLoginEventListener.onSwitchAccount(userid, token, username);
////			TrackPresenter.getInstance().addCallbackLog(TrackPresenter.EType.LOGIN_EVENT,TrackPresenter.EStatus.SUC);
//		}
//	}

	public interface LoginEventListener {
		public void onSuccess(String token);

		public void onCancle();

		public void onError(String errorMsg);

		public void onLogout();

//		public void onSwitchAccount(String userid, String token, String username);
	}

}
