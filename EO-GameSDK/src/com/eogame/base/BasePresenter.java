package com.eogame.base;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.Button;
import android.widget.EditText;

import com.eogame.constants.MessageCode;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.EOBaseObject;
import com.eogame.model.UserSession;
import com.eogame.utils.EOAccountViewContainer;
import com.eogame.utils.Logger;

/** 
 * @author  wujunfeng
 * @date 创建时间：2016-10-19 下午4:55:28 
 * @version 1.0   
 */
public abstract class BasePresenter {

	protected Activity mContext;
	protected UserSession mUserSession;

	@SuppressLint("HandlerLeak") 
	protected Handler mHandler = new Handler(){
		public void handleMessage(Message msg) {
			Logger.getInstance().e("eo", "msg"+msg.toString());
			dealMessage(msg.obj,msg.what);

		}
	};

	public BasePresenter(Activity context, UserSession session) {
		if(context == null){
			throw new IllegalStateException("context is null in BasePresenter.");
		}
		mContext = context;
		mUserSession = session;
		if(session == null){
			throw new IllegalStateException("userSession is null in BasePresenter.");
		}
		initData();
	}

	public void sendMsg(EOBaseObject obj, int what){
		Message msg = Message.obtain();
		msg.what = what;
		msg.obj = obj;
		if(null != mHandler){
			mHandler.sendMessage(msg);
		}
	}
	
	/**
	 * 为防止在拉起某支付渠道界面时出现异常情况，导致isPaying标志永远处于支付中，
	 * 所以在5s后自动把标志位改回来，其他支付方式以及界面关闭按钮可被点击
	 * 
	 */
	public void relasePaying(){
		
		Message msg = Message.obtain();
		msg.what = MessageCode.CODE_RELEASE_PAYING;
		if(null != mHandler){
			mHandler.sendMessageDelayed(msg, 5000);
		}
	}

	/**
	 * 绑定按钮可用状态到编辑框的内容
	 * 若编辑框没有内容，则按钮不可用
	 */
	public void bindBtn2EtContent(final Button bt, final EditText editText1, final EditText editText2){
		if(editText1 != null){
			editText1.addTextChangedListener(new TextWatcher() {
				@Override
				public void onTextChanged(CharSequence s, int start, int before, int count) {}
				@Override
				public void beforeTextChanged(CharSequence s, int start, int count,int after) {}
				
				@Override
				public void afterTextChanged(Editable s) {
					if(TextUtils.isEmpty(s)){
						bt.setEnabled(false);
					}else{
						if(editText2 == null){
							//单个编辑框控制
							bt.setEnabled(true);
						}else{
							//两个编辑框控制
							String content = editText2.getText().toString();
							if(TextUtils.isEmpty(content)){
								//第二个编辑框为空
								bt.setEnabled(false);
							}else{
								//第二个编辑框也不为空
								bt.setEnabled(true);
							}
						}
					}
				}
			});
		}
		if(editText2 != null){
			editText2.addTextChangedListener(new TextWatcher() {
				@Override
				public void onTextChanged(CharSequence s, int start, int before, int count) {}
				@Override
				public void beforeTextChanged(CharSequence s, int start, int count,int after) {}
				
				@Override
				public void afterTextChanged(Editable s) {
					if(TextUtils.isEmpty(s)){
						bt.setEnabled(false);
					}else{
						if(editText1 == null){
							//单个编辑框控制
							bt.setEnabled(true);
						}else{
							//两个编辑框控制
							String content = editText1.getText().toString();
							if(TextUtils.isEmpty(content)){
								//第二个编辑框为空
								bt.setEnabled(false);
							}else{
								//第二个编辑框也不为空
								bt.setEnabled(true);
							}
						}
					}
				}
			});
		}
	}

    /**
     * 绑定按钮可用状态到编辑框的内容
     * 若编辑框没有内容，则按钮不可用
     */
    public void bindBtn2EtContent(final Button bt, final EditText editText1, final EditText editText2,final EditText editText3){
        if(editText1 != null){
            editText1.addTextChangedListener(new TextWatcher() {
                @Override
                public void onTextChanged(CharSequence s, int start, int before, int count) {}
                @Override
                public void beforeTextChanged(CharSequence s, int start, int count,int after) {}

                @Override
                public void afterTextChanged(Editable s) {
                    if(TextUtils.isEmpty(s)){
                        bt.setEnabled(false);
                    }else{
                        if(editText2 == null){
                            //单个编辑框控制
                            bt.setEnabled(true);
                        }else{
                            //两个编辑框控制
                            String content = editText2.getText().toString();
                            if(TextUtils.isEmpty(content)){
                                //第二个编辑框为空
                                bt.setEnabled(false);
                            }else{
                                //第二个编辑框也不为空
                                bt.setEnabled(true);
                            }
                        }
                    }
                }
            });
        }
        if(editText2 != null){
            editText2.addTextChangedListener(new TextWatcher() {
                @Override
                public void onTextChanged(CharSequence s, int start, int before, int count) {}
                @Override
                public void beforeTextChanged(CharSequence s, int start, int count,int after) {}

                @Override
                public void afterTextChanged(Editable s) {
                    if(TextUtils.isEmpty(s)){
                        bt.setEnabled(false);
                    }else{
                        if(editText1 == null){
                            //单个编辑框控制
                            bt.setEnabled(true);
                        }else{
                            //两个编辑框控制
                            String content = editText1.getText().toString();
                            if(TextUtils.isEmpty(content)){
                                //第二个编辑框为空
                                bt.setEnabled(false);
                            }else{
                                //第二个编辑框也不为空
                                bt.setEnabled(true);
                            }
                        }
                    }
                }
            });
        }
        if(editText3 != null){
            editText3.addTextChangedListener(new TextWatcher() {
                @Override
                public void onTextChanged(CharSequence s, int start, int before, int count) {}
                @Override
                public void beforeTextChanged(CharSequence s, int start, int count,int after) {}

                @Override
                public void afterTextChanged(Editable s) {
                    if(TextUtils.isEmpty(s)){
                        bt.setEnabled(false);
                    }else{
                        if(editText2 == null){
                            //单个编辑框控制
                            bt.setEnabled(true);
                        }else{
                            //两个编辑框控制
                            String content = editText2.getText().toString();
                            if(TextUtils.isEmpty(content)){
                                //第二个编辑框为空
                                bt.setEnabled(false);
                            }else{
                                //第二个编辑框也不为空
                                bt.setEnabled(true);
                            }
                        }
                    }
                }
            });
        }
    }
	
	/**
	 * 设置编辑框失去焦点时去掉其中的空格
	 * @param et
	 */
	public void removeSpaceOnNoFocus(final EditText et){
		et.setOnFocusChangeListener(new OnFocusChangeListener() {
			@Override
			public void onFocusChange(View v, boolean hasFocus) {
				if(!hasFocus){
					et.setText(et.getText().toString().replace(EOAccountEntity.ACCOUNT_SPACE, EOAccountEntity.ACCOUNT_EMPTY));
				}
			}
		});
	}

	public void trimOnNoFocus(final EditText et) {
        et.setOnFocusChangeListener(new OnFocusChangeListener() {
            @Override
            public void onFocusChange(View v, boolean hasFocus) {
                if(!hasFocus){
                    et.setText(et.getText().toString().trim());
                }
            }
        });
    }
	
	public void removeSpace(EditText et){
		//去除空格
		et.setText(et.getText().toString().replace(EOAccountEntity.ACCOUNT_SPACE, EOAccountEntity.ACCOUNT_EMPTY));
		//去除Tab
		et.setText(et.getText().toString().replace(EOAccountEntity.ACCOUNT_TAB, EOAccountEntity.ACCOUNT_EMPTY));
		et.setSelection(et.getText().toString().length());
	}
	
	protected abstract void dealMessage(Object obj,int what);
	/**
	 * 初始化数据及界面显示内容
	 */
	protected abstract void initData();

	public abstract void onDestory();

	protected long getCurrentTime(){
		return System.currentTimeMillis()/1000;
	}
}
