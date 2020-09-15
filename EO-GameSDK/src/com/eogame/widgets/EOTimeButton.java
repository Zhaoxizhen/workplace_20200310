package com.eogame.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.util.TypedValue;
import android.widget.Button;

import java.util.Timer;
import java.util.TimerTask;

import com.eogame.utils.ResourceUtil;

public class EOTimeButton {

	private long DefaultTime = 60 * 1000;
	private String textafter = "s";
	private String textbefore = "重新发送";
	private Timer timer;
	private TimerTask timerTask;
	private long showTime;
	private Button mBtn;
	private Context mContext;
	private boolean isRunning;
	
	public EOTimeButton(Context context, Button btn){
		mContext = context;
		mBtn = btn;
		mBtn.setTextSize(TypedValue.COMPLEX_UNIT_SP,18);
	}
	
	@SuppressLint("HandlerLeak")
	Handler handler = new Handler() {
		@Override
		public void handleMessage(android.os.Message msg) {
			mBtn.setText(showTime / 1000 + textafter);
			showTime -= 1000;
			if (showTime < 0) {
				reset();
			}
		};
	};
	
	public void reset(){
		mBtn.setEnabled(true);
		mBtn.setTextColor(mContext.getResources().getColor(ResourceUtil.getColorId(mContext, "eo_red")));
		mBtn.setText(textbefore);
		clearTimer();
		isRunning = false;
	}

	public void cancel() {
		showTime = -1000;
	}

	private void initTimer() {
		showTime = DefaultTime;
		timer = new Timer();
		timerTask = new TimerTask() {
			@Override
			public void run() {
				handler.sendEmptyMessage(0x01);
			}
		};
	}

	private void clearTimer() {
		if (timerTask != null) {
			timerTask.cancel();
			timerTask = null;
		}
		if (timer != null){
			timer.cancel();
			timer = null;
		}
	}

	public void start(){
		initTimer();
		mBtn.setText(showTime / 1000 + textafter);
		mBtn.setTextColor(mContext.getResources().getColor(ResourceUtil.getColorId(mContext, "af_text_gray")));

		mBtn.setEnabled(false);
		timer.schedule(timerTask, 0, 1000);
		isRunning = true;
	}

	/** * 设置计时时候显示的文本 */
	public EOTimeButton setTextAfter(String content) {
		this.textafter = content;
		return this;
	}

	/** * 设置点击之前的文本 */
	public EOTimeButton setTextBefore(String content) {
		this.textbefore = content;
		mBtn.setText(textbefore);
		return this;
	}
	
	public boolean isRunning(){
		return isRunning;
	}

	/**
	 * 设置到计时长度
	 * 
	 * @param lenght
	 *            时间 默认毫秒
	 * @return
	 */
	public EOTimeButton setLenght(long lenght) {
		this.DefaultTime = lenght;
		return this;
	}
}