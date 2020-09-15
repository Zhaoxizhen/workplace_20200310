package com.eogame.presenter;

import java.util.HashMap;
import java.util.Map;

import com.eogame.model.HttpResult;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.utils.Logger;
import com.eogame.utils.EOThread;
import com.eogame.web.EOWebApiImpl;

/**
 * 日志发送逻辑类。
 */
public class EOLogPresenter{
	
	public static final int START_GAME = 1;
	public static final int ENTRY_GAME = 2;
	public static final int SIGN_UP_ACCOUNT = 3;
	public static final int LOGIN_EO = 4;
	public static final int QUEIT_GAME = 5;
	public static final int BIND_EO = 6;
	public static final int CREATE_ROLE = 7;
	public static final int CREATE_ORDER = 8;
	
//	public static final int BUY_SUCCESS = 9;
//	public static final int BUY_FAIL = 10;
	
	public static final int PAY_SUCCESS = 9;
	public static final int PAY_FAIL = 10;
	public static final int RE_PAY_SUCCESS = 11;
	public static final int RE_PAY_FAIL = 12;
//	public static final int START_GAME = 1;
//	public static final int START_GAME = 1;
	
	private static final String UID = "uid";
	private static final String SERVER_ID = "sc";
	private static final String PRICE = "menoey";
	private static final String ROLE_ID = "rid";
	private static final String ROLE_NAME = "rn";
	private static final String ROLE_LEVEL = "gl";
	
	private static EOLogPresenter instance;
	
	private EOLogPresenter() {}
	
	public static EOLogPresenter getInstance() {
		if(instance == null) {
			instance = new EOLogPresenter();
		}
		return instance;
	}
	
	public void sendCreateRole(String uid,EORoleInfo roleInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		sendLog(CREATE_ROLE, params);
	}
	
	public void sendEntryGame(String uid,EORoleInfo roleInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		sendLog(ENTRY_GAME, params);
	}
	
	public void sendInit() {
		sendLog(START_GAME, null);
	}
	
	public void sendSignUp(String uid) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		sendLog(SIGN_UP_ACCOUNT, params);
	}
	
	public void sendLogin(String uid) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		sendLog(LOGIN_EO, params);
	}
	
	public void sendQuitGame(String uid,EORoleInfo roleInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		sendLog(QUEIT_GAME, params);
	}
	
	public void sendBind(String uid) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		sendLog(BIND_EO, params);
	}
	
	public void sendCreateOrder(String uid,EORoleInfo roleInfo,EOPayInfo payInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		
		params.put(PRICE, payInfo.getPrice()+"");
		sendLog(CREATE_ORDER, params);
	}
	
	public void sendBuySuccess(String uid,EORoleInfo roleInfo,EOPayInfo payInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		
		params.put(PRICE, payInfo.getPrice()+"");
		sendLog(PAY_SUCCESS, params);
	}
	
	public void sendBuyFail(String uid,EORoleInfo roleInfo,EOPayInfo payInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		
		params.put(PRICE, payInfo.getPrice()+"");
		sendLog(PAY_FAIL, params);
	}
	
	public void sendRePaySuccess(String uid,EORoleInfo roleInfo,EOPayInfo payInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		
		params.put(PRICE, payInfo.getPrice()+"");
		sendLog(RE_PAY_SUCCESS, params);
	}
	
	public void sendRePayFail(String uid,EORoleInfo roleInfo,EOPayInfo payInfo) {
		HashMap<String, String> params = new HashMap<String,String>();
		params.put(UID, uid);
		params.put(SERVER_ID, roleInfo.getServerId());
		params.put(ROLE_ID, roleInfo.getRoleId());
		params.put(ROLE_NAME, roleInfo.getRoleName());
		params.put(ROLE_LEVEL, roleInfo.getRoleLevel()+"");
		
		params.put(PRICE, payInfo.getPrice()+"");
		sendLog(RE_PAY_FAIL, params);
	}
	
	private void sendLog(final int logType,final Map<String, String>map) {
		EOThread thread = new EOThread() {
			@Override
			public void run() {
				HttpResult result = EOWebApiImpl.instance().sendLog(logType, map);
				if(result.getCode() == HttpResult.CODE_SUCCESS) {
					Logger.getInstance().e("eo", "send log success, type = "+ logType);
				}else {
					Logger.getInstance().e("eo", "send log fail, type = "+ logType);
				}
			}
		};
		thread.start();
	}
	
}
