package com.eogame.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

/** 
 * @author  wujunfeng
 * @date 创建时间：2016-10-26 上午10:25:50 
 * @version 1.0   
 */
public class EOLinearLayout extends LinearLayout {

	public EOLinearLayout(Context context) {
		super(context);
	}

	public EOLinearLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}
	
	@Override
	public boolean onInterceptTouchEvent(MotionEvent ev) {
		return true;
	}
}
