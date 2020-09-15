package com.eogame.utils;

import android.app.Activity;
import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;

import com.eogame.activity.EOAccountActivity;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.UserSession;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/** 
 * 登录界面容器
 * @author  wujunfeng
 * @date 创建时间：2016-10-18 下午4:53:24 
 * @version 1.0   
 */
public class EOAccountViewContainer {

	private ArrayList<EditText> mEtList = new ArrayList<EditText>();
	private boolean isSwitch = false;
	//KEY
	public static final String KEY_FRIST_LOGIN = "login_frist";
	public static final String KEY_LOGIN_AUTO = "login_auto";
	public static final String KEY_LOGIN_SWITCH = "login_switch";

	public static final String KEY_REGISTER_EMAIL = "register_email";
    public static final String KEY_SEND_EMAIL   = "send_email";

	private Context mContext;
	private ViewGroup mRootView;
	private String mCurrentView = KEY_FRIST_LOGIN;
	private HashMap<String, View> mViewMap = new HashMap<String, View>();
	private ArrayList<String> lineList = new ArrayList<String>();
	private CountDownTimer timer = null;
	
	private long tempTimestamp;

	public EOAccountViewContainer(Context context) {
		mContext = context;
		mRootView = new FrameLayout(mContext);
		setSwitchLogin(ResourceUtil.getLayoutId(context,"eo_switch_login_layout"))
		.setRegistEmail(ResourceUtil.getLayoutId(context,"eo_sign_up_layout"))
		.setAutoLogin(ResourceUtil.getLayoutId(context,"eo_auto_login_layout"))
        .setSendEmail(ResourceUtil.getLayoutId(context,"eo_send_email_layout"))
		.setFristLogin(ResourceUtil.getLayoutId(context,"eo_frist_login_layout"));
	}

	private void show(String key){
		View showView = mViewMap.get(key);
		View goneView = mViewMap.get(mCurrentView);
		if(showView == null || showView == goneView){
			//若将要显示和已被显示的界面相同，则不做任何操作
			//或者所传入的key未被查找到
			return;
		}
		lineList.add(key);
		showView.setVisibility(View.VISIBLE);
		goneView.setVisibility(View.INVISIBLE);
		hideKeyboard(showView);
		mCurrentView = key;
	}

	private void back(String key){
		//提交界面切换记录
		View showView = mViewMap.get(key);
		View goneView = mViewMap.get(mCurrentView);
		if(showView == null || showView == goneView){
			//若将要显示和已被显示的界面相同，则不做任何操作
			//或者所传入的key未被查找到
			return;
		}
		showView.setVisibility(View.VISIBLE);
		goneView.setVisibility(View.INVISIBLE);
		hideKeyboard(showView);
		mCurrentView = key;
	}

	public void showFirstLogin(){
		show(KEY_FRIST_LOGIN);
	}

	public void showAutoLogin(){
		show(KEY_LOGIN_AUTO);
	}

	public void showSwitchLogin() {
	    if(timer != null){
	        timer.cancel();
	        timer = null;
        }
		show(KEY_LOGIN_SWITCH);
	}


	public void showRegistEmail(){
		show(KEY_REGISTER_EMAIL);
	}


	public void showSendEmail(){
		show(KEY_SEND_EMAIL);
	}

	private EOAccountViewContainer setFristLogin(int layout){
		View view = View.inflate(mContext, layout, null);
		mViewMap.put(KEY_FRIST_LOGIN, view);
		return this;
	}

	private EOAccountViewContainer setAutoLogin(int layout){
		View view = View.inflate(mContext, layout, null);
		mViewMap.put(KEY_LOGIN_AUTO, view);
		return this;
	}

	public EOAccountViewContainer setSwitchLogin(int layout){
		View view = View.inflate(mContext, layout, null);
		mViewMap.put(KEY_LOGIN_SWITCH, view);
		return this;
	}

	private EOAccountViewContainer setRegistEmail(int layout){
		View view = View.inflate(mContext, layout, null);
		mViewMap.put(KEY_REGISTER_EMAIL, view);
		return this;
	}
	
	private EOAccountViewContainer setSendEmail(int layout){
		View view = View.inflate(mContext, layout, null);
		mViewMap.put(KEY_SEND_EMAIL, view);
		return this;
	}
	
	/**
	 * 初始化当前View容器。
	 * @param o
	 * @return
	 */
	public View initContainer(Object o){
		Collection<View> views = mViewMap.values();
		for(View view : views){
			view.setVisibility(View.GONE);
			mRootView.addView(view);
		}
        mViewMap.get(KEY_SEND_EMAIL).setVisibility(View.INVISIBLE);
		mViewMap.get(mCurrentView).setVisibility(View.VISIBLE);
		lineList.add(mCurrentView);
		if(o instanceof Activity){
			((Activity)o).setContentView(mRootView);
		}else{
			Logger.getInstance().w("EOSDK","Container is not add to activity");
		}
		
		tempTimestamp = System.currentTimeMillis()/1000;
		return mRootView;
	}
	
	/**设置当前展示的view的key*/
	public void setCurrentView(String key){
		mCurrentView = key;
	}
	
	/**获取当前展示的view的key*/
	public String getCurrentView(){
		return mCurrentView;
	}

	/**根据传入的key返回相应的view*/
	public View getView(String key) {
		return mViewMap.get(key);
	}

	/**获取全部view*/
	public Collection<View> getViews(){
		Collection<View> views = mViewMap.values();
		return views;
	}
	
	//获取界面的rootView。
	private ArrayList<View> getRootViews(){
		ArrayList<View> list = new ArrayList<View>();
		list.add(getView(KEY_FRIST_LOGIN).findViewById(ResourceUtil.getViewId(mContext,"eo_frist_login_root")));
		list.add(getView(KEY_LOGIN_AUTO).findViewById(ResourceUtil.getViewId(mContext,"eo_auto_login_root")));
		list.add(getView(KEY_LOGIN_SWITCH).findViewById(ResourceUtil.getViewId(mContext,"eo_switch_login_root")));
		list.add(getView(KEY_REGISTER_EMAIL).findViewById(ResourceUtil.getViewId(mContext,"eo_sign_up_root")));
		list.add(getView(KEY_SEND_EMAIL).findViewById(ResourceUtil.getViewId(mContext,"eo_send_email_root")));
		for(View item : list){
			getEditText((ViewGroup) item);
		}
		return list;
	}

	/**
	 * 屏幕适配方法
	 */
	public void scaleViews(Activity activity){
		ArrayList<View> rootViews = getRootViews();
		for(View view :rootViews){
			ScreenUtils.autoScaleView(activity, view);
		}
	}

	/**
	 * 根据传入的延迟时间隐藏虚拟键盘
	 * 
	 * @param v
	 */
	public static void hideKeyboard(final View v){
		InputMethodManager imm = ( InputMethodManager ) v.getContext( ).getSystemService( Context.INPUT_METHOD_SERVICE );     
		if ( imm.isActive( ) ) {     
			imm.hideSoftInputFromWindow( v.getApplicationWindowToken( ) , 0 );   
		}
	}

	/**
	 * 根据是否存储有用户数据进行不同界面的显示
	 */
	public void autoShow(Activity activity){
		PreferenceUtils preference = PreferenceUtils.instance();
		isSwitch = preference.getIsSwitchLogin();
		if(isSwitch){
		    showSwitchLogin();
		    return;
        }
		ArrayList<EOAccountEntity> accountList = UserSession.getInstance().buildAccountInfos(activity.getApplication());
		if(accountList.isEmpty() || accountList == null){
			showFirstLogin();
		}else{
			showAutoLogin();
            timer = new CountDownTimer(2500,500) {
                @Override
                public void onTick(long millisUntilFinished) {
                }

                @Override
                public void onFinish() {
                    getActivity(mContext).autoLoginEndTime();
                    timer = null;
                }
            };
            timer.start();
		}
	}

	/**
	 * 返回上一界面
	 */
	public void backToPre(){
		lineList.remove(lineList.size()-1);
		String key = lineList.get(lineList.size()-1);
		for(EditText item : mEtList){
			//循环清空所有EditText的填写内容
			item.setText("");
		}
        back(key);
	}

	/**
	 * 清空所有编辑框中填写的内容
	 */
	public void clearAllEt(){
		for(EditText item : mEtList){
			//循环清空所有EditText的填写内容
			item.setText("");
		}
	}


	/**
	 * 递归查找所有EditText控件
	 * @param group
	 */
	public void getEditText(ViewGroup group) {
		if(group == null)
			return;
        int count = group.getChildCount();
        for (int i = 0; i < count; i++) {
            View child = group.getChildAt(i);
            if (child instanceof ViewGroup) {
                getEditText((ViewGroup) child);
            } else if (child instanceof EditText) {
                mEtList.add((EditText) child);
            }
        }
    }
	
	/**
	 * 停止定时器。
	 */
	public void cancelTimer(){
	    if(timer != null){
	        timer.cancel();
	        timer = null;
        }
    }

	private EOAccountActivity getActivity(Context context){
		return (EOAccountActivity) context;
	}
	
	public boolean isSwitch() {
		return isSwitch;
	}
	
	/**
	 * 获取当前界面停留时长（单位：秒）
	 * @return
	 */
	private long getDuration() {
		long duration = System.currentTimeMillis()/1000 - tempTimestamp;
		tempTimestamp = System.currentTimeMillis()/1000;
		return duration;
	}
}
