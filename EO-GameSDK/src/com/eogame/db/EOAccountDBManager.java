package com.eogame.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import com.eogame.crypto.DES;
import com.eogame.model.EOAccountEntity;
import com.eogame.utils.Logger;

import java.util.ArrayList;

/** 
 * @author  wujunfeng
 * @date 创建时间：2016-10-19 上午11:14:30 
 * @version 1.0   
 */
public class EOAccountDBManager {
	
	private static final String KEY_PASSWORD = "eo___pwd";
	private static final String KEY_UID = "user__id";
	private static final String KEY_USERNAME = "username";

	private static String tableName = "Account";
	private static SQLiteDatabase db;  
	private static EOAccountDBManager dbManager;
	private static String USERNAME = "username";
	private static String UID = "uid";
	private static String TOKEN = "token";
	private static String USERTYPE= "usertype";
	private static String TIMESTAMP = "timestamp";
	private static String TIMESTAMP_DESC = "timestamp DESC";
	//最大帐号存储数量，默认值为4，即5条
	private static int MAX_NUM = 4;

	private EOAccountDBManager(){

	}

	public static EOAccountDBManager getInstance(Context context) {
		if(dbManager == null){
			dbManager = new EOAccountDBManager();
			db = new EOSQLiteHelper(context).getWritableDatabase();
		}
		return dbManager;
	}

	/**
	 * 添加帐号数据
	 */
	public void addAccount(EOAccountEntity entity){
		db.beginTransaction();
		ContentValues values = new ContentValues();
		if(search(entity.userId) == null){
			//没有此帐号的记录，添加新数据
			try {
				encryptEntity(entity);
				values.put(USERNAME, entity.username);
				values.put(TOKEN, entity.token);
				values.put(TIMESTAMP, getCurrentTime());
				values.put(USERTYPE, entity.userType);
				values.put(UID, entity.userId);
				db.insert(tableName, "", values);
				db.setTransactionSuccessful();//设置事务完成
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else{
			//已存在此帐号记录，更新记录
			try {
				encryptEntity(entity);
				values.put(TOKEN, entity.token);
				values.put(USERTYPE, entity.userType);
				values.put(TIMESTAMP, getCurrentTime());
				String whereClause = UID+"=?";
				String[] whereArgs = {entity.userId};
				db.update(tableName, values, whereClause, whereArgs );
				db.setTransactionSuccessful();//设置事务完成				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		db.endTransaction();
	}

//	/**
//	 * 添加多个帐号数据
//	 */
//	public void addAccounts(ArrayList<SGAccountEntity> list){
//		db.beginTransaction();
//		ContentValues values = new ContentValues();
//		try {
//			for(SGAccountEntity item : list){
//				values.clear();
//				if(search(item.username) == null){
//					//没有此帐号的记录，添加新数据
//					values.put(USERNAME, item.username);
//					values.put(TOKEN, item.token);
//					values.put(TIMESTAMP, getCurrentTime());
//					values.put(ISAUTOLOGIN, item.getAutoLoginState());
//					values.put(ISHIDEFLOAT, item.getHideFloatState());
//					values.put(UID, item.userId);
//					db.insert(tableName, "", values);
//				}else{
//					//已存在此帐号记录，更新记录
//					values.put(TOKEN, item.token);
//					values.put(TIMESTAMP, getCurrentTime());
//					values.put(ISAUTOLOGIN, item.getAutoLoginState());
//					values.put(ISHIDEFLOAT, item.getHideFloatState());
//					String whereClause = USERNAME+"=?";
//					String[] whereArgs = {item.username};
//					db.update(tableName, values, whereClause, whereArgs );
//				}
//			}
//			db.setTransactionSuccessful();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally{
//			db.endTransaction();
//		}
//	}

	/**
	 * 查询数据库中的全部账户信息
	 * @return
	 */
	public ArrayList<EOAccountEntity> query(){
		db.beginTransaction();
		ArrayList<EOAccountEntity> list = new ArrayList<EOAccountEntity>();
		try {
			String orderBy = TIMESTAMP_DESC;
			Cursor cursor = db.query(tableName, null, null, null, null, null, orderBy );
			db.setTransactionSuccessful();
			while(cursor.moveToNext()){
				if(cursor.getPosition() <= MAX_NUM){
					EOAccountEntity entity = new EOAccountEntity();
					entity.setUsername(DES.decrypt(cursor.getString(cursor.getColumnIndex(USERNAME)), KEY_USERNAME))
					.setToken(cursor.getString(cursor.getColumnIndex(TOKEN)))
					.setTimestamp(cursor.getString(cursor.getColumnIndex(TIMESTAMP)))
					.setUserType(cursor.getString(cursor.getColumnIndex(USERTYPE)))
					.setUserId(DES.decrypt(cursor.getString(cursor.getColumnIndex(UID)),KEY_UID));
					//查询足够5条不再查询
					list.add(entity);
				}else{
					//删除所选5条记录之外的记录（数据库仅记录5条数据）
					delete(cursor.getString(cursor.getColumnIndex(UID)));
				}
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			db.endTransaction();
		}
		return null;
	}

	/**
	 * 查询指定的username信息
	 * @param username
	 * @return
	 */
	private EOAccountEntity search(String userId){
		try {
			String selection = UID + "=?";
			String[] selectionArgs = {getEncryptUid(userId)};
			Cursor cursor = db.query(tableName, null, selection , selectionArgs , null, null, null);
			if(cursor.moveToNext()){
				EOAccountEntity entity = new EOAccountEntity();
				entity.setUsername(DES.decrypt(cursor.getString(cursor.getColumnIndex(USERNAME)), KEY_USERNAME))
				.setToken(cursor.getString(cursor.getColumnIndex(TOKEN)))
				.setTimestamp(cursor.getString(cursor.getColumnIndex(TIMESTAMP)))
				.setUserType(cursor.getString(cursor.getColumnIndex(USERTYPE)))
				.setUserId(DES.decrypt(cursor.getString(cursor.getColumnIndex(UID)), KEY_UID));
				return entity;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
		}
		return null;
	}
	
	/**
	 * 查询指定的username信息(外部调用)
	 * @param username
	 * @return
	 */
	public EOAccountEntity searchAccount(String userId){
		db.beginTransaction();
		try {
			String selection = UID + "=?";
			String[] selectionArgs = {getEncryptUid(userId)};
			Cursor cursor = db.query(tableName, null, selection , selectionArgs , null, null, null);
			if(cursor.moveToNext()){
				EOAccountEntity entity = new EOAccountEntity();
				entity.setUsername(DES.decrypt(cursor.getString(cursor.getColumnIndex(USERNAME)), KEY_USERNAME))
				.setToken(cursor.getString(cursor.getColumnIndex(TOKEN)))
				.setTimestamp(cursor.getString(cursor.getColumnIndex(TIMESTAMP)))
				.setUserType(cursor.getString(cursor.getColumnIndex(USERTYPE)))
				.setUserId(DES.decrypt(cursor.getString(cursor.getColumnIndex(UID)), KEY_UID));
				db.setTransactionSuccessful();
				return entity;
			}
			db.setTransactionSuccessful();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			db.endTransaction();
		}
		return null;
	}

	/**
	 * 删除指定账户的数据库记录(类内部使用)
	 * @param uid
	 */
	private void delete(String uid){
		try {
			Logger.getInstance().e("eo", "delete user -> userId :"+uid);
			String whereClause = UID + "=?";
			String[] whereArgs = {getEncryptUid(uid)};
			db.delete(tableName, whereClause, whereArgs);
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}

	/**
	 * 删除指定账户的数据库记录(类外部使用)
	 * @param uid
	 */
	public void deleteAccount(String uid){
		db.beginTransaction();
		try {
			String whereClause = UID + "=?";
			String[] whereArgs = {getEncryptUid(UID)};
			db.delete(tableName, whereClause, whereArgs);
			db.setTransactionSuccessful();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			db.endTransaction();
		}
	}
	
	/**
	 * 改变指定帐号的悬浮窗标记状态
	 * @param username
	 * @return 
	 */
//	public boolean changeFloatStatus(String username){
//		db.beginTransaction();
//		boolean isHideFloat = false;
//		try {
//			SGAccountEntity entity = search(getEncryptUsername(username));
//			ContentValues values = new ContentValues();
//			String whereClause = USERNAME + "=?";
//			String[] whereArgs = {getEncryptUsername(username)};
//			db.update(tableName, values, whereClause, whereArgs);
//			db.setTransactionSuccessful();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally{
//			db.endTransaction();
//		}
//		return isHideFloat;
//	}
	
	/**
	 * 改变指定帐号的自动登录标记
	 * @param username
	 * @return 
	 */
//	public boolean changeAutoLoginStatus(String username){
//		db.beginTransaction();
//		boolean isAutoLogin = false;
//		try {
//			SGAccountEntity entity = search(getEncryptUsername(username));
//			isAutoLogin = !entity.isAutoLogin;
//			ContentValues values = new ContentValues();
//			values.put(ISAUTOLOGIN, String.valueOf(!entity.isAutoLogin));
//			String whereClause = USERNAME + "=?";
//			String[] whereArgs = {getEncryptUsername(username)};
//			db.update(tableName, values, whereClause, whereArgs);
//			db.setTransactionSuccessful();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally{
//			db.endTransaction();
//		}
//		return isAutoLogin;
//	}

	/**
	 * 改变指定游客帐号为非游客帐号
	 * @param uid
	 * @param phoneNumber
	 */
	public void changeVisitorToAccount(String uid, String phoneNumber) {
		db.beginTransaction();
		try {
			String whereClause = UID + "=?";
			String[] whereArgs = {getEncryptUid(uid)};
			db.delete(tableName, whereClause, whereArgs);
			db.setTransactionSuccessful();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			db.endTransaction();
		}
	}
	
	private long getCurrentTime(){
		return System.currentTimeMillis()/1000;
	}

	/***
	 * 使用token登录成功后更新时间戳
	 * @param entity
	 */
	public void updateTime(EOAccountEntity entity) {
		db.beginTransaction();
		try {
//			encryptEntity(entity);
//				entity.token = DES.encrypt(entity.token,KEY_PASSWORD);
//				entity.userId = DES.encrypt(entity.userId, KEY_UID);
//				entity.username = DES.encrypt(entity.username, KEY_USERNAME);
            String userName = getEncryptUsername(entity.username);
			ContentValues values = new ContentValues();
			values.put(USERNAME,userName);
//			values.put(TOKEN, entity.token);
			values.put(USERTYPE, entity.userType);
			values.put(TIMESTAMP, getCurrentTime());
			String whereClause = UID + "=?";
			String[] whereArgs = {getEncryptUid(entity.userId)};
			db.update(tableName, values, whereClause, whereArgs);
			db.setTransactionSuccessful();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			db.endTransaction();
		}
	}
	
	private void encryptEntity(EOAccountEntity entity){
		try {
			entity.userId = DES.encrypt(entity.userId, KEY_UID);
			entity.username = DES.encrypt(entity.username, KEY_USERNAME);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private String getEncryptUsername(String username){
		String encryptUsername = "";
		try {
			encryptUsername = DES.encrypt(username, KEY_USERNAME);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return encryptUsername;
	}
	
	private String getEncryptUid(String uid){
		String encryptUid = "";
		try {
			encryptUid = DES.encrypt(uid, KEY_UID);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return encryptUid;
	}
}
