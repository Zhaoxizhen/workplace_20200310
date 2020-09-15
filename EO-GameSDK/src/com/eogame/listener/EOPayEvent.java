package com.eogame.listener;

import android.content.Context;


/**
 * 支付事件
 * @author Malone
 *
 */
public class EOPayEvent {

	public static final String TAG = "EOPayEvent";

	private static PayEventListener mPayEventListener;


	public static void setListener(Context context, PayEventListener payEventListener) {
		mPayEventListener = payEventListener;
	}

	public static void onPaySuccess(final String orderId) {
		if (mPayEventListener != null){
			mPayEventListener.onSuccess(orderId);
		}
	}

	public static void onPayCancle() {
		if (mPayEventListener != null){
			mPayEventListener.onCancle();
		}
	}

	public static void onPayError(final String errorMsg) {
		if (mPayEventListener != null){
			mPayEventListener.onError(errorMsg);
		}
	}

	public interface PayEventListener {
		public void onSuccess(String fcOrderId);
		public void onCancle();
		public void onError(String errorMsg);
	}

}
