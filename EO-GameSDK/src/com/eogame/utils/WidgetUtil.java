package com.eogame.utils;

import android.graphics.Color;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.text.style.UnderlineSpan;
import android.view.View;


public class WidgetUtil {
	/*
	 * @param onClickListener 点击文字监听事件
	 * @param body 预处理文字
	 * @param start 下划线以及点击事件的文字开头
	 * @param end 下划线以及点击事件的文字结尾
	 * 
	 */
	public static SpannableString getClickableSpan(View.OnClickListener onClickListener,String body,int start,int end) {

		SpannableString spanableInfo = new SpannableString(body);
		spanableInfo.setSpan(new Clickable(onClickListener), start, end,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		spanableInfo.setSpan(new ForegroundColorSpan(Color.parseColor("#ff0000")), start, end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		spanableInfo.setSpan(new UnderlineSpan(), start, end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		//spanableInfo.setSpan(new AbsoluteSizeSpan(sp2px(this, 25)), content.indexOf("baidu"), content.indexOf(" or"), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return spanableInfo;
	}
}
