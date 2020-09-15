.class public Lcom/eogame/web/EOWebApiImpl;
.super Ljava/lang/Object;
.source "EOWebApiImpl.java"

# interfaces
.implements Lcom/eogame/web/EOWebApi;


# static fields
.field private static instance:Lcom/eogame/web/EOWebApiImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/eogame/web/EOWebApiImpl;

    invoke-direct {v0}, Lcom/eogame/web/EOWebApiImpl;-><init>()V

    sput-object v0, Lcom/eogame/web/EOWebApiImpl;->instance:Lcom/eogame/web/EOWebApiImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V
    .locals 4

    .line 347
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, v1}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 350
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v0

    const-string v1, "eo_error_net_timeout"

    invoke-virtual {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_0
    instance-of v0, p1, Ljava/net/UnknownHostException;

    const-string v2, "eo_error_net_exception"

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0, v3}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 354
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :cond_1
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p0, v3}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 357
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_3

    .line 360
    invoke-virtual {p0, v3}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 361
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v0

    const-string v1, "eo_error_net_certificate_expired"

    invoke-virtual {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :cond_3
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 364
    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 365
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v0

    const-string v1, "eo_error_json"

    invoke-virtual {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_4
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    const-string v2, "eo_error_sys_exception"

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 368
    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_5
    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 372
    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_6
    invoke-virtual {p0, v1}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v1

    const-string v2, "eo_error_unkonw_exception"

    invoke-virtual {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    .line 378
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static instance()Lcom/eogame/web/EOWebApiImpl;
    .locals 1

    .line 40
    sget-object v0, Lcom/eogame/web/EOWebApiImpl;->instance:Lcom/eogame/web/EOWebApiImpl;

    return-object v0
.end method

.method private setFacebookUsersFriendsResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "data"

    :try_start_0
    const-string v1, "code"

    .line 57
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/eogame/model/HttpResult;->setCode(I)V

    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eogame/model/HttpResult;->setmJsonData(Lorg/json/JSONObject;)V

    const-string v0, "msg"

    .line 59
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 61
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x5

    .line 62
    invoke-virtual {p1, p2}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 63
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string v0, "eo_error_json"

    invoke-virtual {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindForEO(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 243
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_BIND_SANDCLASS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 245
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eogame/constants/EOCommon;->udid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gln"

    .line 248
    sget-object v5, Lcom/eogame/constants/EOCommon;->udid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ln"

    .line 249
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pwd"

    .line 250
    invoke-static {p2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 251
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 252
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 253
    sget-object p2, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 255
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v0, p2}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 258
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    const-string p1, "data"

    .line 259
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bindForFacebook(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 268
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_BIND_FACEBOOK:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 270
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eogame/constants/EOCommon;->udid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gln"

    .line 273
    sget-object v5, Lcom/eogame/constants/EOCommon;->udid:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fid"

    .line 274
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fbname"

    .line 275
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 276
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 277
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 278
    sget-object p2, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 280
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0, v0, p2}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 283
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    const-string p1, "data"

    .line 284
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public checkUpdate()Lcom/eogame/model/HttpResult;
    .locals 5

    .line 92
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_GET_UPDATE_INFO:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 94
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gc"

    .line 95
    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v2, Lcom/eogame/http/SyncHttp;

    invoke-direct {v2}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eocheckupdate"

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "string:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, v0, v2}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    invoke-static {v0, v1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public createPayOrder(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)Lcom/eogame/model/HttpResult;
    .locals 7

    const-string v0, ""

    .line 406
    new-instance v1, Lcom/eogame/model/HttpResult;

    sget-object v2, Lcom/eogame/constants/Data;->URL_CREATE_ORDER:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 408
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "uid"

    .line 411
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cpid"

    .line 412
    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "money"

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rid"

    .line 414
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rn"

    .line 415
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gl"

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gid"

    .line 417
    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gn"

    .line 418
    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "serverId"

    .line 420
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pn"

    .line 421
    sget-object p2, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pc"

    const-string p2, "2"

    .line 422
    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ext"

    .line 423
    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getExtInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 425
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 426
    sget-object p2, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 427
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string p2, "createPayOrder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ext:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getExtInfo()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Lcom/eogame/http/SyncHttp;

    invoke-direct {p2}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v1}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v4}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, v1, p1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 435
    invoke-static {v1, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public facebookLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 158
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_LOGIN_FOREIGN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 160
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gc"

    .line 163
    sget-object v5, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fid"

    .line 164
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ln"

    .line 165
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 166
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "cf"

    .line 167
    sget-object p2, Lcom/eogame/model/EOAccountEntity;->FB_TYPE:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 168
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v0, p2}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 173
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    const-string p1, "data"

    .line 174
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 111
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "packageName"

    .line 112
    sget-object v3, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/eogame/http/SyncHttp;

    invoke-direct {v3}, Lcom/eogame/http/SyncHttp;-><init>()V

    const-string v4, "http://192.168.0.107:8080/Login.sgplayer.com/notice/getNoticeMapping.do"

    invoke-virtual {v3, v4, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 114
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x2710

    if-ne v1, v3, :cond_0

    const-string v1, "data"

    .line 116
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    const-string v2, "dataString"

    invoke-virtual {v1, v2, v0}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v2

    const-string v3, "getNotice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u516c\u544a\u5931\u8d25,code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getPayChannels(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 383
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_QUERY_PAYWAY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 385
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v2

    const-string v3, "eo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packgeName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "gameKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "gameCode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "t"

    .line 389
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gc"

    .line 390
    sget-object v4, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pn"

    .line 391
    sget-object v4, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uid"

    .line 392
    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gl"

    .line 393
    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 394
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Lcom/eogame/http/SyncHttp;

    invoke-direct {p2}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0, v0, p1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public getPayItems(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 5

    const-string v0, "payItems"

    .line 490
    new-instance v1, Lcom/eogame/model/HttpResult;

    sget-object v2, Lcom/eogame/constants/Data;->URL_GET_PAYITEMS:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 492
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "gameCode"

    .line 493
    sget-object v4, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "payChannel"

    .line 494
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "currencyCode"

    .line 495
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Lcom/eogame/http/SyncHttp;

    invoke-direct {p2}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v1}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    const-string v2, "getPayItems"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 498
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/eogame/model/HttpResult;->setCode(I)V

    .line 499
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/eogame/model/HttpResult;->setmJsonData(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 501
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public getUserIdsForFacebookIds(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 7

    .line 468
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_GET_FRIENDS_IDS:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 470
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fidArr"

    .line 473
    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 474
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 475
    sget-object v2, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 476
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance p1, Lorg/json/JSONObject;

    new-instance v2, Lcom/eogame/http/SyncHttp;

    invoke-direct {v2}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, v0, p1}, Lcom/eogame/web/EOWebApiImpl;->setFacebookUsersFriendsResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 483
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public guestLogin(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 320
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_LOGIN_VISITOR:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 322
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v3

    const-string v4, "eotest"

    const-string v5, "MD5 fail"

    invoke-virtual {v3, v4, v5}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gc"

    .line 326
    sget-object v5, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "gln"

    .line 327
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 328
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 329
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 331
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, v0, v1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 334
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v2, 0x2710

    if-ne p1, v2, :cond_0

    const-string p1, "data"

    .line 335
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "eologin"

    const-string v2, "guestLogin exception"

    .line 338
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public init()Lcom/eogame/model/HttpResult;
    .locals 6

    .line 70
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_GET_SERVER_INFO:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gc"

    .line 75
    sget-object v5, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pn"

    .line 76
    sget-object v5, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "chnl"

    .line 77
    sget-object v5, Lcom/eogame/constants/EOCommon;->platformTag:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "t"

    .line 78
    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sk"

    .line 79
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v1, Lcom/eogame/http/SyncHttp;

    invoke-direct {v1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v0, v2}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 85
    invoke-static {v0, v1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 7

    const-string v0, "eologin"

    .line 131
    new-instance v1, Lcom/eogame/model/HttpResult;

    sget-object v2, Lcom/eogame/constants/Data;->URL_LOGIN_NORMAL:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 133
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "md5success"

    .line 135
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "gc"

    .line 137
    sget-object v6, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "ln"

    .line 138
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pwd"

    .line 139
    invoke-static {p2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 140
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 141
    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v1}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "string:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 146
    invoke-virtual {v1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v2, 0x2710

    if-ne p1, v2, :cond_0

    const-string p1, "data"

    .line 147
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    invoke-static {v1, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public loginToken(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 213
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_LOGIN_TOKEN:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 215
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "tk"

    .line 218
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 219
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 220
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 221
    sget-object v1, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 223
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 226
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v2, 0x2710

    if-ne p1, v2, :cond_0

    const-string p1, "data"

    .line 227
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 230
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public regist(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 295
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_REGISTER:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 297
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gc"

    .line 300
    sget-object v5, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ln"

    .line 301
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pwd"

    .line 302
    invoke-static {p2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 303
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 304
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 306
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, v0, p2}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V

    .line 309
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    const-string p1, "data"

    .line 310
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/HttpResult;->setObj(Lcom/eogame/model/EOBaseObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 313
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public sendLog(ILjava/util/Map;)Lcom/eogame/model/HttpResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/eogame/model/HttpResult;"
        }
    .end annotation

    const-string v0, ""

    .line 508
    new-instance v1, Lcom/eogame/model/HttpResult;

    sget-object v2, Lcom/eogame/constants/Data;->URL_SEND_LOG:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 512
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 514
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v2

    .line 516
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lt"

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 519
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 520
    sget-object v0, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 521
    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance p1, Lorg/json/JSONObject;

    new-instance v0, Lcom/eogame/http/SyncHttp;

    invoke-direct {v0}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v1}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0, v1, p1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 528
    invoke-static {v1, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_1
    return-object v1
.end method

.method public sendResetPwdEmail(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 6

    .line 185
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_FORGET_PWD:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 187
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "gc"

    .line 190
    sget-object v5, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ln"

    .line 191
    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 192
    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 193
    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance p1, Lcom/eogame/http/SyncHttp;

    invoke-direct {p1}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    .locals 1

    :try_start_0
    const-string v0, "code"

    .line 45
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/eogame/model/HttpResult;->setCode(I)V

    const-string v0, "data"

    .line 46
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eogame/model/HttpResult;->setmJsonData(Lorg/json/JSONObject;)V

    const-string v0, "msg"

    .line 47
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x5

    .line 50
    invoke-virtual {p1, p2}, Lcom/eogame/model/HttpResult;->setResult(I)V

    .line 51
    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string v0, "eo_error_json"

    invoke-virtual {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public verifyPayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
    .locals 7

    .line 442
    new-instance v0, Lcom/eogame/model/HttpResult;

    sget-object v1, Lcom/eogame/constants/Data;->URL_VERIFY_ORDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/eogame/model/HttpResult;-><init>(Ljava/lang/String;)V

    .line 444
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid"

    .line 447
    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gid"

    .line 448
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rd"

    .line 449
    invoke-virtual {v1, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sgno"

    .line 450
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "t"

    .line 451
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gc"

    .line 452
    sget-object p2, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "gsk"

    .line 453
    invoke-virtual {v1, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "sk"

    .line 454
    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Lcom/eogame/http/SyncHttp;

    invoke-direct {p2}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    const-string p3, "verifyPayOrder jsonObject result"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, v0, p1}, Lcom/eogame/web/EOWebApiImpl;->setNormalResult(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 461
    invoke-static {v0, p1}, Lcom/eogame/web/EOWebApiImpl;->dealNetExecption(Lcom/eogame/model/HttpResult;Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method
