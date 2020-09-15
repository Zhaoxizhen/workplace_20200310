package com.eogame.web;

import android.util.Log;

import com.eogame.constants.Data;
import com.eogame.constants.EOCommon;
import com.eogame.crypto.MD5;
import com.eogame.http.SyncHttp;
import com.eogame.model.HttpResult;
import com.eogame.model.EOAccountEntity;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;

import org.json.JSONException;
import org.json.JSONObject;
import java.io.FileNotFoundException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;

import javax.net.ssl.SSLPeerUnverifiedException;

/**
 * 网络请求实现类
 * 
 * @author baofengzhang
 * 
 */
public class EOWebApiImpl implements EOWebApi {

	private static EOWebApiImpl instance = new EOWebApiImpl();

	public static EOWebApiImpl instance() {
		return instance;
	}

	public void setNormalResult(HttpResult result, JSONObject jsonObject){
		try {
			result.setCode(jsonObject.optInt("code"));
			result.setmJsonData(jsonObject.optJSONObject("data"));
			result.setMessage(jsonObject.optString("msg"));
		} catch (Exception e) {
			e.printStackTrace();
			result.setResult(HttpResult.RESULT_JSON_ERROR);
			result.setMessage(ResourceUtil.getInstance().getString("eo_error_json"));
		}
	}
	
	private void setFacebookUsersFriendsResult(HttpResult result,JSONObject jsonObject) {
		try {
			result.setCode(jsonObject.optInt("code"));
			result.setmJsonData(new JSONObject().put("data", jsonObject.optJSONArray("data")));
			result.setMessage(jsonObject.optString("msg"));
		} catch (Exception e) {
			e.printStackTrace();
			result.setResult(HttpResult.RESULT_JSON_ERROR);
			result.setMessage(ResourceUtil.getInstance().getString("eo_error_json"));
		}
		
	}

	@Override
	public HttpResult init() {
		HttpResult result = new HttpResult(Data.URL_GET_SERVER_INFO);
		try {
            String time = System.currentTimeMillis()/1000 +"";
			String sign = MD5.encode(EOCommon.gameCode + EOCommon.gameKey+time);
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("gc", EOCommon.gameCode);
            map.put("pn", EOCommon.packgeName);
            map.put("chnl",EOCommon.platformTag);
            map.put("t",time);
			map.put("sk", sign);
			String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
			JSONObject jsonObject = new JSONObject(string);

			setNormalResult(result, jsonObject);
		} catch (Exception e) {
			dealNetExecption(result, e);
		}
		return result;
	}

    @Override
    public HttpResult checkUpdate() {
	    HttpResult result = new HttpResult(Data.URL_GET_UPDATE_INFO);
	    try{
	        HashMap<String,String> map = new HashMap<String,String>();
	        map.put("gc",EOCommon.gameCode);
	        String string = new SyncHttp().httpPostByConnect(result.getUrl(),map);
	        Log.d("eocheckupdate","string:"+string);
	        JSONObject jsonObject = new JSONObject(string);
	        setNormalResult(result,jsonObject);
        } catch (Exception e) {
            e.printStackTrace();
            dealNetExecption(result, e);
        }
        return result;
    }

    @Override
    public String getNotice() {
	    String dataString = "";
	    try{
            HashMap<String,String> params = new HashMap<String, String>();
            params.put("packageName",EOCommon.packgeName);
            params.put("osType","0");
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(Data.URL_GET_NOTICE,params));
            int code = jsonObject.optInt("code");
            if(code == 10000){//成功
                dataString = jsonObject.optString("data");
                Logger.getInstance().d("dataString",dataString);
            }else if(code == 90056){
                Logger.getInstance().d("getNotice","该游戏包暂无公告信息");
                return "";
            }else{
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
	    return dataString;
    }

    @Override
	public HttpResult login(String username, String password) {
//		username = username.toLowerCase();
		HttpResult result = new HttpResult(Data.URL_LOGIN_NORMAL);
		try {
			String time = System.currentTimeMillis()/1000 + "";
			String sign = MD5.encode(username+EOCommon.gameKey +time);
            Log.d("eologin","md5success");
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("gc", EOCommon.gameCode);
			map.put("ln", username);
			map.put("pwd", MD5.encode(password));
            map.put("t",time);
			map.put("sk", sign);
			String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
            Log.d("eologin","string:"+string);
			JSONObject jsonObject = new JSONObject(string);
			setNormalResult(result, jsonObject);
			if (result.getCode() == HttpResult.CODE_SUCCESS) {
				result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data"), password));
			}
		} catch (Exception e) {
			e.printStackTrace();
			dealNetExecption(result, e);
		}
		return result;
	}

    @Override
    public HttpResult facebookLogin(String fid, String fName) {
        HttpResult result = new HttpResult(Data.URL_LOGIN_FOREIGN);
        try {
            String time = System.currentTimeMillis()/1000 + "";
            String sign = MD5.encode(fid+EOCommon.gameCode+EOCommon.gameKey +time);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("gc", EOCommon.gameCode);
            map.put("fid", fid);
            map.put("ln", fName);
            map.put("t",time);
            map.put("cf",EOAccountEntity.FB_TYPE);
            map.put("sk", sign);
            String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
            JSONObject jsonObject = new JSONObject(string);

            setNormalResult(result, jsonObject);
            if (result.getCode() == HttpResult.CODE_SUCCESS) {
                result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
            }
        } catch (Exception e) {
            e.printStackTrace();
            dealNetExecption(result, e);
        }
        return result;
    }

    @Override
    public HttpResult sendResetPwdEmail(String username) {
        HttpResult result = new HttpResult(Data.URL_FORGET_PWD);
        try {
            String time = System.currentTimeMillis()/1000 + "";
            String sign = MD5.encode(EOCommon.gameCode+EOCommon.gameKey +time+username);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("gc", EOCommon.gameCode);
            map.put("ln", username);
            map.put("t",time);
            map.put("sk", sign);
            String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
            JSONObject jsonObject = new JSONObject(string);

            setNormalResult(result, jsonObject);
//            if (result.getCode() == HttpResult.CODE_SUCCESS) {
//                result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
//                setNormalResult();
//            }

        } catch (Exception e) {
            e.printStackTrace();
            dealNetExecption(result, e);
        }
        return result;
    }


    @Override
    public HttpResult loginToken(String token){
        HttpResult result = new HttpResult(Data.URL_LOGIN_TOKEN);
        try {
            String time = System.currentTimeMillis()/1000L +"";
            String eoin =  MD5.encode(EOCommon.gameCode+EOCommon.gameKey+time+token);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("tk",token);
            map.put("t",time);
            map.put("sk",eoin);
            map.put("gc", EOCommon.gameCode);
            String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
            JSONObject jsonObject = new JSONObject(string);

            setNormalResult(result, jsonObject);
            if (result.getCode() == HttpResult.CODE_SUCCESS) {
                result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
            }
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

    /**
     * 绑定成平台账号
     * @param userNamae
     * @param pwd
     * @return
     */
    @Override
    public HttpResult bindForEO(String userNamae,String pwd){
        HttpResult result = new HttpResult(Data.URL_BIND_SANDCLASS);
        try {
            String time = System.currentTimeMillis()/1000L +"";
            String eoin =  MD5.encode(EOCommon.udid+userNamae+time+EOCommon.gameKey+MD5.encode(pwd)+EOCommon.gameCode);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("gln",EOCommon.udid);
            map.put("ln",userNamae);
            map.put("pwd",MD5.encode(pwd));
            map.put("t",time);
            map.put("sk",eoin);
            map.put("gc", EOCommon.gameCode);
            String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
            JSONObject jsonObject = new JSONObject(string);

            setNormalResult(result, jsonObject);
            if (result.getCode() == HttpResult.CODE_SUCCESS) {
                result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
            }
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

    public HttpResult bindForFacebook(String fid,String fbName){
        HttpResult result = new HttpResult(Data.URL_BIND_FACEBOOK);
        try {
            String time = System.currentTimeMillis()/1000L +"";
            String eoin =  MD5.encode(EOCommon.udid+time+fid+EOCommon.gameKey+EOCommon.gameCode);
            HashMap<String, String> map = new HashMap<String, String>();
            map.put("gln",EOCommon.udid);
            map.put("fid",fid);
            map.put("fbname",fbName);
            map.put("t",time);
            map.put("sk",eoin);
            map.put("gc", EOCommon.gameCode);
            String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
            JSONObject jsonObject = new JSONObject(string);

            setNormalResult(result, jsonObject);
            if (result.getCode() == HttpResult.CODE_SUCCESS) {
                result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
            }
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

	@Override
	public HttpResult regist(String username, String pwd) {
		username = username.toLowerCase();
		HttpResult result = new HttpResult(Data.URL_REGISTER);
		try {
            String time = System.currentTimeMillis()/1000L +"";
			String sign = MD5.encode(username+EOCommon.gameCode + EOCommon.gameKey+time);
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("gc", EOCommon.gameCode);
			map.put("ln", username);
			map.put("pwd", MD5.encode(pwd));
			map.put("t", time);
			map.put("sk", sign);
			String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
			JSONObject jsonObject = new JSONObject(string);

			setNormalResult(result, jsonObject);
			if (result.getCode() == HttpResult.CODE_SUCCESS) {
				result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
			}
		} catch (Exception e) {
			dealNetExecption(result, e);
		}
		return result;
	}

	@Override
	public HttpResult guestLogin(String deviceId) {
		HttpResult result = new HttpResult(Data.URL_LOGIN_VISITOR);
		try {
            String time = System.currentTimeMillis()/1000L +"";
			String sign = MD5.encode(deviceId+EOCommon.gameCode + EOCommon.gameKey+time);
			Logger.getInstance().d("eotest","MD5 fail");
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("gc", EOCommon.gameCode);
			map.put("gln", deviceId);
			map.put("t", time);
			map.put("sk", sign);
			String string = new SyncHttp().httpPostByConnect(result.getUrl(), map);
			JSONObject jsonObject = new JSONObject(string);

			setNormalResult(result, jsonObject);
			if (result.getCode() == HttpResult.CODE_SUCCESS) {
				result.setObj(EOAccountEntity.getEntityFromJson(jsonObject.getJSONObject("data")));
			}
		} catch (Exception e) {
            Log.d("eologin","guestLogin exception");
			dealNetExecption(result, e);
		}
		return result;
	}


	public static void dealNetExecption(HttpResult httpResult, Exception e) {
//		TrackPresenter.getInstance().addNetLog(TrackPresenter.EStatus.FAIL, httpResult.getUrl(), e, HttpUtils.isPayUrl(httpResult.getUrl()));
		if (e instanceof SocketTimeoutException) {
			//网络较差，超时
			httpResult.setResult(HttpResult.RESULT_SERVER_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_net_timeout"));
		} else if (e instanceof UnknownHostException) {
			//完全断网
			httpResult.setResult(HttpResult.RESULT_NET_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_net_exception"));
		} else if(e instanceof ConnectException){
			httpResult.setResult(HttpResult.RESULT_NET_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_net_exception"));
		}else if(e instanceof SSLPeerUnverifiedException){
			//时间错误会有此提示
			httpResult.setResult(HttpResult.RESULT_NET_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_net_certificate_expired"));
		}else if(e instanceof JSONException){
			//服务端返回的数据不是json格式
			httpResult.setResult(HttpResult.RESULT_JSON_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_json"));
		}else if(e instanceof FileNotFoundException){
			//接口地址错误、服务端未上线等情况，也就是404
			httpResult.setResult(HttpResult.RESULT_ADDRESS_NOT_EXIST);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_sys_exception") + HttpResult.RESULT_ADDRESS_NOT_EXIST);
		}else if(e instanceof ProtocolException){
			//服务端返回的数据不符合http协议（几乎不会出现）
			httpResult.setResult(HttpResult.RESULT_SERVER_RESULT_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_sys_exception") + HttpResult.RESULT_SERVER_RESULT_ERROR);
		}else{
			httpResult.setResult(HttpResult.RESULT_SERVER_ERROR);
			httpResult.setMessage(ResourceUtil.getInstance().getString("eo_error_unkonw_exception") + "\n" + e.getClass().getName());
		}
		e.printStackTrace();
	}

    @Override
	public HttpResult getPayChannels(String userId,String roleLevel) {
		HttpResult result = new HttpResult(Data.URL_QUERY_PAYWAY);
		try {
		    String time = System.currentTimeMillis()/1000L + "";
		    Logger.getInstance().e("eo", "packgeName:"+EOCommon.packgeName+"gameKey:"+EOCommon.gameKey+"time:"+time+"gameCode"+EOCommon.gameCode);
		    String sign = MD5.encode(EOCommon.packgeName+EOCommon.gameKey+time+EOCommon.gameCode);
			HashMap<String,String> map = new HashMap<String, String>();
			map.put("t",time);
			map.put("gc",EOCommon.gameCode);
			map.put("pn",EOCommon.packgeName);
			map.put("uid", userId);
			map.put("gl", roleLevel);
			map.put("sk", sign);
			JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(result.getUrl(),map));

			setNormalResult(result, jsonObject);
		} catch (Exception e) {
			dealNetExecption(result, e);
		}
		return result;
	}

    @Override
    public HttpResult createPayOrder(String userId,EORoleInfo roleInfo, EOPayInfo payInfo) {//TODO 创建订单号
        HttpResult result = new HttpResult(Data.URL_CREATE_ORDER);
        try {
            String time = System.currentTimeMillis()/1000L +"";
            String sign = MD5.encode(payInfo.getProductId()+payInfo.getProductName()+userId+EOCommon.gameCode+ EOCommon.gameKey+time);
            HashMap<String,String> params = new HashMap<String,String>();
            params.put("uid",userId);
            params.put("cpid",payInfo.getCpOrderId());
            params.put("money",payInfo.getPrice()+"");
            params.put("rid",roleInfo.getRoleId());
            params.put("rn",URLEncoder.encode(roleInfo.getRoleName()));
            params.put("gl",roleInfo.getRoleLevel() +"");
            params.put("gid",payInfo.getProductId());
            params.put("gn",URLEncoder.encode(payInfo.getProductName()));
            //params.put("gn", payInfo.getProductName());
            params.put("serverId",roleInfo.getServerId());
            params.put("pn",EOCommon.packgeName);
            params.put("pc","2");  //Google play 为2 。
            params.put("ext",URLEncoder.encode(payInfo.getExtInfo()));
            //params.put("ext", payInfo.getExtInfo());
            params.put("t",time);
            params.put("gc",EOCommon.gameCode);
            params.put("sk",sign);
//            HashMap<String,String> map = new HashMap<String, String>();
//            map.put("packageVersion", EOCommon.gameVersion);
            Logger.getInstance().e("createPayOrder","ext:"+payInfo.getExtInfo());
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(result.getUrl(),params));

            setNormalResult(result, jsonObject);
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

    @Override
    public HttpResult verifyPayOrder(String userID,String orderId,String productID,String repateData,String signData) {
        HttpResult result = new HttpResult(Data.URL_VERIFY_ORDER);
        try {
            HashMap<String,String> params = new HashMap<String,String>();
            String time = System.currentTimeMillis()/1000L +"";
            String sign = MD5.encode(userID+EOCommon.gameKey+MD5.encode(orderId) +orderId+time);
            params.put("uid",userID);
            params.put("gid",productID);
            params.put("rd",repateData);
            params.put("sgno",orderId);
            params.put("t",time);
            params.put("gc",EOCommon.gameCode);
            params.put("gsk",signData);
            params.put("sk",sign);
//            HashMap<String,String> map = new HashMap<String, String>();
//            map.put("packageVersion", EOCommon.gameVersion);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(result.getUrl(),params));
            Logger.getInstance().e("verifyPayOrder jsonObject result",jsonObject.toString());
            setNormalResult(result, jsonObject);
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

    @Override
    public HttpResult getUserIdsForFacebookIds(String jsonFidArray) {
        HttpResult result = new HttpResult(Data.URL_GET_FRIENDS_IDS);
        try {
            HashMap<String,String> params = new HashMap<String,String>();
            String time = System.currentTimeMillis()/1000L +"";
            String sign = MD5.encode(EOCommon.gameCode + EOCommon.gameKey+time+jsonFidArray);
            params.put("fidArr",jsonFidArray);
            params.put("t",time);
            params.put("gc",EOCommon.gameCode);
            params.put("sk",sign);
//            HashMap<String,String> map = new HashMap<String, String>();
//            map.put("packageVersion", EOCommon.gameVersion);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(result.getUrl(),params));

            setFacebookUsersFriendsResult(result, jsonObject);
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

    @Override
    public HttpResult getPayItems(String payChannel,String currencyCode) {
        HttpResult result = new HttpResult(Data.URL_GET_PAYITEMS);
        try{
            HashMap<String,String> params = new HashMap<String, String>();
            params.put("gameCode",EOCommon.gameCode);
            params.put("payChannel",payChannel);
            params.put("currencyCode",currencyCode);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(result.getUrl(),params));
            Logger.getInstance().d("getPayItems",jsonObject.toString());
            result.setCode(jsonObject.getInt("code"));
            result.setmJsonData(new JSONObject().put("payItems", jsonObject.optJSONArray("payItems")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public HttpResult sendLog(int logType,Map<String, String> map) {
        HttpResult result = new HttpResult(Data.URL_SEND_LOG);
        try {
            HashMap<String,String> params ;
            if(map == null) {
            		params = new HashMap<String,String>();
            }else {
            		params = new HashMap<String,String>(map);
            }
            String time = System.currentTimeMillis()/1000L +"";
            String sign = MD5.encode(EOCommon.gameKey+time + EOCommon.gameCode);
            params.put("lt", logType+"");
            params.put("t",time);
            params.put("gc",EOCommon.gameCode);
            params.put("sk",sign);
//            HashMap<String,String> map = new HashMap<String, String>();
//            map.put("packageVersion", EOCommon.gameVersion);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(result.getUrl(),params));

            setNormalResult(result, jsonObject);
        } catch (Exception e) {
            dealNetExecption(result, e);
        }
        return result;
    }

}
