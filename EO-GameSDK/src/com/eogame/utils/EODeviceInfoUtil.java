package com.eogame.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.UUID;
import java.util.regex.Pattern;

import com.eogame.crypto.DES;

/**
 * 硬件信息类 
 */
public class EODeviceInfoUtil {
	
	private static String maxCpuFreq = "N/A";
	private static String minCpuFreq = "N/A";
	private static final String key = "devices_";
	
	/**
	 * 获取cpu核心数
	 * 
	 * @return
	 */
	public static int getNumberOfCores() {
		if (Build.VERSION.SDK_INT >= 17) {
			return Runtime.getRuntime().availableProcessors();
		} else {
			try {
				File dir = new File("/sys/devices/system/cpu/");
				File[] files = dir.listFiles(new FileFilter() {
					@Override
					public boolean accept(File pathname) {
						if (Pattern.matches("cpu[0-9]+", pathname.getName())) {
							return true;
						}
						return false;
					}
				});
				return files.length;
			} catch (Exception e) {
				return 1;
			}
		}
	}

	/**
	 * 获取CPU最大频率（单位GHZ） "/system/bin/cat" 命令行
	 * "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq" 存储最大频率的文件的路径
	 */
	public synchronized static String getMaxCpuFreq() {
		if(!maxCpuFreq.equals("N/A"))
			return maxCpuFreq;
		try {
			FileReader fr = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
			BufferedReader br = new BufferedReader(fr);
			String text = br.readLine();
			maxCpuFreq = text.trim();
			// 转换成GHZ,设置两位有效数字
			float gHz = Float.valueOf(maxCpuFreq) / 1000 / 1000;
			DecimalFormat decimalFormat = new DecimalFormat("######0.00");
			br.close();
			fr.close();
			maxCpuFreq = decimalFormat.format(gHz).trim();
			return maxCpuFreq;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return maxCpuFreq;
	}

	/**
	 * 获取CPU最小频率（单位GHZ）
	 */
	public synchronized static String getMinCpuFreq() {
		if(!"N/A".equals(minCpuFreq)) 
			return minCpuFreq;
		try {
			FileReader fr = new FileReader("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq");
			BufferedReader br = new BufferedReader(fr);
			String text = br.readLine();
			minCpuFreq = text.trim();
			// 转换成GHZ,设置两位有效数字
			float gHz = Float.valueOf(minCpuFreq) / 1000 / 1000;
			DecimalFormat decimalFormat = new DecimalFormat("######0.00");
			br.close();
			fr.close();
			minCpuFreq = decimalFormat.format(gHz).trim();
			return minCpuFreq;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return minCpuFreq;
	}

	/**
	 * 实时获取CPU当前频率（单位GHZ）
	 */
	public static String getCurCpuFreq() {
		String result = "N/A";
		try {
			FileReader fr = new FileReader(
					"/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq");
			BufferedReader br = new BufferedReader(fr);
			String text = br.readLine();
			result = text.trim();
			// 转换成GHZ,设置两位有效数字
			float gHz = Float.valueOf(result) / 1000 / 1000;
			DecimalFormat decimalFormat = new DecimalFormat("######0.00");
			br.close();
			fr.close();
			return decimalFormat.format(gHz).trim();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return result;
	}

	/**
	 * 获取CPU名字
	 * 
	 * @return cpu name Or N/A(表示获取失败)
	 */
	@SuppressLint("NewApi")
	public static String getCpuName() {
		String arch = null;
		if (Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) {
			arch = Build.CPU_ABI;
		} else {
			arch = Build.SUPPORTED_ABIS[0];
		}
		if (arch.contains("arm") || arch.contains("ar")) {
			try {
				FileReader fr = new FileReader("/proc/cpuinfo");
				BufferedReader br = new BufferedReader(fr);
				String text ;
				String[] array;
				String textFirst = "N/A";
				boolean isFirst = true;
				while ((text = br.readLine()) != null) {					
					if (text.contains("model name")) {
						br.close();
						array = text.split(":", 2);
						text = array[1];
						return text;
					}
					if(isFirst){
						isFirst = false;
						array = text.split(":\\s+",2);
						if(array.length > 1){
							textFirst = array[1];
						}
					}
				}
				return textFirst;
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (arch.contains("mip")) {
			try {
				String aLine = null;
				BufferedReader br = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
				String strArray[] = new String[2];
				while ((aLine = br.readLine()) != null) {
					if (aLine.contains("cpu model")) {
						br.close();
						strArray = aLine.split(":", 2);
						aLine = strArray[1];
						return aLine;
					}
				}
				if (br != null) {
					br.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (arch.contains("x86") || arch.startsWith("i6")) {
			try {
				BufferedReader br = null;
				String aLine = null;
				br = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
				String strArray[] = new String[2];
				while ((aLine = br.readLine()) != null) {
					if (aLine.contains("model name")) {
						br.close();
						strArray = aLine.split(":", 2);
						aLine = strArray[1];
						return aLine;
					}
				}
				if (br != null) {
					br.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return "N/A";
	}

	/**
	 * 内存大小
	 */
	public static String getTotalMemory() {
		FileReader fr = null;
		BufferedReader br = null;
		String text;
		try {
			fr = new FileReader("/proc/meminfo");
			br = new BufferedReader(fr, 8);
			text = br.readLine();
			String[] array = text.split("\\s+");
			// 转换为GB显示
			float memory = Float.valueOf(array[1]) / 1024 / 1024;
			// 设置两位有效数字
			DecimalFormat decimalFormat = new DecimalFormat("######0.00");
			String p = decimalFormat.format(memory);
			return p;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				fr.close();
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		return "N/A";

	}

	/**
	 * SD卡存储 (单位 GB) 兼容低版本
	 * 
	 * @return
	 */
	@SuppressLint("NewApi")
	public static String getSdSize() {
		File path = Environment.getExternalStorageDirectory();
		StatFs stat = new StatFs(path.getPath());
		long blockSize = 0;
		long availableBlocks = 0;
		if (Build.VERSION.SDK_INT >= 18) {
			blockSize = stat.getBlockSizeLong();
			availableBlocks = stat.getBlockCountLong();
		} else {
			blockSize = stat.getBlockSize();
			availableBlocks = stat.getAvailableBlocks();
		}
		float memory = Float.valueOf(blockSize * availableBlocks) / 1024 / 1024 / 1024;
		DecimalFormat decimalFormat = new DecimalFormat("######0.00");
		return decimalFormat.format(memory);
	}

	/**
	 * 机身存储 （单位：GB） 兼容低版本
	 * 
	 * @return
	 */
	@SuppressLint("NewApi")
	public static String getRomTotalSize() {

		File path = Environment.getDataDirectory();
		StatFs stat = new StatFs(path.getPath());
		long blockSize = 0;
		long totalBlocks = 0;
		if (Build.VERSION.SDK_INT >= 18) {
			blockSize = stat.getBlockSizeLong();
			totalBlocks = stat.getBlockCountLong();
		} else {
			blockSize = stat.getBlockSize();
			totalBlocks = stat.getBlockCount();
		}
		float memory = Float.valueOf(blockSize * totalBlocks) / 1024 / 1024 / 1024;
		DecimalFormat decimalFormat = new DecimalFormat("######0.00");
		return decimalFormat.format(memory);
	}
	
	/**
	 * 获取硬件标识，Serial
	 * @return
	 */
	public static String getSerial(){
		return Build.SERIAL;
	}

	/**
	 * 设备型号
	 * 
	 * @return
	 */
	public static String getModel() {
		return Build.MODEL;
	}

	/**
	 * 设备制造商
	 * 
	 * @return
	 */
	public static String getManufacturer() {
		return Build.MANUFACTURER;
	}
	
	/**
	 * 设备名称。
	 * @return
	 */
	public static String getDeviceName(){
		return Build.DEVICE;
	}

	/**
	 * 获取NetworkType
	 * 
	 * @param context
	 * @return
	 */
	public static String getNetworkType(Context context) {
		String strNetworkType = "not net";
		NetworkInfo networkInfo = ((ConnectivityManager) context
				.getSystemService(Context.CONNECTIVITY_SERVICE))
				.getActiveNetworkInfo();
		if (networkInfo != null && networkInfo.isConnected()) {
			if (networkInfo.getType() == ConnectivityManager.TYPE_WIFI) {
				strNetworkType = "WIFI";
			} else if (networkInfo.getType() == ConnectivityManager.TYPE_MOBILE) {
				String _strSubTypeName = networkInfo.getSubtypeName();

				// TD-SCDMA networkType is 17
				int networkType = networkInfo.getSubtype();
				switch (networkType) {
				case TelephonyManager.NETWORK_TYPE_GPRS:
				case TelephonyManager.NETWORK_TYPE_EDGE:
				case TelephonyManager.NETWORK_TYPE_CDMA:
				case TelephonyManager.NETWORK_TYPE_1xRTT:
				case TelephonyManager.NETWORK_TYPE_IDEN: // api<8 : replace by
															// 11
					strNetworkType = "2G";
					break;
				case TelephonyManager.NETWORK_TYPE_UMTS:
				case TelephonyManager.NETWORK_TYPE_EVDO_0:
				case TelephonyManager.NETWORK_TYPE_EVDO_A:
				case TelephonyManager.NETWORK_TYPE_HSDPA:
				case TelephonyManager.NETWORK_TYPE_HSUPA:
				case TelephonyManager.NETWORK_TYPE_HSPA:
				case TelephonyManager.NETWORK_TYPE_EVDO_B: // api<9 : replace by
															// 14
				case TelephonyManager.NETWORK_TYPE_EHRPD: // api<11 : replace by
															// 12
				case TelephonyManager.NETWORK_TYPE_HSPAP: // api<13 : replace by
															// 15
					strNetworkType = "3G";
					break;
				case TelephonyManager.NETWORK_TYPE_LTE: // api<11 : replace by
														// 13
					strNetworkType = "4G";
					break;
				default:
					// http://baike.baidu.com/item/TD-SCDMA 中国移动 联通 电信 三种3G制式
					if (_strSubTypeName.equalsIgnoreCase("TD-SCDMA")
							|| _strSubTypeName.equalsIgnoreCase("WCDMA")
							|| _strSubTypeName.equalsIgnoreCase("CDMA2000")) {
						strNetworkType = "3G";
					} else {
						strNetworkType = _strSubTypeName;
					}
					break;
				}
			}
		}
		return strNetworkType;
	}

	/**
	 * mac 地址
	 * 
	 * @param context
	 * @return
	 */
	public static String getMacAddress(Context context) {
		String mac = null;
		WifiManager wifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
		WifiInfo wifiInfo = wifiManager.getConnectionInfo();
		if(wifiInfo != null && wifiInfo.getMacAddress() != null) {
			mac = wifiInfo.getMacAddress();
		}
		return mac;
	}
	
	/**
	 * 获取 android_id
	 * @param ctx
	 * @return
	 */
	public static String getAndroidId(Context ctx){
		return Settings.Secure.getString(ctx.getContentResolver(), Settings.Secure.ANDROID_ID);
	}
	
	/**
	 * 获取 DeviceId
	 * @param ctx
	 * @return
	 */
	public static String getDeviceId(Context  ctx){
		String id;
		TelephonyManager tm = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
		if(tm.getDeviceId()!=null){
			id=tm.getDeviceId();
		}else{
			id=Settings.Secure.getString(ctx.getApplicationContext().getContentResolver(),Settings.Secure.ANDROID_ID);
		}
		return id;
	}

	/**
	 * 平台名称
	 * 
	 * @return
	 */
	public static String getOsName() {
		return "andorid";
	}

	/**
	 * 平台id。
	 * 
	 * @return
	 */
	public static int getOsId() {
		return 2;
	}

	/**
	 * 系统名称，如：3.0.0
	 * 
	 * @return
	 */
	public static String getOsVersion() {
		return Build.VERSION.RELEASE;
	}

	/**
	 * 获取UUID
	 * 
	 * @param ctx
	 * @return
	 */
	public static String getUUID(Context ctx) {
		String udid = PreferenceUtils.instance(ctx).getUuid();
		if(udid != null && !"".equals(udid)){
			try {
				udid = DES.decrypt(udid, key);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return udid;
		}
		
		try {
			String mDeviceStr = getDeviceId(ctx);
			String mac = getMacAddress(ctx);
			
			mDeviceStr = mDeviceStr + mac;
			String serial =  getSerial();
			if(serial == null || serial.isEmpty() || serial.toLowerCase().equals("unknown")){
				serial = "";
			}
			mDeviceStr = mDeviceStr + serial+ getAndroidId(ctx);
			String mDeviceStr2 = getManufacturer() + getModel() + getDeviceName() + getCpuName() + getMaxCpuFreq();
			mDeviceStr += mDeviceStr2;
			UUID uuid = new UUID(getStringHashCode(mDeviceStr), getStringHashCode(mDeviceStr2) >> 10);
			PreferenceUtils.instance(ctx).setUuid(DES.encrypt(uuid.toString(), key));
			Log.d("eologin","get uuid success");
			return uuid.toString();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return udid;
	}
	
	private static long getStringHashCode(String value){
		if(value == null || value.isEmpty()){
			return 0;
		}
		long code = 0;
		for(int i = 0; i<value.length(); i++){
			try{
				code = code * 31 + (int)value.charAt(i);
			}catch( Exception e){
				e.printStackTrace();
			}
		}
		return code;
	}
	
}
