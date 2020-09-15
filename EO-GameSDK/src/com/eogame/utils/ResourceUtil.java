package com.eogame.utils;

import android.content.Context;

/**
 * 反射获取资源
 * @author baofengzhang
 *
 */
public class ResourceUtil {

	private ResourceUtil(){}

	private static  ResourceUtil instance;

	private Context context;

	public static  void init(Context context){
		if(instance == null){
			instance = new ResourceUtil();
		}
		instance.context = context;
	}

	public static ResourceUtil getInstance(){
		return instance;
	}

	public String getString(String id){
        return context.getString(context.getResources().getIdentifier(id,"string",context.getPackageName()));
    }
	
	public static int getViewId(Context paramContext,String id) {
		return getId(paramContext,"id", id);
	}

	public static int getStyle(Context paramContext,String id) {
		return getId(paramContext,"style",id);
	}

	public static int getAnimId(Context paramContext,String id) {
		return getId(paramContext,"anim", id);
	}

	public static int getLayoutId(Context paramContext,String id) {
		return getId(paramContext,"layout", id);
	}

	public static int getDrawableId(Context paramContext,String id) {
		return getId(paramContext,"drawable", id);
	}
	
	public static int getColorId(Context paramContext,String id) {
		return getId(paramContext,"color", id);
	}
	
	public static int getStringId(Context paramContext,String id) {
		return getId(paramContext,"string", id);
	}

	public static String getString(Context context,String id){
        return context.getString(getStringId(context,id));
    }
	
	public static int getId(Context paramContext, String paramI,String paramII) {
		try {
			return paramContext.getResources().getIdentifier(paramII, paramI, paramContext.getPackageName());
		} catch (Exception localException) {
			Logger.getInstance().w("getIdByReflection error", localException.getMessage());
		}
		return 0;
	}
	
}
