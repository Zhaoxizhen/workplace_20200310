package com.eogame.model;

import android.R.integer;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;

import java.util.ArrayList;

import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.eogame.utils.EOAccountViewContainer;

public class Useradpter extends BaseAdapter {

	private Context cx;
	private ArrayList<EOAccountEntity> mUserList;
	private PopupWindow mPopWindow;
	private TextView tvUsername;
	private ImageView mLoginRecordListBt;
	private EOAccountViewContainer mContainer;
	private static int currentUserIndex;


	public Useradpter(Context context, ArrayList<EOAccountEntity> list, PopupWindow popWindow, TextView username, ImageView mLoginRecordListBt2, EOAccountViewContainer container
			) {
		super();
		this.mUserList = list;
		this.cx = context;
		tvUsername = username;
		mPopWindow = popWindow;
		mLoginRecordListBt=mLoginRecordListBt2;
		mContainer = container;
		currentUserIndex = 0;
	}

	@Override
	public int getCount() {
		return mUserList.size();
	}

	@Override
	public Object getItem(int position) {
		return mUserList.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		ViewHolder holder = null;
		if (convertView == null) {
			convertView = View.inflate(cx, ResourceUtil.getLayoutId(cx, "eo_item_accountselect"), null);
			holder = new ViewHolder();
			holder.tvUsername = (TextView) convertView.findViewById(ResourceUtil.getViewId(cx, "eo_tv_username_accountlist"));
			holder.btnDelete  = (ImageView) convertView.findViewById(ResourceUtil.getViewId(cx, "eo_iv_delete_accountlist"));
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}
		
		holder.tvUsername.setText(mUserList.get(position).username);
		
		holder.tvUsername.setTag(position);
		holder.btnDelete.setTag(position);
		final EOAccountEntity accountInfo = mUserList.get(position);
		holder.btnDelete.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View view) {
				
				int index = (Integer)view.getTag();
				String userId = mUserList.get(index).userId;
				mUserList.remove(index);
				Logger.getInstance().e("eo","remove index == "+index);
				notifyDataSetChanged();
				UserSession.getInstance().deleteAccount(userId);
				if(mUserList.size() == 0){
					mLoginRecordListBt.setImageDrawable(cx.getResources().getDrawable(ResourceUtil.getDrawableId(cx, "eo_login_list_down")));
					mPopWindow.dismiss();
					tvUsername.setText("");
					mContainer.showFirstLogin();
				}
				else{				
					tvUsername.setText(mUserList.get(0).username);
				}
			}
		});
		
		holder.tvUsername.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				currentUserIndex = (Integer)v.getTag();
				tvUsername.setText(accountInfo.username);
				mLoginRecordListBt.setImageDrawable(cx.getResources().getDrawable(ResourceUtil.getDrawableId(cx, "eo_login_list_down")));
				mPopWindow.dismiss();
			}
		});
		
		

		return convertView;
	}
	
	public static int getCurrentUserIndex() {
		return currentUserIndex;
	}
	
	private class ViewHolder {
		TextView tvUsername;
		ImageView btnDelete;
	}
}