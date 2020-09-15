package com.eogame.widgets;

import com.eogame.utils.ResourceUtil;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Spanned;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

/** 
 * @author  wujunfeng
 * @date 创建时间：2016-11-16 下午5:01:45 
 * @version 1.0   
 */
public class EOTipsDialog extends Dialog{
	
	private Context mContext;
	private EOTipsListener mTipsListener;
	private TextView mTitleTv;
	private TextView mTipsTv;
	private Button mContinueBt;
	private Button mCancelBt;
	private View mLineVw;
	private View mDivisionbtnVw;

	public EOTipsDialog(Context context) {
		super(context,ResourceUtil.getStyle(context, "EO_CustomDialog"));
		mContext = context;
		initView();
		initListener();
	}

	private void initView() {
		LayoutInflater inflater = getLayoutInflater();
		View view = inflater.inflate(ResourceUtil.getLayoutId(mContext, "eo_layout_tip"),null);
		mContinueBt = (Button) view.findViewById(ResourceUtil.getViewId(mContext, "eo_tips_continue_bt"));
		mCancelBt = (Button) view.findViewById(ResourceUtil.getViewId(mContext, "eo_tips_cancel_bt"));
		mTitleTv = (TextView) view.findViewById(ResourceUtil.getViewId(mContext, "eo_layout_tips_titile"));
		mTipsTv = (TextView) view.findViewById(ResourceUtil.getViewId(mContext, "eo_tips_tipbody_tv"));
		mLineVw = (View)view.findViewById(ResourceUtil.getViewId(mContext, "eo_layout_tips_line"));
		mDivisionbtnVw = (View)view.findViewById(ResourceUtil.getViewId(mContext, "eo_tips_divisionbtn_vw"));
		setCanceledOnTouchOutside(false);
		super.setContentView(view);
	}
	
	public void hideCancelBtn(){
		mCancelBt.setVisibility(View.GONE);
	}
	
	public void setTitle(String title){
		mTitleTv.setText(title);
	}
	
	public void setTipsContent(String tipsContent){
		mTipsTv.setText(tipsContent);
	}
	
	public void setTipsContent(Spanned tipsContent){
		mTipsTv.setText(tipsContent);
		mTipsTv.setGravity(Gravity.CENTER);
	}
	
	public void setContinueContent(String content){
		mContinueBt.setText(content);
	}
	
	public void setCancelContent(String content){
		mCancelBt.setText(content);
	}
	
	@SuppressLint("NewApi")
	public void setContinueBackground(Drawable drawable){

		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
			mContinueBt.setBackground(drawable);
		}else{
			mContinueBt.setBackgroundDrawable(drawable);
		}

	}
	
	@SuppressLint("NewApi")
	public void setCancelBackground(Drawable drawable){
		if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
			mCancelBt.setBackground(drawable);
		}else{
			mCancelBt.setBackgroundDrawable(drawable);
		}
	}
	
	public void setContinueTextColor(int color){
		mContinueBt.setTextColor(color);
	}
	
	public void setLineColor(int color){
		mLineVw.setBackgroundColor(color);
	}
	
	public void setCancelTextColor(int color){
		mCancelBt.setTextColor(color);
	}
	
	public void setDivisionLineVisiblity(int visiblity){
		mDivisionbtnVw.setVisibility(visiblity);
	}
	
	
	private void initListener() {
		mContinueBt.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				if(mTipsListener != null){
					mTipsListener.onContinueClick();
				}
				dismiss();
			}
		});
		mCancelBt.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				if(mTipsListener != null){
					mTipsListener.onCancelClick();
				}
				dismiss();
			}
		});
	}
	
	public void setEOTipsListener(EOTipsListener listener){
		mTipsListener = listener;
	}
	
}
