package com.eogame.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;

/**
 * 获得屏幕相关的辅助类
 */
@SuppressLint("NewApi")
public class ScreenUtils {

	private static float SCALE_RATE = 1.0f;
	private static float Screen_width = 1136.0f;
	private static float Screen_height = 640.0f;
	private static float Max_Rate = 1.8f;
	private static float density = 2.0f;
	
	private ScreenUtils() {
		throw new UnsupportedOperationException("cannot be instantiated");
	}

	/**
	 * 获得状态栏的高度
	 * 
	 * @param context
	 * @return
	 */
	public static int getStatusHeight(Context context) {
		int statusHeight = -1;
		// 获取status_bar_height资源的ID
		int resourceId = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
		if (resourceId > 0) {
			// 根据资源ID获取响应的尺寸值
			statusHeight = context.getResources().getDimensionPixelSize(resourceId);
		}
		return statusHeight;
	}

	/**
	 * 获得屏幕高度
	 * 
	 * @param context
	 * @return
	 */
	public static int getScreenWidth(Context context) {
		WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics outMetrics = new DisplayMetrics();
		wm.getDefaultDisplay().getMetrics(outMetrics);
		return outMetrics.widthPixels;
	}

	/**
	 * 获得屏幕宽度
	 * 
	 * @param context
	 * @return
	 */
	public static int getScreenHeight(Context context) {
		WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics outMetrics = new DisplayMetrics();
		wm.getDefaultDisplay().getMetrics(outMetrics);
		return outMetrics.heightPixels;
	}

	/**
	 * 获取屏幕真实宽度
	 * 
	 * @param context
	 * @return
	 */
	public static double getScreenRealWidth(Context context) {
		Point point = new Point();
		DisplayMetrics dm = context.getResources().getDisplayMetrics();
		WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		if (Util.getSDKVersion() < 17) {
			wm.getDefaultDisplay().getSize(point);
		} else {
			wm.getDefaultDisplay().getRealSize(point);
		}
		return Math.pow(point.x / dm.xdpi, 1);
	}

	/**
	 * 获取屏幕真实高度
	 * 
	 * @param context
	 * @return
	 */
	public static double getScreenRealHeight(Context context) {
		Point point = new Point();
		DisplayMetrics dm = context.getResources().getDisplayMetrics();
		WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		if (Util.getSDKVersion() < 17) {
			wm.getDefaultDisplay().getSize(point);
		} else {
			wm.getDefaultDisplay().getRealSize(point);
		}
		return Math.pow(point.y / dm.ydpi, 1);
	}
	
	/**
	 * 获取屏幕的 宽高
	 * @param context
	 * @return 分辨率 1280x720
	 */
	public static String getScreen(Context context) {
		double height = getScreenRealHeight(context);
		double width = getScreenRealWidth(context);
		if (height > width) {
			double temp = width;
			width = height;
			height = temp;
		}
		return String.format("%.1f", width) + " x " + String.format("%.1f", height);
	}

	/**
	 * 自动适配rootView的大小
	 * 
	 * @param context
	 * @param view
	 * @return
	 */
	public static void autoScaleView(Activity context, View view) {
		if (view == null)
			return;
//		Logger.getInstance().e("eo", "width = "+view.getLayoutParams().width +"\t height = "
//			+view.getLayoutParams().height+"\t scale_rate = "+SCALE_RATE);
		
		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams((int) (view.getLayoutParams().width/density*2* SCALE_RATE),
				(int) (view.getLayoutParams().height/density* 2 * SCALE_RATE));
		 view.setLayoutParams(params);
	}

	/**
	 * 计算view最终展示的大小的缩放比，用于屏幕适配
	 * 
	 * @param context
	 */
	public static void calculateViewSize(Context context) {
		// 当屏幕尺寸为大屏幕时，需要进行尺寸限制，视图不能过大
		DisplayMetrics dm = context.getResources().getDisplayMetrics();
		density = dm.density;
		Logger.getInstance().e("eo","density == "+density);
		// 屏幕高度的60%（实际尺寸大小，单位：英寸），用于横屏时视图大小到限制
		double height = getScreenHeight(context);
		// 屏幕宽度的84%（实际尺寸大小，单位：英寸），用于竖屏时视图大小到限制
		double width = getScreenWidth(context);
		// 宽高所对应的像素值
//		int mViewWidth = (int) (width * dm.xdpi);
//		int mViewHeight = (int) (height * dm.ydpi);
		if(height > width) {
			double temp = height;
			height = width;
			width = temp;
		}
		float scale;
		Logger.getInstance().e("eo","screen size : "+width +"x"+height);
		if (width / Screen_width > height / Screen_height) {
			 scale = (float)height / Screen_height;
			SCALE_RATE = scale > Max_Rate ? Max_Rate : scale;
		} else {
			 scale = (float)width / Screen_width;
			SCALE_RATE = scale > Max_Rate ? Max_Rate : scale;
		}
//		SCALE_RATE = scale;
	}
}
