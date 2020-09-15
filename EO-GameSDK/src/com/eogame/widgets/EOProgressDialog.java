package com.eogame.widgets;


import com.eogame.utils.ResourceUtil;

import android.app.Dialog;
import android.content.Context;
import android.view.Gravity;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;

/**
 * 
 * @author baofengzhang
 *
 */

public class EOProgressDialog extends Dialog {
    private Context context = null;
    private static EOProgressDialog mCustomProgressDialog = null;

    private EOProgressDialog(Context context){
        super(context);
        this.context = context;
    }

    private EOProgressDialog(Context context, int theme) {
        super(context, theme);
        this.context = context;
    }

    public static EOProgressDialog createDialog(Context context){
        mCustomProgressDialog = new EOProgressDialog(context, ResourceUtil.getStyle(context,"EO_CustomProgressDialog"));
        mCustomProgressDialog.setContentView(ResourceUtil.getLayoutId(context,"eo_layout_loading"));
        mCustomProgressDialog.getWindow().getAttributes().gravity = Gravity.CENTER;
        return mCustomProgressDialog;
    }

    public void onWindowFocusChanged(boolean hasFocus){
        if (mCustomProgressDialog == null){
            return;
        }
        ImageView imageView = (ImageView) mCustomProgressDialog.findViewById(ResourceUtil.getViewId(context,"eo_loading_img"));
        RotateAnimation rotateAnimation =new RotateAnimation(0f,360f,Animation.RELATIVE_TO_SELF,0.5f,Animation.RELATIVE_TO_SELF,0.5f);
        rotateAnimation.setDuration(1500);
        rotateAnimation.setRepeatCount(-1);
//        rotateAnimation.setStartOffset(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setRepeatMode(Animation.RESTART);    
        imageView.startAnimation(rotateAnimation);
    }

    /**
     *
     * [Summary]
     *       setMessage 提示内容
     * @param strMessage
     * @return
     *
     */
    public EOProgressDialog setMessage(String strMessage){
        if (mCustomProgressDialog != null) {
            TextView tvMsg = (TextView)mCustomProgressDialog.findViewById(ResourceUtil.getViewId(context,"af_loading_tv"));

            if (tvMsg != null){
                tvMsg.setText(strMessage);
            }
        }
        return mCustomProgressDialog;
    }
}