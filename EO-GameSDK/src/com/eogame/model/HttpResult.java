package com.eogame.model;


import org.json.JSONException;
import org.json.JSONObject;

import android.R.integer;

import java.util.ArrayList;

public class HttpResult extends EOBaseObject {

	

	/**请求结果：成功*/
	public static final int RESULT_OK = 1;

	/**请求结果：失败*/
	public static final int RESULT_FAIL = -1;

	public static final int CODE_SUCCESS = 10000;  //请求接口成功。
	
	public static final int CODE_REPAY_SUCCESS = 90008; //订单已经发放成功无需再补。
	public static final int CODE_TOKEN_TIME_OUT = 90038; //token 已经过期。需要重新登录。


	/**网络请求错误常量*/
	public static final	int RESULT_SERVER_ERROR = 3;
	public static final int RESULT_NET_ERROR    = 4;
	public static final int RESULT_JSON_ERROR   = 5;
	public static final int RESULT_ADDRESS_NOT_EXIST = 6;
	public static final	int RESULT_SERVER_RESULT_ERROR = 7;
	
	/**数据埋点提交日志的网络请求应当停止尝试的网络错误类型
	 * 设置result为此值时，应当停止提交数据的尝试
	 * */
	public static final int RESULT_TRACK_SHOULD_STOP_ERROR = 51;


	//服务器返回信息
	private String mMessage = "未知错误";
	//服务器返回错误信息
	private String mErrors = "未知错误";
	//服务器返回的data数据
	private JSONObject mJsonData;
	
	//存储本次请求的url地址
	private String url = "";
	
	public HttpResult(){
	}
	
	public HttpResult(String url){
		this.url = url;
	}
	
	public String getUrl() {
		return url;
	}

	public JSONObject getmJsonData() {
		return mJsonData;
	}
	public void setmJsonData(JSONObject mJsonData) {
		this.mJsonData = mJsonData;
	}
	//保存数字
	private int number;

	private ArrayList<EOBaseObject> mDataList;

	private ArrayList<ArrayList<EOBaseObject>> mData;

	private EOBaseObject mObj;

	//服务器返回状态码
	private int mCode = RESULT_FAIL;

	private int mResult = RESULT_FAIL;

	private String orderid;
	private String prepayId;

	public String getErrors() {
		return mErrors;
	}
	public void setErrors(String mErrors) {
		this.mErrors = mErrors;
	}


	/**
	 * @return the orderid
	 */
	public String getOrderid() {
		return orderid;
	}
	/**
	 * @param orderid the orderid to set
	 */
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public ArrayList<ArrayList<EOBaseObject>> getData() {
		if(null == mData)
			mData = new ArrayList<ArrayList<EOBaseObject>>();
		return mData;
	}
	public void setData(ArrayList<ArrayList<EOBaseObject>> mData) {
		this.mData = mData;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

	public EOBaseObject getObj() {
		return mObj;
	}
	public void setObj(EOBaseObject mObj) {
		this.mObj = mObj;
	}
	public ArrayList<EOBaseObject> getDataList() {
		if(null == mDataList){
			mDataList = new ArrayList<EOBaseObject>();
		}
		return mDataList;
	}
	public void setDataList(ArrayList<EOBaseObject> mDataList) {
		this.mDataList = mDataList;
	}
	public String getMessage() {
		return mMessage;
	}
	public void setMessage(String mMessage) {
		this.mMessage = mMessage;
	}
	public int getCode() {
		return mCode;
	}
	public void setCode(int code) {
		this.mCode = code;
	}

	public static void setCommon(HttpResult result ,JSONObject jsonObject) throws JSONException{
		result.setCode(jsonObject.getInt("code"));
		result.setMessage(jsonObject.getString("msg"));
	}
	@Override
	public boolean equals(Object paramObject) {
		return false;
	}
	@Override
	public int hashCode() {
		return 0;
	}

	public String getPrepareId() {
		return prepayId;
	}
	public void setPrepareId(String prepayId) {
		this.prepayId = prepayId;
	}

	public int getResult() {
		return mResult;
	}

	public void setResult(int mResult) {
		this.mResult = mResult;
	}

	@Override
	public String toString() {
		return "HttpResult [mMessage=" + mMessage + ", mCode=" + mCode + ", orderid=" + orderid + ", number=" + number + ", mDataList=" + mDataList
				+ ", mData=" + mData + ", mObj=" + mObj + "]";
	}


}
