package com.eogame.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import com.eogame.crypto.DES;
import com.eogame.model.EOAccountEntity;
import com.eogame.utils.Logger;

import java.util.ArrayList;

/** 
 * @author  wujunfeng
 * @date 创建时间：2016-10-19 上午11:06:44 
 * @version 1.0   
 */
public class EOSQLiteHelper extends SQLiteOpenHelper {
	
	private static String USERNAME = "username";
	private static String UID = "uid";
	private static String TOKEN = "token";
	private static String USERTYPE = "usertype";
	private static String TIMESTAMP = "timestamp";


	//帐号表格相关
	public static String DB_NAME = "EOAccount.db";
	private static String TABLENAME = "Account";
	private static final int DATABASE_VERSION = 3;
	private static final String TAG = "EOSQLiteHelper";
	private String CREATE_DATABASE = "CREATE TABLE IF NOT EXISTS " + TABLENAME +  
			"(_id INTEGER PRIMARY KEY AUTOINCREMENT, uid VARCHAR(15), username VARCHAR(50), token VARCHAR(50), usertype VARCHAR(50),timestamp VARCHAR(15))";
	
	//数据埋点表格相关
	private static String TRACK_TABLENAME = "Track";
	private String CREATE_DATA_TRACK_DATABASE = "CREATE TABLE IF NOT EXISTS " + TRACK_TABLENAME +  
			"(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventType INTEGER, view VARCHAR(50), timestamp VARCHAR(15),netWorkType VARCHAR(20), uid VARCHAR(20),status INTEGER, duration INTEGER" +
			",reson VARCHAR(50),pageNo INTEGER,sdkVersion VARCHAR(15),packageVersion VARCHAR(20),os VARCHAR(10),appID VARCHAR(20),device VARCHAR(20),guid VARCHAR(50),osVersion VARCHAR(10))";
	
	public EOSQLiteHelper(Context context) {
		super(context, DB_NAME, null, DATABASE_VERSION);
	}

	public EOSQLiteHelper(Context context, String name, CursorFactory factory, int version) {
		super(context, name, factory, version);
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL(CREATE_DATABASE);
		db.execSQL(CREATE_DATA_TRACK_DATABASE);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		db.beginTransaction();
		
		//查询数据
		ArrayList<EOAccountEntity> list = new ArrayList<EOAccountEntity>();
		try {
			Cursor cursor = db.query(TABLENAME, null, null, null, null, null, null );
			while(cursor.moveToNext()){
				//查询所有的数据
				EOAccountEntity entity = new EOAccountEntity();
				entity.setUsername(cursor.getString(cursor.getColumnIndex(USERNAME)))
				.setToken(cursor.getString(cursor.getColumnIndex(TOKEN)))
				.setTimestamp(cursor.getString(cursor.getColumnIndex(TIMESTAMP)))
				.setUserType(cursor.getString(cursor.getColumnIndex(USERTYPE)))
				.setUserId(cursor.getString(cursor.getColumnIndex(UID)));
				list.add(entity);
			}
			cursor.close();
			
			//删表
			db.execSQL("DROP TABLE " + TABLENAME);
			//建表
			db.execSQL(CREATE_DATABASE);
			db.execSQL(CREATE_DATA_TRACK_DATABASE);
			//重新存入数据
			for(EOAccountEntity entity : list){
				ContentValues values = new ContentValues();
				values.put(USERNAME, DES.encrypt(entity.username, USERNAME));//encrypt key已改成常量
				values.put(TOKEN, entity.token);
				values.put(TIMESTAMP, System.currentTimeMillis()/1000);
				values.put(USERTYPE,entity.userType);
				values.put(UID, DES.encrypt(entity.userId, UID));//encrypted key已改成常量
				db.insert(TABLENAME, "", values );
			}
			db.setTransactionSuccessful();
			Log.w(TAG, "升级数据库成功！");
		} catch (Exception e) {
			e.printStackTrace();
			Logger.getInstance().w(TAG, "数据库升级失败");
		}
		db.endTransaction();
	}
}
