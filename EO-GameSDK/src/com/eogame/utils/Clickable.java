package com.eogame.utils;

import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public class Clickable extends ClickableSpan implements View.OnClickListener{
	 
	 /**
	     * 内部类，用于截获点击富文本后的事件
	     */
	        private final View.OnClickListener mListener;

	        public Clickable(View.OnClickListener mListener) {
	            this.mListener = mListener;
	        }

	        @Override
	        public void onClick(View v) {
	            mListener.onClick(v);
	        }
	        @Override
	        public void updateDrawState(TextPaint ds) {
	            ds.setColor(ds.linkColor);
	            ds.setUnderlineText(false);    //去除超链接的下划线
	        }
}
