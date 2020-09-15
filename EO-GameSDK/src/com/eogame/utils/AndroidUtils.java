package com.eogame.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;

import java.util.Locale;

import com.eogame.constants.EOCommon;
import com.eogame.widgets.EOProgressDialog;
import com.eogame.widgets.EOTipsDialog;
import com.eogame.widgets.EOTipsListener;

public class AndroidUtils {

	private static AndroidUtils instance = new AndroidUtils();

	private static EOProgressDialog dialog;

	private AndroidUtils() {

	}

	public static AndroidUtils instance() {
		return instance;
	}

	/**
	 * 显示处理等待框
	 *
	 * @param activity
	 * @param message
	 * @param cancelable
	 */
	public static void showProgress(final Activity activity,final String message, final boolean cancelable ) {
		activity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				try {
					if (dialog != null) {
						dialog.dismiss();
					}

					dialog = EOProgressDialog.createDialog(activity);
					dialog.setMessage(message);
					dialog.setCancelable(cancelable);
					dialog.show();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		});
	}

	/**
	 * 显示处理等待框
	 * 
	 * @param activity
	 * @param title
	 * @param message
	 * @param indeterminate
	 * @param cancelable
	 */
	public static void showProgress(final Activity activity,
			final CharSequence title, final String message,
			final boolean indeterminate, final boolean cancelable,
			final EOThread progressThread) {
		activity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				try {
					if (dialog != null) {
						dialog.dismiss();
					}

					dialog = EOProgressDialog.createDialog(activity);
					// dialog.setTitle(title);
					dialog.setMessage(message);
					// dialog.setIndeterminate(indeterminate);
					dialog.setCancelable(cancelable);

					if (cancelable && progressThread != null) {
						dialog.setOnCancelListener(new DialogInterface.OnCancelListener() {

							@Override
							public void onCancel(DialogInterface dialog) {
								progressThread.safeDestory();
							}
						});
					}

					dialog.show();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		});
	}

	/**
	 * 关闭等待框
	 * 
	 * @param activity
	 */
	public static void closeProgress(final Activity activity) {
		activity.runOnUiThread(new Runnable() {

			@Override
			public void run() {
				try {
					if (dialog != null) {
						dialog.dismiss();
						dialog = null;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	
	/**
	 * 显示权限申请弹窗
	 * @param activity
	 * @param EOTipsListener
	 */
	public static void showEOPermissionTips(final Activity activity,final EOTipsListener eoTipsListener){
		activity.runOnUiThread(new Runnable() {
			@Override
			public void run() {				
				EOTipsDialog tipsDialog = new EOTipsDialog(activity);
				tipsDialog.setTitle(ResourceUtil.getString(activity, "eo_tips_permission_title"));
				tipsDialog.setCancelContent(ResourceUtil.getString(activity, "eo_tips_permission_cancel"));
				tipsDialog.setContinueContent(ResourceUtil.getString(activity, "eo_tips_permission_confirm"));
				tipsDialog.setTipsContent(ResourceUtil.getString(activity, "eo_tips_permission_content"));
				tipsDialog.setEOTipsListener(eoTipsListener);
				tipsDialog.setCancelable(false);
				tipsDialog.show();
			}
		});
	}
	
	public static void setLanguage(Context aty,String language) {
		Resources resources = aty.getResources();
		Logger.getInstance().e("eo", "set language , language = "+language);
		Configuration config = resources.getConfiguration();
		if("en-us".equals(language)) {
			config.locale =  Locale.ENGLISH;
			EOCommon.gameLanguage = language;
		}else if("zh-cn".equals(language)) {
			config.locale = Locale.CHINA;
			EOCommon.gameLanguage = language;
		}else {
			config.locale = Locale.ENGLISH;
		}
		resources.updateConfiguration(config, resources.getDisplayMetrics());
	}
}
