package com.eogame.application;

import com.eogame.sdk.EOSDK;

import android.app.Application;
import android.content.res.Configuration;

public class EOApplication extends Application {
	
	@Override
	public void onCreate() {
		super.onCreate();
		EOSDK.getInstance().onApplicationCreate(this);
	}
	
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
		EOSDK.getInstance().onConfiggurationChanged(this, newConfig);
	}
}
