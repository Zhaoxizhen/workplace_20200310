package com.eogame.receiver;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;

import com.eogame.utils.Logger;

public class DownloadReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        Logger.getInstance().d("downloadreceiver","start onReceiver");
        if(intent.getAction().equals(DownloadManager.ACTION_DOWNLOAD_COMPLETE)){
            Logger.getInstance().d("downloadreceiver","jump2install");
            long id = intent.getLongExtra(DownloadManager.EXTRA_DOWNLOAD_ID,-1);
            installApk(context,id);
        }else if(intent.getAction().equals(DownloadManager.ACTION_NOTIFICATION_CLICKED)){
            Intent viewDownloadIntent = new Intent(DownloadManager.ACTION_VIEW_DOWNLOADS);
            viewDownloadIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(viewDownloadIntent);
        }
    }

    private void installApk(Context context,long id){
        DownloadManager dm = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        Intent intent = new Intent(Intent.ACTION_VIEW);
        Uri uri = dm.getUriForDownloadedFile(id);
        if(uri != null){
            intent.setDataAndType(uri,"application/vnd.android.package-archive");
            if(Build.VERSION.SDK_INT >= 24){//7.0以上适配
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            if(intent.resolveActivity(context.getPackageManager()) != null){
                Logger.getInstance().d("downloadreceiver","resolveActivity != null!");
                context.startActivity(intent);
            }else{
                Logger.getInstance().d("downloadreceiver","resolveActivity = null!");
            }
        }else{
            Logger.getInstance().d("downloadreceiver","uri = null!");
        }
    }
}
