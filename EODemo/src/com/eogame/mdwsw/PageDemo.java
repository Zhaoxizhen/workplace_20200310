package com.eogame.mdwsw;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.Toast;

import com.eogame.constants.EOConfig;
import com.eogame.listener.FacebookFriendsApi;
import com.eogame.listener.FacebookShareApi;
import com.eogame.listener.InitCallback;
import com.eogame.listener.LoginCallback;
import com.eogame.listener.PayCallback;
import com.eogame.model.EOFacebookFriendsEntity;
import com.eogame.model.EOPayInfo;
import com.eogame.model.EORoleInfo;

//import com.eogame.mdwsw.R;
import com.eogame.other.mdwsw.R;
import com.eogame.receiver.DownloadReceiver;
import com.eogame.sdk.EOSDK;
import com.eogame.utils.Logger;


import java.util.List;
import java.util.Random;

//import android.util.Log;

public class PageDemo extends Activity implements OnClickListener {


	private String TAG = "SGSDK";
	
	private Random random;
	
	private Button btnInit;
	private Button btnUpdate;
	private Button btnLogin;
	private Button btnPay;
	private Button btnLogout;
	private Button btnOpenUser;
	private Button btnExit;
	private Button btnSubmitEntraGame;
	private Button btnShare;
	private Button btnSubmitCreateRole;
	private Button btnGetUserinfo;
	private Button btnChageLanguage;
	
	private EOSDK mSdk;
	private IntentFilter intentFilter;
	private DownloadReceiver downloadReceiver;
	private Handler handler = new Handler();
	
	//测试环境参数
//	private String gameCode = "EMDXC";		//游戏gameCode
//	private String gameKey = "xG5D357P";	//游戏gameKey
//	private boolean isDebug = true;			//是否为测试模式。
//	private String gameName = "测试游戏";		//游戏名
//	private String gameLanguage = "en-us";  //游戏语言
	
//	//正式环境参数
	private String gameCode = "EMDXC";		//游戏gameCode
	private String gameKey = "ybpmd73B8j13";	//游戏gameKey
	private boolean isDebug = false;			//TODO 是否为测试模式。//true为测试环境 //false为正式环境
	private String gameName = "test";		//游戏名
	//private String gameLanguage = "en-us";  //游戏语言

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN, WindowManager.LayoutParams.FLAG_FULLSCREEN);

		setContentView(R.layout.activity_main);
		random = new Random();
		btnInit      = (Button) findViewById(R.id.page_main_btn_init);
		btnUpdate    = (Button) findViewById(R.id.page_main_btn_update);
		btnLogin     = (Button) findViewById(R.id.page_main_btn_login);
		btnPay       = (Button) findViewById(R.id.page_main_btn_pay);
		btnExit      = (Button) findViewById(R.id.page_main_btn_exit);
		btnOpenUser  = (Button) findViewById(R.id.page_main_btn_open_user);
		btnSubmitEntraGame  = (Button) findViewById(R.id.page_main_btn_entry_game_log);
		btnSubmitCreateRole  = (Button) findViewById(R.id.page_main_btn_create_role_log);
		btnShare= (Button)findViewById(R.id.page_main_btn_share);
		btnGetUserinfo = (Button) findViewById(R.id.page_main_btn_get_userinfo);
		btnLogout = (Button) findViewById(R.id.page_main_btn_logout);
		btnChageLanguage = (Button) findViewById(R.id.page_main_btn_language);
		
		btnInit.setOnClickListener(this);
		btnUpdate.setOnClickListener(this);
		btnLogin.setOnClickListener(this);
		btnPay.setOnClickListener(this);
		btnLogout.setOnClickListener(this);
		btnExit.setOnClickListener(this);
		btnOpenUser.setOnClickListener(this);
		btnSubmitEntraGame.setOnClickListener(this);
		btnSubmitCreateRole.setOnClickListener(this);
		btnShare.setOnClickListener(this);
		btnGetUserinfo.setOnClickListener(this);
		btnChageLanguage.setOnClickListener(this);
		
		mSdk = EOSDK.getInstance();

		intentFilter = new IntentFilter();
		intentFilter.addAction(DownloadManager.ACTION_DOWNLOAD_COMPLETE);
		downloadReceiver = new DownloadReceiver();
		registerReceiver(downloadReceiver,intentFilter);

		init();
	}
	
	public void init(){
		EOConfig config = new EOConfig();
		config.setGameCode(gameCode);
		config.setGameKey(gameKey);
		config.setGameName(gameName);
		//config.setGameLanguage(gameLanguage);
		config.setDebug(isDebug);//设置是否为debug模式，若为debug模式将连接测试服务器；否则连接正式服务器。
		config.setScreenOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT); //设置屏幕方向横屏，此值暂时写死。

		//TODO 增加检查更新功能，在初始化之前检查新版本，若有新版本则提示用户下载新版本安装
		//mSdk.

		mSdk.init(PageDemo.this, config, new InitCallback() {
			@Override
			public void onSuccess() {
				Toast.makeText(PageDemo.this, "初始化成功",Toast.LENGTH_SHORT).show();
			}
			
			@Override
			public void onError(String errorMsg) {
				Toast.makeText(PageDemo.this, "初始化失败",Toast.LENGTH_SHORT).show();
				//Log.w(TAG, errorMsg);
			}
		});

		//mSdk.update(this);

	}

	@Override
	public void onClick(View v) {
		final long createTime = System.currentTimeMillis()/1000;
		final String accountId = "testUserName" + createTime;
		switch (v.getId()) {
			//初始化
		case R.id.page_main_btn_init:
			init();
			break;
			//更新
			case R.id.page_main_btn_update:
				mSdk.update(PageDemo.this);
				break;
			//登录按钮
		case R.id.page_main_btn_login:
			mSdk.login(PageDemo.this, new LoginCallback() {
				
				@Override
				public void onSuccess( String token) {
					Toast.makeText(PageDemo.this, "登录成功",Toast.LENGTH_SHORT).show();
					//TODO: (可选)将登录成功获取的 token 发给游戏服进行 token校验。
				}
				
				@Override
				public void onError(String errorMsg) {
					String msg;
					switch (errorMsg){
						case "error happen-->90003":
							msg = "当前用户不存在";
							break;
						case "error happen-->90004":
							msg = "账号或密码错误";
							break;
						case "error happen-->90005":
							msg = "当前用户已被锁定无法使用，请与客服人员联系";
							break;
						case "error happen-->90001":
							msg = "账号密码不能为空，请输入";
							break;
							default:
								msg = errorMsg;
					}
					Toast.makeText(PageDemo.this, "登录失败，msg: " + msg,Toast.LENGTH_LONG).show();
				}
				
				@Override
				public void onCancle() {
					Toast.makeText(PageDemo.this, "取消登录",Toast.LENGTH_SHORT).show();
				}
				
				@Override
				public void onLogout(){
					Toast.makeText(PageDemo.this, "登出成功 " ,Toast.LENGTH_SHORT).show();
					//调用sdk的登出接口，和在用户中心中点登出按钮，均会触发此回调。请在此处做好游戏处理。sdk不会自动拉起登录。
				}
			});

			break;
			//支付按钮
		case R.id.page_main_btn_pay:
			EORoleInfo roleInfo = new EORoleInfo();
			roleInfo.setRoleId("5");			//角色id
			roleInfo.setRoleLevel(99);			//角色等级
			roleInfo.setRoleName("testrole1");		//角色名
			roleInfo.setServerId("1");			//服务器id
			roleInfo.setServerName("荣耀之路");	//服务器名称
			
			EOPayInfo payInfo = new EOPayInfo();
			payInfo.setProductName("月卡");//商品名称
			payInfo.setProductId("eogame.xsgwz.yueka");//商品id//android.test.purchased为假定购买成功商品android.test.canceled为假定购买取消商品android.test.item_unavailable为假定商品不存在
			payInfo.setExtInfo("");
			payInfo.setPrice(2500);  //商品金额 单位分
			payInfo.setCurrencyCode(getResources().getString(R.string.eo_currency_code_Hongkong));//币种代码 台币为TWD 港币为HKD
			String orderId = System.currentTimeMillis()+"";//CP方订单号，使用当前时间毫秒数
			//Log.e("eo","cporder id == " + orderId);
			payInfo.setCpOrderId(orderId);//CP方订单号，请确保唯一性
			Logger.getInstance().e("eopay","payInfo"+payInfo);
			mSdk.pay(PageDemo.this,roleInfo, payInfo, new PayCallback() {
				@Override
				public void onSuccess(String sgOrderId) {
					Toast.makeText(PageDemo.this, "购买成功. " ,Toast.LENGTH_LONG).show();
				}

				@Override
				public void onError(String errorMsg) {
					Toast.makeText(PageDemo.this, "购买失败，错误信息 = " + errorMsg ,Toast.LENGTH_LONG).show();
				}
				
				@Override
				public void onCancle() {
					Toast.makeText(PageDemo.this, "购买取消" ,Toast.LENGTH_LONG).show();
				}
			});
			

			break;
			//退出
		case R.id.page_main_btn_exit:
			this.finish();
			break;
		case R.id.page_main_btn_create_role_log:
			//TODO: 创角日志。
			Toast.makeText(this, "发送创角日志", Toast.LENGTH_LONG).show();
			EORoleInfo roleInfo2 =  new EORoleInfo();
			roleInfo2.setRoleId("test0001");
			roleInfo2.setRoleLevel(1);
			roleInfo2.setRoleName("角色名");
			roleInfo2.setServerId("service_01");
			
			mSdk.createRoleGame(roleInfo2);
			break;
		case R.id.page_main_btn_entry_game_log:
			//TODO: 进入游戏日志
			Toast.makeText(this, "发送进入游戏日志", Toast.LENGTH_LONG).show();
			EORoleInfo roleInfo3 =  new EORoleInfo();
			roleInfo3.setRoleId("test0002");
			roleInfo3.setRoleLevel(11);
			roleInfo3.setRoleName("角色名2");
			roleInfo3.setServerId("service_01");
			
			mSdk.entryGame(roleInfo3);
			break;
		case R.id.page_main_btn_share:
			//分享到Facebook
			mSdk.shareFacebook(this, new FacebookShareApi() {
				@Override
				public void shareSuccess() {
					handler.post(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(PageDemo.this, "分享成功",Toast.LENGTH_SHORT).show();
						}
					});
				}
				
				@Override
				public void shareFail() {
					handler.post(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(PageDemo.this, "分享失败",Toast.LENGTH_SHORT).show();
						}
					});
				}
				
				@Override
				public void shareCancel() {
					handler.post(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(PageDemo.this, "取消成功",Toast.LENGTH_SHORT).show();
						}
					});
				}
			});
			break;
		case R.id.page_main_btn_open_user:
			//打开用户中心
			mSdk.openUserCenter(this);
			break;
		case R.id.page_main_btn_get_userinfo:
			mSdk.getFacebookFriends(this, new FacebookFriendsApi() {
				@Override
		    		public void getFriendsFail(final String msg) {
					handler.post(new Runnable() {
						@Override
						public void run() {
							Toast.makeText(PageDemo.this, "获取好友失败！msg="+msg,Toast.LENGTH_SHORT).show();
						}
					});
		    		}
				@Override
				public void getFriendsSuccess(List userList) {
					if(userList.size() > 0) {
						final EOFacebookFriendsEntity f = (EOFacebookFriendsEntity)userList.get(0);
						handler.post(new Runnable() {
							@Override
							public void run() {
								Toast.makeText(PageDemo.this, "获取好友成功,userId = "+f.userId,Toast.LENGTH_SHORT).show();
							}
						});
					}
				}
			});
			break;
		case R.id.page_main_btn_logout:
			mSdk.logout(this);
			break;
		case R.id.page_main_btn_language:
			mSdk.setGameLanguage(this,"zh-cn");
			break;
		default:
			break;
		}
	}

	@Override
	protected void onDestroy() {
		//TODO： 退出应用之前添加。
		mSdk.destroy(this);
		unregisterReceiver(downloadReceiver);
		super.onDestroy();
	}
	
	@Override
	public void onRequestPermissionsResult(int requestCode,String[] permissions, int[] grantResults) {
		//TODO: 编译版本为安卓6.0及以上，请添加此方法调用。
		mSdk.onRequestPermissionsResult(requestCode,permissions,grantResults);
	}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		//TODO：请在调用支付和facebook分享、获取好友功能界面，添加此回调。
		//返回Demo页面时调用 支付成功调用
		mSdk.onActivityResult(requestCode, resultCode, data);
	}

	@Override
	public void onBackPressed() {
		//方法覆盖，没实际可执行代码，按返回键不退出
		//Logger.d("onBackPressed","方法覆盖，没实际可执行代码，按返回键不退出");
	}
	// 用来计算返回键的点击间隔时间
	private long exitTime = 0;
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK
				&& event.getAction() == KeyEvent.ACTION_DOWN) {
			if ((System.currentTimeMillis() - exitTime) > 2000) {
				//弹出提示，可以有多种方式
				Toast.makeText(getApplicationContext(), "再按一次退出游戏", Toast.LENGTH_SHORT).show();
				exitTime = System.currentTimeMillis();
			} else {
				finish();
			}
			return true;
		}
		return super.onKeyDown(keyCode, event);
	}
}
