.class public Lcom/eogame/activity/EOWebBrowserActivity;
.super Lcom/eogame/base/BasePage;
.source "EOWebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;,
        Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;,
        Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;
    }
.end annotation


# static fields
.field private static final SSL_NOTIFICATION:Ljava/lang/String; = "SSL\u8ba4\u8bc1\u5931\u8d25,\u662f\u5426\u7ee7\u7eed\u8bbf\u95ee?"


# instance fields
.field private amount:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private gameCode:Ljava/lang/String;

.field private itemCode:Ljava/lang/String;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebSettings:Landroid/webkit/WebSettings;

.field private mWebView:Landroid/webkit/WebView;

.field private packageName:Ljava/lang/String;

.field private payInfo:Lcom/eogame/model/EOPayInfo;

.field private price:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleInfo:Lcom/eogame/model/EORoleInfo;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/eogame/base/BasePage;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p11}, Lcom/eogame/activity/EOWebBrowserActivity;->getRazerPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p12}, Lcom/eogame/activity/EOWebBrowserActivity;->getXsollaPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p13}, Lcom/eogame/activity/EOWebBrowserActivity;->getCodaPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCodaPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    .line 439
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uid"

    move-object v3, p2

    .line 440
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "gameCode"

    move-object v3, p3

    .line 441
    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "serverId"

    move-object v3, p4

    .line 442
    invoke-virtual {v0, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "price"

    move-object v3, p5

    .line 443
    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleName"

    move-object v3, p6

    .line 444
    invoke-virtual {v0, v2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleLevel"

    move-object v3, p7

    .line 445
    invoke-virtual {v0, v2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channelId"

    move-object v3, p8

    .line 446
    invoke-virtual {v0, v2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "currencyCode"

    move-object v3, p9

    .line 447
    invoke-virtual {v0, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "itemCode"

    move-object v3, p10

    .line 448
    invoke-virtual {v0, v2, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "roleId"

    move-object/from16 v3, p11

    .line 449
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "packageName"

    move-object/from16 v3, p12

    .line 450
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productName"

    move-object/from16 v3, p13

    .line 451
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/eogame/http/SyncHttp;

    invoke-direct {v3}, Lcom/eogame/http/SyncHttp;-><init>()V

    move-object v4, p1

    invoke-virtual {v3, p1, v0}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v3, "jsonObject"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    .line 458
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "payUrl"

    .line 460
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getRazerPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 198
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uid"

    .line 199
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gameCode"

    .line 200
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "serverId"

    .line 201
    invoke-virtual {v1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "amount"

    .line 202
    invoke-virtual {v1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "roleId"

    .line 203
    invoke-virtual {v1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "roleName"

    .line 204
    invoke-virtual {v1, p2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "roleLevel"

    .line 205
    invoke-virtual {v1, p2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "channelId"

    .line 206
    invoke-virtual {v1, p2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "currencyCode"

    .line 207
    invoke-virtual {v1, p2, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "packageName"

    .line 208
    invoke-virtual {v1, p2, p11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance p2, Lorg/json/JSONObject;

    new-instance p3, Lcom/eogame/http/SyncHttp;

    invoke-direct {p3}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {p3, p1, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string p3, "jsonObject"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 215
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "paymentUrl"

    .line 217
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private getXsollaPayUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 317
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "uid"

    .line 318
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gameCode"

    .line 319
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "serverId"

    .line 320
    invoke-virtual {v1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "price"

    .line 321
    invoke-virtual {v1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "roleId"

    .line 322
    invoke-virtual {v1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "roleName"

    .line 323
    invoke-virtual {v1, p2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "roleLevel"

    .line 324
    invoke-virtual {v1, p2, p8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "currency"

    .line 325
    invoke-virtual {v1, p2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "packageName"

    .line 326
    invoke-virtual {v1, p2, p10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "itemCode"

    .line 327
    invoke-virtual {v1, p2, p11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "productName"

    .line 328
    invoke-virtual {v1, p2, p12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    new-instance p2, Lorg/json/JSONObject;

    new-instance p3, Lcom/eogame/http/SyncHttp;

    invoke-direct {p3}, Lcom/eogame/http/SyncHttp;-><init>()V

    invoke-virtual {p3, p1, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string p3, "jsonObject"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p4}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "code"

    .line 335
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "payUrl"

    .line 337
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 340
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 18

    move-object/from16 v15, p0

    .line 64
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roleInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EORoleInfo;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    .line 65
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOPayInfo;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    .line 66
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->uid:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->gameCode:Ljava/lang/String;

    .line 68
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->serverId:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v15, Lcom/eogame/activity/EOWebBrowserActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v1}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->price:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/eogame/activity/EOWebBrowserActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->amount:Ljava/lang/String;

    .line 71
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->itemCode:Ljava/lang/String;

    .line 72
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleId:Ljava/lang/String;

    .line 73
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleName:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleLevel:Ljava/lang/String;

    .line 75
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "channelId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    .line 76
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "currencyCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->currencyCode:Ljava/lang/String;

    .line 77
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->productName:Ljava/lang/String;

    .line 78
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->currencyCode:Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->currency:Ljava/lang/String;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/eogame/activity/EOWebBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->packageName:Ljava/lang/String;

    .line 81
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_3

    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    const-string v1, "6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v13, v15

    const/4 v15, 0x0

    goto/16 :goto_0

    .line 85
    :cond_0
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "XsollaPayUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    .line 87
    new-instance v13, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;

    iget-object v2, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    iget-object v3, v15, Lcom/eogame/activity/EOWebBrowserActivity;->uid:Ljava/lang/String;

    iget-object v4, v15, Lcom/eogame/activity/EOWebBrowserActivity;->gameCode:Ljava/lang/String;

    iget-object v5, v15, Lcom/eogame/activity/EOWebBrowserActivity;->serverId:Ljava/lang/String;

    iget-object v6, v15, Lcom/eogame/activity/EOWebBrowserActivity;->price:Ljava/lang/String;

    iget-object v7, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleId:Ljava/lang/String;

    iget-object v8, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleName:Ljava/lang/String;

    iget-object v9, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleLevel:Ljava/lang/String;

    iget-object v10, v15, Lcom/eogame/activity/EOWebBrowserActivity;->currency:Ljava/lang/String;

    iget-object v11, v15, Lcom/eogame/activity/EOWebBrowserActivity;->packageName:Ljava/lang/String;

    iget-object v12, v15, Lcom/eogame/activity/EOWebBrowserActivity;->itemCode:Ljava/lang/String;

    iget-object v1, v15, Lcom/eogame/activity/EOWebBrowserActivity;->productName:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;-><init>(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-array v0, v14, [Ljava/lang/String;

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-object v13, v15

    goto/16 :goto_1

    .line 89
    :cond_1
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CodapayUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    .line 91
    new-instance v13, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;

    iget-object v2, v15, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    iget-object v3, v15, Lcom/eogame/activity/EOWebBrowserActivity;->uid:Ljava/lang/String;

    iget-object v4, v15, Lcom/eogame/activity/EOWebBrowserActivity;->gameCode:Ljava/lang/String;

    iget-object v5, v15, Lcom/eogame/activity/EOWebBrowserActivity;->serverId:Ljava/lang/String;

    iget-object v6, v15, Lcom/eogame/activity/EOWebBrowserActivity;->price:Ljava/lang/String;

    iget-object v7, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleName:Ljava/lang/String;

    iget-object v8, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleLevel:Ljava/lang/String;

    iget-object v9, v15, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    iget-object v10, v15, Lcom/eogame/activity/EOWebBrowserActivity;->currency:Ljava/lang/String;

    iget-object v11, v15, Lcom/eogame/activity/EOWebBrowserActivity;->itemCode:Ljava/lang/String;

    iget-object v12, v15, Lcom/eogame/activity/EOWebBrowserActivity;->roleId:Ljava/lang/String;

    iget-object v1, v15, Lcom/eogame/activity/EOWebBrowserActivity;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/eogame/activity/EOWebBrowserActivity;->productName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object v15, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;-><init>(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-array v0, v15, [Ljava/lang/String;

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    move-object/from16 v13, p0

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    move-object/from16 v13, p0

    .line 82
    :goto_0
    iget-object v0, v13, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "razerPayUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v13, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    .line 83
    new-instance v14, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;

    iget-object v2, v13, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    iget-object v3, v13, Lcom/eogame/activity/EOWebBrowserActivity;->uid:Ljava/lang/String;

    iget-object v4, v13, Lcom/eogame/activity/EOWebBrowserActivity;->gameCode:Ljava/lang/String;

    iget-object v5, v13, Lcom/eogame/activity/EOWebBrowserActivity;->serverId:Ljava/lang/String;

    iget-object v6, v13, Lcom/eogame/activity/EOWebBrowserActivity;->amount:Ljava/lang/String;

    iget-object v7, v13, Lcom/eogame/activity/EOWebBrowserActivity;->roleId:Ljava/lang/String;

    iget-object v8, v13, Lcom/eogame/activity/EOWebBrowserActivity;->roleName:Ljava/lang/String;

    iget-object v9, v13, Lcom/eogame/activity/EOWebBrowserActivity;->roleLevel:Ljava/lang/String;

    iget-object v10, v13, Lcom/eogame/activity/EOWebBrowserActivity;->channelId:Ljava/lang/String;

    iget-object v11, v13, Lcom/eogame/activity/EOWebBrowserActivity;->currencyCode:Ljava/lang/String;

    iget-object v12, v13, Lcom/eogame/activity/EOWebBrowserActivity;->packageName:Ljava/lang/String;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;-><init>(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-array v0, v15, [Ljava/lang/String;

    invoke-virtual {v14, v0}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :goto_1
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/eogame/activity/EOWebBrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EOWebBrowserActivity"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 3

    .line 111
    sget v0, Lcom/eo/games/sdk/R$layout;->eo_layout_webbrowser:I

    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebBrowserActivity;->setContentView(I)V

    .line 112
    sget v0, Lcom/eo/games/sdk/R$id;->eo_layout_webbrowser_Tv:I

    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mTextView:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/eo/games/sdk/R$id;->eo_layout_webbrowser_webview:I

    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    .line 114
    sget v0, Lcom/eo/games/sdk/R$id;->eo_layout_webbrowser_root:I

    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mRoot:Landroid/widget/LinearLayout;

    .line 115
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    .line 116
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 119
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 120
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 121
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 122
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 123
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 124
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 125
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 126
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/eogame/activity/EOWebBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOWebBrowserActivity$1;-><init>(Lcom/eogame/activity/EOWebBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected onClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/eogame/base/BasePage;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 182
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method
