package com.eogame.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.AsyncTask;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;

import com.eo.games.sdk.R;
import com.eogame.base.BasePage;
import com.eogame.constants.Data;
import com.eogame.constants.EOCommon;
import com.eogame.http.SyncHttp;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;
import com.eogame.model.HttpResult;
import com.eogame.utils.Logger;
import com.eogame.utils.ResourceUtil;
import com.eogame.web.EOWebApi;
import com.eogame.web.EOWebApiImpl;


import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;


public class EOWebPayActivity extends BasePage {
    public static final String TAG = "EOWebPayActivity";
    //界面相关
    public static EOWebPayActivity instance;
    private TextView mUsernameTv;
    private TextView mUidTv;
    private TextView mServerNameTv;
    private TextView mRoleNameTv;
    private TextView mRoleLevelTv;
    private Spinner mAreaSp;
    private Spinner mChannelSp;
    private Spinner mItemSp;
    private Button mConfirmBtn;

    private String userName;
    private EORoleInfo roleInfo;
    private EOPayInfo payInfo;

    //充值所用参数
    private String uid = "";
    private String pn = "";//packageName
    private String gc = "";//gameCode
    private String sc = "";
    private String url = Data.URL_WEB_PAY;

    private String[] areaArray;
    private String[] currencyCodeArray;
    private String payChannel;
    private String currencyCode;

    private GetItemTask getItemTask;


    @Override
    protected void onClick(View v, int id) {


    }



    @Override
    protected void initData() {

        initInfo();
        initSpinnerData();

    }

    private void initSpinnerData(){

        ArrayAdapter<String> areaAdapter = new ArrayAdapter<String>(mContext,R.layout.eo_pay_list_item,areaArray);

        mAreaSp.setAdapter(areaAdapter);
        /**
         * 地区选择监听
         */
        mAreaSp.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                String[] channelArray = {};
                ArrayAdapter<String> channelAdapter;
                switch (position){
                    case 1://香港
                        currencyCode = currencyCodeArray[0];
                        channelArray = getResources().getStringArray(R.array.eo_pay_channel_Hongkong);
                        break;
                    case 2://台湾
                        currencyCode = currencyCodeArray[1];
                        channelArray = getResources().getStringArray(R.array.eo_pay_channel_Taiwan);
                        break;
                    case 3://新加坡
                        currencyCode = currencyCodeArray[2];
                        channelArray = getResources().getStringArray(R.array.eo_pay_channel_Singapore);
                        break;
                    case 4://马来西亚
                        currencyCode = currencyCodeArray[3];
                        channelArray = getResources().getStringArray(R.array.eo_pay_channel_Malaysia);
                        break;
                    case 5://印度尼西亚
                        currencyCode = currencyCodeArray[4];
                        channelArray = getResources().getStringArray(R.array.eo_pay_channel_Indonesia);
                }
                channelAdapter = new ArrayAdapter<String>(mContext,R.layout.eo_pay_list_item,channelArray);
                mChannelSp.setAdapter(channelAdapter);
                //mConfirmBtn.setVisibility(View.INVISIBLE);
                setBtnUneanble();
            }
            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

        /**
         * 充值渠道选择监听
         */
        mChannelSp.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                TextView v = (TextView)view;
                payChannel = v.getText().toString();//TODO payChannel为数字 google为7 mol为3 mycard为4 razer pin为5 razer wallet为6 xsolla channelId为9 codapay channel为8
                if(payChannel.equals(getResources().getString(R.string.eo_payChannel_name_Google))){
                    payChannel = getResources().getString(R.string.eo_payChannel_code_Google);
                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_name_MyCard))){
                    payChannel = getResources().getString(R.string.eo_payChannel_code_MyCard);
                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_name_Razer_Pin))){
                    payChannel = getResources().getString(R.string.eo_payChannel_code_Razer_Pin);
                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_name_Razer_Wallet))){
                    payChannel = getResources().getString(R.string.eo_payChannel_code_Razer_Wallet);
                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_name_Xsolla))){
                    payChannel = getResources().getString(R.string.eo_payChannel_code_Xsolla);
                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_name_Codapay))){
                    payChannel = getResources().getString(R.string.eo_payChannel_code_Codapay);
                }
                //mConfirmBtn.setVisibility(View.INVISIBLE);
                setBtnUneanble();
//                if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_MyCard))){
//                    getItemTask = new GetItemTask(payChannel,currencyCode);
//                    getItemTask.execute();
//                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_Razer_Pin))
//                        ||payChannel.equals(getResources().getString(R.string.eo_payChannel_code_Razer_Wallet))){
//                    getItemTask = new GetItemTask(payChannel,currencyCode);
//                    getItemTask.execute();
//                }//TODO 不做判断
                getItemTask = new GetItemTask(payChannel,currencyCode);
                getItemTask.execute();

            }

            @Override
            public void onNothingSelected(AdapterView<?> parent) {

            }
        });

    }

    private void initInfo(){
        userName = mUserSession.getCurrentUserName();
        areaArray = getResources().getStringArray(R.array.eo_pay_area);
        currencyCodeArray = getResources().getStringArray(R.array.eo_pay_currencyCode);
        gc = EOCommon.gameCode;
        pn = EOCommon.packgeName;
        roleInfo = (EORoleInfo) getIntent().getSerializableExtra("roleInfo");
        Logger.getInstance().d("eogameinfo","roleInfo:"+roleInfo.toString());
        payInfo = (EOPayInfo) getIntent().getSerializableExtra("payInfo");
        sc = roleInfo.getServerId();
        uid = mUserSession.getCurrentUserId();
        mUsernameTv.setText(getString(R.string.eo_account_name)+":"+userName);
        mUidTv.setText("UID:"+uid);
        mServerNameTv.setText(getString(R.string.eo_server_name)+":"+roleInfo.getServerName());
        mRoleNameTv.setText(getString(R.string.eo_role_name)+":"+roleInfo.getRoleName());
        mRoleLevelTv.setText(getString(R.string.eo_role_level)+":"+roleInfo.getRoleLevel());
    }

    @Override
    protected void initListener() {
        mConfirmBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent();
                intent.putExtra("url",url);
                intent.putExtra("roleInfo",roleInfo);
                intent.putExtra("payInfo",payInfo);
                intent.putExtra("uid",uid);
                intent.setClass(mContext,EOWebBrowserActivity.class);
                mContext.startActivity(intent);
                mContext.finish();
            }
        });
    }

    @Override
    protected void initView() {
//        View rootView = getLayout("eo_layout_webpay");
//        rootView.setVisibility(View.VISIBLE);
        setContentView(R.layout.eo_layout_webpay);
        mUsernameTv = getView("eo_webpay_username");
        mUidTv = getView("eo_webpay_uid");
        mServerNameTv = getView("eo_webpay_servername");
        mRoleNameTv = getView("eo_webpay_rolename");
        mRoleLevelTv = getView("eo_webpay_rolelevel");
        mChannelSp = getView("eo_webpay_channel");
        mAreaSp = getView("eo_webpay_area");
        mItemSp = getView("eo_webpay_item");
        mConfirmBtn = getView("eo_webpay_confirm");
        //mConfirmBtn.setVisibility(View.INVISIBLE);
    }

    @Override
    protected void clear() {

    }


    public String getItem(String payChannel,String currencyCode){
        String items = "";

        try{
            HashMap<String,String> params = new HashMap<String, String>();
            params.put("gameCode",EOCommon.gameCode);
            params.put("payChannel",payChannel);
            params.put("currencyCode",currencyCode);
            params.put("packageName",getPackageName());
            JSONObject jsonObject = new JSONObject(new SyncHttp().httpPostByConnect(Data.URL_GET_PAYITEMS,params));
            Logger.getInstance().d("payItemsJsonObject",jsonObject.toString());
            int code = jsonObject.optInt("code");
            if(code==0){//成功
                items = jsonObject.optString("payItems");
                Logger.getInstance().d("payItems",items);
            }else {
                Logger.getInstance().d("payItems","获取品项失败");
                //mConfirmBtn.setVisibility(View.INVISIBLE);
                setBtnUneanble();
                return null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    class Item {
        public Item(){}
        String productCode;
        String productName;
        String money;
    }

    class GetItemTask extends AsyncTask<String,Integer,Item[]>{
        String Url = Data.URL_GET_PAYITEMS;
        String payChannel;
        String currencyCode;
        Item[] items;
        public GetItemTask(String payChannel,String currencyCode){
            this.payChannel = payChannel;
            this.currencyCode = currencyCode;
        }

        @Override
        protected Item[] doInBackground(String... strings) {
            String itemsString = getItem(payChannel,currencyCode);
            if(itemsString==null){
                return null;
            }
            try {
                JSONArray jsonArray = new JSONArray(itemsString);
                if(jsonArray!=null){
                    items = new Item[jsonArray.length()];
                    for(int i = 0;i<jsonArray.length();i++){
                        Item item = new Item();
                        item.productCode = jsonArray.getJSONObject(i).optString("productCode");
                        item.money = jsonArray.getJSONObject(i).optString("money");
                        item.productName = jsonArray.getJSONObject(i).optString("productName");
                        items[i] = item;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return items;
        }

        @Override
        protected void onCancelled() {
            super.onCancelled();
        }


        protected void onPostExecute(Item[] items){
            if(items!=null&&items.length>0){
                int count = items.length;
                final String[] productCodeArray = new String[count];
                final String[] productNameArray = new String[count];
                final String[] moneyArray = new String[count];
                for(int i=0;i<count;i++){
                    productCodeArray[i] = items[i].productCode;
                    productNameArray[i] = items[i].productName;
                    moneyArray[i] = items[i].money;
                }
                ArrayAdapter<String> itemAdapter = new ArrayAdapter<String>(mContext,R.layout.eo_pay_list_item,productNameArray);
                mItemSp.setAdapter(itemAdapter);
                mItemSp.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                    @Override
                    public void onItemSelected(AdapterView<?> parent, View view, final int position, long id) {
                        //mConfirmBtn.setVisibility(View.VISIBLE);
                        setBtnEnable();
                        mConfirmBtn.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                Intent intent = new Intent();
                                if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_MyCard))){
                                    payInfo.setPrice(Float.parseFloat(moneyArray[position]));
                                    payInfo.setProductId(productCodeArray[position]);
                                    payInfo.setProductName(productNameArray[position]);
                                    intent.putExtra("roleInfo",roleInfo);
                                    intent.putExtra("payInfo",payInfo);
                                    intent.putExtra("uid",uid);
                                    intent.putExtra("web_pay_url",Data.URL_MYCARD_PAYSTART);
                                    intent.setClass(mContext,EOWebViewActivity.class);
                                    mContext.startActivity(intent);
                                    mContext.finish();
                                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_Razer_Pin))){
                                    //TODO Razer pin 跳转
                                    payInfo.setPrice(Float.parseFloat(moneyArray[position]));
                                    payInfo.setProductId(productCodeArray[position]);
                                    payInfo.setProductName(productNameArray[position]);
                                    intent.putExtra("roleInfo",roleInfo);
                                    intent.putExtra("payInfo",payInfo);
                                    intent.putExtra("uid",uid);
                                    intent.putExtra("channelId",getResources().getString(R.string.eo_payChannel_code_Razer_Pin));
                                    intent.putExtra("currencyCode",currencyCode);
                                    intent.putExtra("razerPayUrl",Data.URL_RAZER_PAYSTART);
                                    intent.setClass(mContext,EOWebBrowserActivity.class);
                                    mContext.startActivity(intent);
                                    mContext.finish();
                                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_Razer_Wallet))){
                                    //TODO Razer wallet 跳转
                                    payInfo.setPrice(Float.parseFloat(moneyArray[position]));
                                    payInfo.setProductId(productCodeArray[position]);
                                    payInfo.setProductName(productNameArray[position]);
                                    intent.putExtra("roleInfo",roleInfo);
                                    intent.putExtra("payInfo",payInfo);
                                    intent.putExtra("uid",uid);
                                    intent.putExtra("channelId",getResources().getString(R.string.eo_payChannel_code_Razer_Wallet));
                                    intent.putExtra("currencyCode",currencyCode);
                                    intent.putExtra("razerPayUrl",Data.URL_RAZER_PAYSTART);
                                    intent.setClass(mContext,EOWebBrowserActivity.class);
                                    mContext.startActivity(intent);
                                    mContext.finish();
                                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_Xsolla))){
                                    payInfo.setPrice(Float.parseFloat(moneyArray[position]));
                                    payInfo.setProductId(productCodeArray[position]);
                                    payInfo.setProductName(productNameArray[position]);
                                    intent.putExtra("roleInfo",roleInfo);
                                    intent.putExtra("payInfo",payInfo);
                                    intent.putExtra("uid",uid);
                                    intent.putExtra("channelId",getResources().getString(R.string.eo_payChannel_code_Xsolla));
                                    intent.putExtra("currencyCode",currencyCode);
                                    intent.putExtra("XsollaPayUrl",Data.URL_XSOLLA_PAYSTART);
                                    intent.setClass(mContext,EOWebBrowserActivity.class);
                                    mContext.startActivity(intent);
                                    mContext.finish();
                                }else if(payChannel.equals(getResources().getString(R.string.eo_payChannel_code_Codapay))){
                                    payInfo.setPrice(Float.parseFloat(moneyArray[position]));
                                    payInfo.setProductId(productCodeArray[position]);
                                    payInfo.setProductName(productNameArray[position]);
                                    intent.putExtra("roleInfo",roleInfo);
                                    intent.putExtra("payInfo",payInfo);
                                    intent.putExtra("uid",uid);
                                    intent.putExtra("channelId",getResources().getString(R.string.eo_payChannel_code_Codapay));
                                    intent.putExtra("currencyCode",currencyCode);
                                    intent.putExtra("CodapayUrl",Data.URL_CODAPAY_PAYSTART);
                                    intent.setClass(mContext,EOWebBrowserActivity.class);
                                    mContext.startActivity(intent);
                                    mContext.finish();
                                }

                            }
                        });
                    }

                    @Override
                    public void onNothingSelected(AdapterView<?> parent) {

                    }
                });
            }else {
                //mConfirmBtn.setVisibility(View.INVISIBLE);
                setBtnUneanble();
            }
        }
    }

    private void setBtnUneanble(){
        mConfirmBtn.setClickable(false);
        mConfirmBtn.setText(getString(R.string.eo_select_pay_info));
    }

    private void setBtnEnable(){
        mConfirmBtn.setClickable(true);
        mConfirmBtn.setText(getString(R.string.eo_confirm_purchase));
    }

}
