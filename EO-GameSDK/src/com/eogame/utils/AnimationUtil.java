package com.eogame.utils;

import com.eogame.constants.Data;

import android.app.Activity;
import android.content.Context;
import android.graphics.PixelFormat;
import android.os.Build;
import android.os.CountDownTimer;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;

/** 
 * @author  wujunfeng
 * @date 创建时间：2016-12-22 上午11:15:17 
 * @version 1.0   
 */
public class AnimationUtil {
	
	public static void startWelcomeAnimation(final Activity activity,String username){
		final View view = View.inflate(activity, ResourceUtil.getLayoutId(activity, "af_layout_welcome_tips"), null);
		LayoutParams params = new LayoutParams(LayoutParams.MATCH_PARENT,300);
		activity.addContentView(view, params);
		View root = view.findViewById(ResourceUtil.getViewId(activity, "af_welcome_root"));
		TextView usernameTv= (TextView) root.findViewById(ResourceUtil.getViewId(activity, "af_welcome_username_tv"));
		usernameTv.setText(username + "欢迎回来！");
		LayoutParams params1 = view.getLayoutParams();
		root.measure(MeasureSpec.UNSPECIFIED, MeasureSpec.UNSPECIFIED);
		params1.height = root.getMeasuredHeight();
		view.setLayoutParams(params1);
		TranslateAnimation animationOne = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0, 
				Animation.RELATIVE_TO_SELF, -1, Animation.RELATIVE_TO_SELF, 0);
		animationOne.setDuration(300);
		animationOne.setFillAfter(true);
		animationOne.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {}
			@Override
			public void onAnimationRepeat(Animation animation) {}
			
			@Override
			public void onAnimationEnd(Animation animation) {
				new CountDownTimer(1500, 1500) {
					@Override
					public void onTick(long millisUntilFinished) {}
					
					@Override
					public void onFinish() {
						//定时1.5秒后进行退出动画
						TranslateAnimation animationTwo = new TranslateAnimation(Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 0, 
								Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, -1);
						animationTwo.setDuration(200);
						animationTwo.setFillAfter(true);
						view.startAnimation(animationTwo);
					}
				}.start();
			}
		});
		view.startAnimation(animationOne);
	}
}
