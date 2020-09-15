.class public Lcom/eogame/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final DEVICE:Ljava/lang/String; = "dn"

.field private static final DEVICEUID:Ljava/lang/String; = "did"

.field private static final LANGUAGE:Ljava/lang/String; = "ls"

.field private static final MANUFACTURER:Ljava/lang/String; = "fn"

.field private static final NETWORKTYPE:Ljava/lang/String; = "nt"

.field private static final OSVERSION:Ljava/lang/String; = "dvos"

.field private static final PLATFORMTAG:Ljava/lang/String; = "chnl"

.field private static final SCREEN:Ljava/lang/String; = "screen"

.field private static final SDKVERSION:Ljava/lang/String; = "sdkv"

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommonParametersToHeader(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 132
    invoke-static {}, Lcom/eogame/constants/EOConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkv"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/eogame/utils/Util;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dvos"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/eogame/utils/Util;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dn"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/eogame/utils/Util;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nt"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/eogame/utils/EODeviceInfoUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/eogame/constants/EOCommon;->platformTag:Ljava/lang/String;

    const-string v1, "chnl"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/eogame/utils/ScreenUtils;->getScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/eogame/utils/EODeviceInfoUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fn"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/eogame/constants/EOCommon;->gameLanguage:Ljava/lang/String;

    const-string v1, "ls"

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getHeaderParameters()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "sdkv"

    .line 146
    invoke-static {}, Lcom/eogame/constants/EOConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dvos"

    .line 147
    invoke-static {}, Lcom/eogame/utils/Util;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dn"

    .line 148
    invoke-static {}, Lcom/eogame/utils/Util;->getPhoneModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nt"

    .line 149
    sget-object v2, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/eogame/utils/Util;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "did"

    .line 150
    sget-object v2, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/eogame/utils/EODeviceInfoUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "chnl"

    .line 151
    sget-object v2, Lcom/eogame/constants/EOCommon;->platformTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screen"

    .line 152
    sget-object v2, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/eogame/utils/ScreenUtils;->getScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fn"

    .line 153
    invoke-static {}, Lcom/eogame/utils/EODeviceInfoUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ls"

    .line 154
    sget-object v2, Lcom/eogame/constants/EOCommon;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static isPayUrl(Ljava/lang/String;)Z
    .locals 1

    .line 201
    sget-object v0, Lcom/eogame/constants/Data;->URL_BASE_PAY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/eogame/http/HttpUtils;->context:Landroid/content/Context;

    return-void
.end method
