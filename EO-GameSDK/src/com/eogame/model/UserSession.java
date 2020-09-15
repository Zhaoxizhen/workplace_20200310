package com.eogame.model;

import android.app.Application;

import java.util.ArrayList;

import com.eogame.db.EOAccountDBManager;

/**
 * @author wujunfeng
 * @date 创建时间：2016-10-19 下午5:15:30
 * @version 1.0
 */
public class UserSession {

	private static UserSession instance;
	private EOAccountDBManager db;
	public ArrayList<EOAccountEntity> accountList;

	private String currentUserId;
	public String currentUsername;
	private String currentToken;
	private String currentUserType;

	private EORoleInfo roleInfo = new EORoleInfo();

	private UserSession() {
	}

	public static UserSession getInstance() {
		if (instance == null) {
			instance = new UserSession();
		}
		return instance;
	}

	public String getCurrentUserId() {
		return currentUserId;
	}

	public void setCurrentUserId(String currentUserId) {
		this.currentUserId = currentUserId;
	}

	public String getCurrentToken() {
		return currentToken;
	}

	public void setCurrentToken(String currentToken) {
		this.currentToken = currentToken;
	}

	public EORoleInfo getRoleInfo() {
		return roleInfo;
	}

	public void setRoleInfo(EORoleInfo roleInfo) {
		this.roleInfo = roleInfo;
	}

	public String getCurrentUserName() {
		return currentUsername;
	}

	/**
	 * 读取数据库账户数据到缓存类
	 * 
	 * @param context
	 * @return
	 */
	public ArrayList<EOAccountEntity> buildAccountInfos(Application context) {
		db = EOAccountDBManager.getInstance(context);
		accountList = db.query();
		return accountList;
	}

	/**
	 * 添加帐号
	 * 
	 * @param entity
	 */
	public void addAccount(EOAccountEntity entity) {
		if (db == null) {
			throw new IllegalStateException("EODBManager is null.Please call buildAccountInfos first.");
		}
		try {
			setCurrentAccount(entity);
			db.addAccount(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取当前账户的信息
	 * 
	 * @return
	 */
	public EOAccountEntity getCurrentUserInfo() {
		if (db == null) {
			throw new IllegalStateException("EODBManager is null.Please call buildAccountInfos first.");
		}
		EOAccountEntity entity = new EOAccountEntity();
		entity.username = currentUsername;
		entity.userId = currentUserId;
		entity.token = currentToken;
		entity.userType = currentUserType;
		return entity;
	}

	/**
	 * 删除指定帐号
	 * 
	 * @param userId
	 */
	public void deleteAccount(String userId) {
		//TODO: 根据userId删除账号
		if (db == null) {
			throw new IllegalStateException("EODBManager is null.Please call buildAccountInfos first.");
		}
		try {
			db.deleteAccount(userId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 注销登录，清空当前账户的缓存
	 */
	public void cleanCurrent() {
		currentUsername = null;
		currentToken = null;
		currentUserId = null;
		currentUserType = null;
	}

	/**
	 * 查询指定username的帐号信息
	 * 
	 * @param username
	 * @return
	 */
	public EOAccountEntity queryAccount(String userId) {
		//TODO: 将根据用户名查询改为使用userId查询。
		EOAccountEntity entity = db.searchAccount(userId);
		return entity;
	}

	/**
	 * 设置当前帐号
	 */
	private void setCurrentAccount(EOAccountEntity entity) {
		currentUsername = entity.username;
		currentToken = entity.token;
		currentUserId = entity.userId;
		currentUserType = entity.userType;
	}

	public String getCurrentUserType() {
		return currentUserType;
	}

	/***
	 * 使用token登录成功后更新时间戳
	 * 
	 * @param entity
	 */
	public void updateTime(EOAccountEntity entity) {
		db.updateTime(entity);
		EOAccountEntity queryAccount = queryAccount(entity.userId);
		setCurrentAccount(queryAccount);
	}

	@Override
	public String toString() {
		return "UserSession [db=" + db + ", currentUserId=" + currentUserId + ", currentUsername=" + currentUsername
				+ ", currentToken=" + currentToken + ", roleInfo=" + roleInfo + ", userType=" + currentUserType + "]";
	}
}
