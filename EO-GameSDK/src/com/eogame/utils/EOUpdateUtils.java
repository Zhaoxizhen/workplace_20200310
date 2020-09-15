package com.eogame.utils;

import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Environment;
import android.provider.Settings;

import java.io.File;

/**
 * 下载更新工具类
 */
public class EOUpdateUtils {
    private static final String PACKAGE_NAME = "com.android.providers.downloads";

    /**
     * 下载apk
     * @param apkUrl apk的下载地址
     * @param title 标题
     * @param desc 描述
     * @return 发送的appid
     */
    public static long downloadApk(Context context,String apkUrl,String title,String desc){
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(apkUrl));
        request.setTitle(title);
        request.setDescription(desc);
        request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
        request.setDestinationInExternalFilesDir(context, Environment.DIRECTORY_DOWNLOADS,"test.apk");
        DownloadManager dm = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        try{
            return dm.enqueue(request);
        } catch (Exception e) {
            return -1;
        }
    }

    /**
     * 检查下载管理器是否被禁用
     * @return true
     */
    public static boolean checkDownloadManagerEnable(Context context){
        try{
            int state =context.getPackageManager().getApplicationEnabledSetting(PACKAGE_NAME);
            if(state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED
            || state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER
            || state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED){
                try{
                    Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                    intent.setData(Uri.parse("package:"+PACKAGE_NAME));
                    context.startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    Intent intent = new Intent(Settings.ACTION_MANAGE_APPLICATIONS_SETTINGS);
                    context.startActivity(intent);
                }
                return false;
            }
        } catch (Exception e) {
            return false;
        }
        return true;
    }
}
