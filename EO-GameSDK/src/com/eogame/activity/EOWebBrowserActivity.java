package com.eogame.activity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Build;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.eo.games.sdk.R;
import com.eogame.base.BasePage;
import com.eogame.constants.EOCommon;
import com.eogame.http.SyncHttp;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.utils.Logger;

import org.json.JSONObject;

import java.util.HashMap;

public class EOWebBrowserActivity extends BasePage {
    private WebView mWebView;
    private LinearLayout mRoot;
    private TextView mTextView;
    private WebSettings mWebSettings;
    private String mUrl = "";

    private String uid;
    private EORoleInfo roleInfo;
    private EOPayInfo payInfo;
    private String gameCode;
    private String amount;
    private String serverId;
    private String roleId;
    private String roleName;
    private String roleLevel;
    private String channelId;
    private String currencyCode;
    private String packageName;
    private String itemCode;
    private String price;
    private String currency;
    private String productName;

    private static final String SSL_NOTIFICATION = "SSL认证失败,是否继续访问?";

    @Override
    protected void onClick(View v, int id) {

    }

    @Override
    protected void initData() {
        roleInfo = (EORoleInfo) mContext.getIntent().getSerializableExtra("roleInfo");
        payInfo = (EOPayInfo) mContext.getIntent().getSerializableExtra("payInfo");
        uid = (String) mContext.getIntent().getSerializableExtra("uid");
        gameCode = EOCommon.gameCode;
        serverId = roleInfo.getServerId();
        price = payInfo.getPrice()+"";
        amount = payInfo.getPrice()/100+"";//原金额单位为分 需换算成元
        itemCode = payInfo.getProductId();
        roleId = roleInfo.getRoleId();
        roleName = roleInfo.getRoleName();
        roleLevel = roleInfo.getRoleLevel()+"";
        channelId = (String) mContext.getIntent().getSerializableExtra("channelId");
        currencyCode = (String) mContext.getIntent().getSerializableExtra("currencyCode");
        productName = payInfo.getProductName();
        currency = currencyCode;
        packageName = getPackageName();

        if("5".equals(channelId)||"6".equals(channelId)){
            mUrl = (String) mContext.getIntent().getSerializableExtra("razerPayUrl");
            GetRazerUrlTask getRazerUrlTask = new GetRazerUrlTask(mUrl,uid,gameCode,serverId,amount,roleId,roleName,roleLevel,channelId,currencyCode,packageName);
            getRazerUrlTask.execute();
        }else if("9".equals(channelId)){
            mUrl = (String) mContext.getIntent().getSerializableExtra("XsollaPayUrl");
            GetXsollaUrlTask getXsollaUrlTask = new GetXsollaUrlTask(mUrl,uid,gameCode,serverId,price,roleId,roleName,roleLevel,currency,packageName,itemCode,productName);
            getXsollaUrlTask.execute();
        }else if("8".equals(channelId)){
            mUrl = (String) mContext.getIntent().getSerializableExtra("CodapayUrl");
            GetCodaPayUrlTask getCodaPayUrlTask = new GetCodaPayUrlTask(mUrl,uid,gameCode,serverId,price,roleName,roleLevel,channelId,currency,itemCode,roleId,packageName,productName);
            getCodaPayUrlTask.execute();
        }
        Logger.getInstance().d("EOWebBrowserActivity","mUrl:" + mUrl);



        //TODO 向服务器请求充值跳转地址

    }

    //TODO 使用此页面统一处理不同支付渠道充值请求,根据channelId切换模式页面模式

    @Override
    protected void initListener() {

    }

    @Override
    protected void initView() {
        setContentView(R.layout.eo_layout_webbrowser);
        mTextView = findViewById(R.id.eo_layout_webbrowser_Tv);
        mWebView = findViewById(R.id.eo_layout_webbrowser_webview);
        mRoot = findViewById(R.id.eo_layout_webbrowser_root);
        mWebSettings = mWebView.getSettings();
        mWebSettings.setJavaScriptEnabled(true);
        mWebSettings.setDomStorageEnabled(true);
        mWebSettings.setUseWideViewPort(true);
        mWebSettings.setLoadWithOverviewMode(true);
        mWebSettings.setSupportZoom(true);
        mWebSettings.setBuiltInZoomControls(true);
        mWebSettings.setDisplayZoomControls(false);
        mWebSettings.setCacheMode(WebSettings.LOAD_CACHE_ELSE_NETWORK);
        mWebSettings.setLoadsImagesAutomatically(true);
        mWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
        mWebSettings.setDefaultTextEncodingName("UTF-8");

        if(Build.VERSION.SDK_INT>=Build.VERSION_CODES.LOLLIPOP){
            mWebSettings.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        }

        mWebView.setWebViewClient(new WebViewClient(){
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if(url == null){
                    return false;
                }
                if (url.startsWith("http://") || url.startsWith("https://")){
                    view.loadUrl(url);
                }else {
                    Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));//非http或https请求
                    startActivity(intent);
                }
                return true;
            }

            @Override
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                mTextView.setVisibility(View.GONE);//TODO 页面加载完成后再关闭
            }

            @Override
            public void onReceivedSslError(WebView view, final SslErrorHandler handler, SslError error) {
                final AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
                builder.setMessage(SSL_NOTIFICATION);
                builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        handler.proceed();
                    }
                });
                builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        handler.cancel();
                    }
                });
                final AlertDialog dialog = builder.create();
                dialog.show();
            }
        });

    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        if(mWebView!=null){
            mRoot.removeView(mWebView);
            mWebView.removeAllViews();
            mWebView.destroy();
        }
    }

    @Override
    protected void clear() {

    }

    /**
     * 获取Razer充值跳转地址
     * @return
     */
    private String getRazerPayUrl(String url,String uid,String gameCode,String serverId,String amount,String roleId,String roleName,String roleLevel,String channelId,String currencyCode,String packageName){
        String paymentUrl = "";
        try {
        HashMap<String,String> params = new HashMap<String,String>();
        params.put("uid",uid);
        params.put("gameCode",gameCode);
        params.put("serverId",serverId);
        params.put("amount",amount);
        params.put("roleId",roleId);
        params.put("roleName",roleName);
        params.put("roleLevel",roleLevel);
        params.put("channelId",channelId);
        params.put("currencyCode",currencyCode);
        params.put("packageName",packageName);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(url,params));
            if(jsonObject==null){
                Logger.getInstance().d("jsonObject","jsonObject is null");
                return null;
            }
            Logger.getInstance().d("jsonObject",jsonObject.toString());
            int code = jsonObject.optInt("code");
            if(code==0){
                paymentUrl = jsonObject.optString("paymentUrl");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return paymentUrl;
    }

    class GetRazerUrlTask extends AsyncTask<String,Integer,String>{
        String url;
        String uid;
        String gameCode;
        String serverId;
        String amount;
        String roleName;
        String roleLevel;
        String channelId;
        String currencyCode;
        String roleId;
        String packageName;

        public GetRazerUrlTask(String url, String uid, String gameCode, String serverId, String amount, String roleId,String roleName, String roleLevel, String channelId, String currencyCode, String packageName) {
            this.url = url;
            this.uid = uid;
            this.gameCode = gameCode;
            this.serverId = serverId;
            this.amount = amount;
            this.roleId = roleId;
            this.roleName = roleName;
            this.roleLevel = roleLevel;
            this.channelId = channelId;
            this.currencyCode = currencyCode;
            this.packageName = packageName;
        }

        @Override
        protected String doInBackground(String... strings) {
            Logger.getInstance().d("EOWebBrowserActivity","start to get paymentUrl");
            String paymentUrl = getRazerPayUrl(url,uid,gameCode,serverId,amount,roleId,roleName,roleLevel,channelId,currencyCode,packageName);
            return paymentUrl;
        }

        @Override
        protected void onPostExecute(String paymentUrl) {
            super.onPostExecute(paymentUrl);
            Logger.getInstance().d("EOWebBrowserActivity","paymentUrl:"+paymentUrl);

            mTextView.setVisibility(View.GONE);
            mWebView.loadUrl(paymentUrl);//拿到跳转地址后立即访问
            mWebView.setWebViewClient(new WebViewClient(){
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    view.loadUrl(url);
                    return true;
                }

                @Override
                public void onPageFinished(WebView view, String url) {
                    super.onPageFinished(view, url);
                    mTextView.setVisibility(View.GONE);//TODO 页面加载完成后再关闭
                }

                @Override
                public void onReceivedSslError(WebView view, final SslErrorHandler handler, SslError error) {
                    final AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
                    builder.setMessage(SSL_NOTIFICATION);
                    builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            handler.proceed();
                        }
                    });
                    builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            handler.cancel();
                        }
                    });
                    final AlertDialog dialog = builder.create();
                    dialog.show();
                }
            });



        }

        @Override
        protected void onCancelled() {
            super.onCancelled();
        }
    }

    /**
     * 获取Xsolla充值跳转地址
     * @return
     */
    private String getXsollaPayUrl(String url,String uid,String gameCode,String serverId,String price,String roleId,String roleName,String roleLevel,String currency,String packageName,String itemCode,String productName){
        String paymentUrl = "";
        try {
            HashMap<String,String> params = new HashMap<String,String>();
            params.put("uid",uid);
            params.put("gameCode",gameCode);
            params.put("serverId",serverId);
            params.put("price",price);
            params.put("roleId",roleId);
            params.put("roleName",roleName);
            params.put("roleLevel",roleLevel);
            params.put("currency",currency);
            params.put("packageName",packageName);
            params.put("itemCode",itemCode);
            params.put("productName",productName);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(url,params));
            if(jsonObject==null){
                Logger.getInstance().d("jsonObject","jsonObject is null");
                return null;
            }
            Logger.getInstance().d("jsonObject",jsonObject.toString());
            int code = jsonObject.optInt("code");
            if(code==0){
                paymentUrl = jsonObject.optString("payUrl");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return paymentUrl;
    }

    class GetXsollaUrlTask extends AsyncTask<String,Integer,String>{
        String url;
        String uid;
        String gameCode;
        String serverId;
        String itemCode;
        String price;
        String roleName;
        String roleLevel;
        String currency;
        String roleId;
        String packageName;
        String productName;

        public GetXsollaUrlTask(String url, String uid, String gameCode, String serverId, String price, String roleId,String roleName, String roleLevel, String currency, String packageName,String itemCode,String productName) {
            this.url = url;
            this.uid = uid;
            this.gameCode = gameCode;
            this.serverId = serverId;
            this.price = price;
            this.roleId = roleId;
            this.roleName = roleName;
            this.roleLevel = roleLevel;
            this.currency = currency;
            this.packageName = packageName;
            this.itemCode = itemCode;
            this.productName = productName;
        }

        @Override
        protected String doInBackground(String... strings) {
            Logger.getInstance().d("EOWebBrowserActivity","start to get paymentUrl");
            String paymentUrl = getXsollaPayUrl(url,uid,gameCode,serverId,price,roleId,roleName,roleLevel,currency,packageName,itemCode,productName);
            Logger.getInstance().d("EOWebBrowserActivity","paymentUrl:"+paymentUrl);
            return paymentUrl;
        }

        @Override
        protected void onPostExecute(String paymentUrl) {
            super.onPostExecute(paymentUrl);
            Logger.getInstance().d("EOWebBrowserActivity","paymentUrl:"+paymentUrl);

            mWebView.loadUrl(paymentUrl);//拿到跳转地址后立即访问
            mWebView.setWebViewClient(new WebViewClient(){
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    view.loadUrl(url);
                    return true;
                }

                @Override
                public void onPageFinished(WebView view, String url) {
                    super.onPageFinished(view, url);
                    mTextView.setVisibility(View.GONE);//TODO 页面加载完成后再关闭
                }

                @Override
                public void onReceivedSslError(WebView view, final SslErrorHandler handler, SslError error) {
                    final AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
                    builder.setMessage(SSL_NOTIFICATION);
                    builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            handler.proceed();
                        }
                    });
                    builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            handler.cancel();
                        }
                    });
                    final AlertDialog dialog = builder.create();
                    dialog.show();
                }
            });


        }

        @Override
        protected void onCancelled() {
            super.onCancelled();
        }
    }

    //TODO 增加获取codapay的paymentUrl方法和asynctask异步类 等待后台充值服务端的接口
    /**
     * 获取codapay跳转地址
     * @return
     */
    private String getCodaPayUrl(String url,String uid,String gameCode,String serverId,String price,String roleName,String roleLevel,String channelId,String currencyCode,String itemCode,String roleId,String packageName,String productName){
        String paymentUrl = "";
        try {
            HashMap<String,String> params = new HashMap<String,String>();
            params.put("uid",uid);
            params.put("gameCode",gameCode);
            params.put("serverId",serverId);
            params.put("price",price);
            params.put("roleName",roleName);
            params.put("roleLevel",roleLevel);
            params.put("channelId",channelId);
            params.put("currencyCode",currencyCode);
            params.put("itemCode",itemCode);
            params.put("roleId",roleId);
            params.put("packageName",packageName);
            params.put("productName",productName);
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(url,params));
            if(jsonObject==null){
                Logger.getInstance().d("jsonObject","jsonObject is null");
                return null;
            }
            Logger.getInstance().d("jsonObject",jsonObject.toString());
            int code = jsonObject.optInt("code");
            if(code==0){
                paymentUrl = jsonObject.optString("payUrl");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return paymentUrl;
    }

    class GetCodaPayUrlTask extends AsyncTask<String,Integer,String>{
        String url;
        String uid;
        String gameCode;
        String serverId;
        String price;
        String roleName;
        String roleLevel;
        String channelId;
        String currencyCode;
        String itemCode;
        String roleId;
        String packageName;
        String productName;

        @Override
        public String toString() {
            return "GetCodaPayUrlTask{" +
                    "url='" + url + '\'' +
                    ", uid='" + uid + '\'' +
                    ", gameCode='" + gameCode + '\'' +
                    ", serverId='" + serverId + '\'' +
                    ", price='" + price + '\'' +
                    ", roleName='" + roleName + '\'' +
                    ", roleLevel='" + roleLevel + '\'' +
                    ", channelId='" + channelId + '\'' +
                    ", currencyCode='" + currencyCode + '\'' +
                    ", itemCode='" + itemCode + '\'' +
                    ", roleId='" + roleId + '\'' +
                    ", packageName='" + packageName + '\'' +
                    ", productName='" + productName + '\'' +
                    '}';
        }

        public GetCodaPayUrlTask(String url, String uid, String gameCode, String serverId, String price, String roleName, String roleLevel, String channelId, String currencyCode, String itemCode, String roleId, String packageName, String productName) {
            this.url = url;
            this.uid = uid;
            this.gameCode = gameCode;
            this.serverId = serverId;
            this.price = price;
            this.roleName = roleName;
            this.roleLevel = roleLevel;
            this.channelId = channelId;
            this.currencyCode = currencyCode;
            this.itemCode = itemCode;
            this.roleId = roleId;
            this.packageName = packageName;
            this.productName = productName;
            Logger.getInstance().d("Codapay param",toString());
        }

        @Override
        protected String doInBackground(String... strings) {
            Logger.getInstance().d("EOWebBrowserActivity","start to get paymentUrl");
            //String paymentUrl = getCodaPayUrl(url,uid,gameCode,serverId,price,roleId,roleName,roleLevel,channelId,currency,itemCode,packageName,productName);
            String paymentUrl = getCodaPayUrl(url,uid,gameCode,serverId,price,roleName,roleLevel,channelId,currencyCode,itemCode,roleId,packageName,productName);
            //String url,String uid,String gameCode,String serverId,String price,String roleName,String roleLevel,String channelId,String currency,String itemCode,String roleId,String packageName,String productName
            Logger.getInstance().d("EOWebBrowserActivity","paymentUrl:"+paymentUrl);
            return paymentUrl;
        }

        @Override
        protected void onPostExecute(String paymentUrl) {
            super.onPostExecute(paymentUrl);
            Logger.getInstance().d("EOWebBrowserActivity","paymentUrl:"+paymentUrl);

            paymentUrl = paymentUrl+"&browser_type=mobile-web";//移动端适配
            mWebView.loadUrl(paymentUrl);//拿到跳转地址后立即访问
            mWebView.setWebViewClient(new WebViewClient(){
                @Override
                public boolean shouldOverrideUrlLoading(WebView view, String url) {
                    view.loadUrl(url);
                    return true;
                }

                @Override
                public void onPageFinished(WebView view, String url) {
                    super.onPageFinished(view, url);
                    mTextView.setVisibility(View.GONE);//TODO 页面加载完成后再关闭
                }

                @Override
                public void onReceivedSslError(WebView view, final SslErrorHandler handler, SslError error) {
                    final AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
                    builder.setMessage(SSL_NOTIFICATION);
                    builder.setPositiveButton("确定", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            handler.proceed();
                        }
                    });
                    builder.setNegativeButton("取消", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            handler.cancel();
                        }
                    });
                    final AlertDialog dialog = builder.create();
                    dialog.show();
                }
            });


        }
    }
}
