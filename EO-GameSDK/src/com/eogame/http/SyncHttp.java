package com.eogame.http;

//import com.joygames.presenter.TrackPresenter;

import android.util.Log;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/**
 * 
 * 以同步方式发送Http请求
 */
public class SyncHttp {

	public static final int TIMEOUT 	   = 30 * 1000;
	public static final int TIMEOUT_SOCKET = 30 * 1000;

	/**
	 * 通过GET方式发送请求
	 * 
	 * @param url
	 *            URL地址
	 * @param params
	 *            参数
	 * @return
	 * @throws Exception
	 * @throws Exception
	 */
	public static HttpEntity httpGet(String url, String params) throws Exception {
		HttpEntity entity = null;
		int statusCode = 0;

		try {

			HttpParams httpParams = new BasicHttpParams();
			HttpConnectionParams.setConnectionTimeout(httpParams, TIMEOUT);
			HttpConnectionParams.setSoTimeout(httpParams, TIMEOUT_SOCKET);
			HttpConnectionParams.setStaleCheckingEnabled(httpParams, false);
			HttpClientParams.setRedirecting(httpParams, false);

			HttpClient httpClient = new DefaultHttpClient(getConnectionManager(httpParams), httpParams);
			HttpGet httpGet = new HttpGet(url);

			if (params != null) {
				httpGet.addHeader("Range", params);
			}

			HttpResponse httpResponse = httpClient.execute(httpGet);
			statusCode = httpResponse.getStatusLine().getStatusCode();

			if (statusCode == HttpStatus.SC_OK) {
				entity = httpResponse.getEntity();
				return entity;
			} else if (statusCode == HttpStatus.SC_PARTIAL_CONTENT) {
				entity = httpResponse.getEntity();
				return entity;
			} else {
				throw new IOException();
			}
		} catch (IOException e) {
			throw e;
		}
	}

	public static ClientConnectionManager getConnectionManager(HttpParams params) {
		SSLSocketFactory factory = SSLSocketFactory.getSocketFactory();
		try {
			KeyStore trustStore = KeyStore.getInstance(KeyStore.getDefaultType());
			trustStore.load(null, null);
			factory = new EOSSLSocketFactory(trustStore);
			factory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
		} catch (Exception e) {
			e.printStackTrace();
		}

		SchemeRegistry schemeRegistry = new SchemeRegistry();
		schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
		schemeRegistry.register(new Scheme("https", factory, 443));
		ClientConnectionManager manager = new ThreadSafeClientConnManager(params, schemeRegistry);
		return manager;
	}


	public String httpPostByConnect(String url, HashMap<String, String> map) throws Exception{
//		TrackPresenter.getInstance().addNetLog(TrackPresenter.EStatus.START, url, null,HttpUtils.isPayUrl(url));
//		HttpUtils.addParameters(map);
		Log.d("httpPostByConnect","start httpPost="+url);
		Log.d("httpPostByConnect","map:"+map.toString());
		String result = httpPost(url, map);
		Log.d("httpPostByConnect","result="+result);
//		TrackPresenter.getInstance().addNetLog(TrackPresenter.EStatus.END, result, null,HttpUtils.isPayUrl(url));
		return result;
	}
	
	public String httpPost(String url, HashMap<String, String> map)throws Exception {
		String result = "";
		if(url.startsWith("http://")){
			//http请求
			URL httpRrl = new URL(url);
			HttpURLConnection httpURLConnection = (HttpURLConnection) httpRrl.openConnection();
			httpURLConnection.setRequestMethod("POST");

			// 发送POST请求必须设置如下两行
			httpURLConnection.setDoOutput(true);
			httpURLConnection.setDoInput(true);
			httpURLConnection.setConnectTimeout(TIMEOUT);
			httpURLConnection.setReadTimeout(TIMEOUT);
			httpURLConnection.addRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
			httpURLConnection.addRequestProperty("accept", "application/json");
			HttpUtils.addCommonParametersToHeader(httpURLConnection);
			// 获取URLConnection对象对应的输出流
			PrintWriter printWriter = new PrintWriter(httpURLConnection.getOutputStream());
			// 发送请求参数
			Log.d("SyncHttp","getParams:"+getParams(map));
			printWriter.write(getParams(map));//post的参数 xx=xx&yy=yy
			printWriter.flush();
			//开始获取数据
			BufferedInputStream bis = new BufferedInputStream(httpURLConnection.getInputStream());
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			int len;
			byte[] arr = new byte[1024];
			while((len=bis.read(arr))!= -1){
				bos.write(arr,0,len);
				bos.flush();
			}
			result = bos.toString("utf-8");
			bos.close();
			bos = null;
			bis.close();
			httpURLConnection.disconnect();
		}else{
			//https请求
			TrustManager[] tm = {trustManager};
			SSLContext sslContext = SSLContext.getInstance("TLS");
			sslContext.init(null, tm, new java.security.SecureRandom());
			javax.net.ssl.SSLSocketFactory socketFactory = sslContext.getSocketFactory();

			URL httpsUrl = new URL(url);
			HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpsUrl.openConnection();

			httpsURLConnection.setSSLSocketFactory(socketFactory);    
			httpsURLConnection.setDoOutput(true);    
			httpsURLConnection.setDoInput(true);    
			httpsURLConnection.setUseCaches(false);
			httpsURLConnection.setConnectTimeout(TIMEOUT);
			httpsURLConnection.setReadTimeout(TIMEOUT);
			httpsURLConnection.addRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=utf-8");
			httpsURLConnection.addRequestProperty("accept", "application/json");
			HttpUtils.addCommonParametersToHeader(httpsURLConnection);

			httpsURLConnection.setRequestMethod("POST");

			PrintWriter printWriter = new PrintWriter(httpsURLConnection.getOutputStream());
			printWriter.write(getParams(map)); 
			printWriter.flush();

			//开始获取数据
			BufferedInputStream bis = new BufferedInputStream(httpsURLConnection.getInputStream());
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			int len;
			byte[] arr = new byte[1024];
			while((len=bis.read(arr))!= -1){
				bos.write(arr,0,len);
				bos.flush();
			}
			result = bos.toString("utf-8");
			bos.close();
			// 释放资源     
			bis.close();    
			bos = null;    
			httpsURLConnection.disconnect();
		}
		return result;
	}

	private String getParams(HashMap<String, String> map) {
		StringBuffer buffer = new StringBuffer();
		Set<String> keySet = map.keySet();
		Iterator<String> iterator = keySet.iterator();
		while(iterator.hasNext()){
			String key = iterator.next();
			buffer.append(key).append("=").append(map.get(key)).append("&");
		}
		String params = buffer.toString();
		return params.substring(0, params.length() - 1);
	}

	private TrustManager trustManager = new X509TrustManager() {

		@Override
		public X509Certificate[] getAcceptedIssuers() {
			return null;
		}

		@Override
		public void checkServerTrusted(X509Certificate[] chain, String authType)
				throws CertificateException {
		}

		@Override
		public void checkClientTrusted(X509Certificate[] chain, String authType)
				throws CertificateException {
		}
	};
}
