.class public Lcom/eogame/activity/EOWebViewActivity;
.super Landroid/app/Activity;
.source "EOWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;,
        Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;,
        Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;
    }
.end annotation


# static fields
.field private static MAX_PROGRESS:I = 0x64


# instance fields
.field private Amount:Ljava/lang/String;

.field private AuthCode:Ljava/lang/String;

.field private FacServiceId:Ljava/lang/String;

.field private Key:Ljava/lang/String;

.field private TradeSeq:Ljava/lang/String;

.field private cpOrderId:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private doPayBackSync:Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;

.field private dosync:Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;

.field private gc:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isLoaded:Z

.field private istest:Z

.field private itemCode:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;

.field private mUserSession:Lcom/eogame/model/UserSession;

.field private mWebView:Landroid/webkit/WebView;

.field private page_from:I

.field private payInfo:Lcom/eogame/model/EOPayInfo;

.field private paymentType:Ljava/lang/String;

.field private pn:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private roleInfo:Lcom/eogame/model/EORoleInfo;

.field private sc:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private sk:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private tradeType:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    iput-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->pn:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->gc:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->sc:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->itemCode:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->serverId:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->AuthCode:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->TradeSeq:Ljava/lang/String;

    .line 98
    sget-boolean v1, Lcom/eogame/constants/EOConfig;->DEBUG:Z

    iput-boolean v1, p0, Lcom/eogame/activity/EOWebViewActivity;->istest:Z

    const-string v1, "Gbull"

    .line 102
    iput-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->FacServiceId:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->productId:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->productName:Ljava/lang/String;

    const-string v1, "1"

    .line 105
    iput-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->tradeType:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->Amount:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->cpOrderId:Ljava/lang/String;

    const-string v1, "TWD"

    .line 108
    iput-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->currency:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->paymentType:Ljava/lang/String;

    return-void
.end method

.method private ShowAlertDialog(Ljava/lang/String;)V
    .locals 2

    .line 458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "MyCard S2S API"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/eogame/activity/EOWebViewActivity$5;

    invoke-direct {v0, p0}, Lcom/eogame/activity/EOWebViewActivity$5;-><init>(Lcom/eogame/activity/EOWebViewActivity;)V

    const-string v1, "\u78ba\u5b9a"

    .line 459
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$100(Lcom/eogame/activity/EOWebViewActivity;)Landroid/app/Activity;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/activity/EOWebViewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/eogame/activity/EOWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 70
    sget v0, Lcom/eogame/activity/EOWebViewActivity;->MAX_PROGRESS:I

    return v0
.end method

.method static synthetic access$402(Lcom/eogame/activity/EOWebViewActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/eogame/activity/EOWebViewActivity;->isLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/eogame/activity/EOWebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/eogame/activity/EOWebViewActivity;->AuthCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity;->AuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eogame/activity/EOWebViewActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/eogame/activity/EOWebViewActivity;->istest:Z

    return p0
.end method

.method static synthetic access$700(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/eogame/activity/EOWebViewActivity;->ShowAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/eogame/activity/EOWebViewActivity;)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->onDestroy()V

    return-void
.end method

.method private getHashKey()Ljava/lang/String;
    .locals 3

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->FacServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->TradeSeq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->tradeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->paymentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->Amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/eogame/activity/EOWebViewActivity;->istest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->Key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebViewActivity;->Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :try_start_0
    const-string v0, "SHA-256"

    .line 484
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 485
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 486
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity;->bytes2Hex([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bytes2Hex([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    .line 495
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 496
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public closePay()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/eogame/activity/EOWebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOWebViewActivity$3;-><init>(Lcom/eogame/activity/EOWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getHeaderParams()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 223
    invoke-static {}, Lcom/eogame/http/HttpUtils;->getHeaderParameters()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header parameters  \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eo"

    invoke-virtual {v1, v3, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPayParams()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 203
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gc"

    .line 204
    sget-object v2, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sc"

    .line 205
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 206
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rid"

    .line 208
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rn"

    .line 209
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gl"

    .line 210
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "ext"

    .line 211
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EOPayInfo;->getExtInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "money"

    .line 212
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "cpid"

    .line 213
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EOPayInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "{}"

    return-object v0
.end method

.method public getView(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected initData()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$string;->eo_MyCard_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->Key:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    .line 152
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;-><init>(Lcom/eogame/activity/EOWebViewActivity;Lcom/eogame/activity/EOWebViewActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 155
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/eogame/activity/EOWebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/eogame/activity/EOWebViewActivity$1;-><init>(Lcom/eogame/activity/EOWebViewActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 170
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "eo_pay"

    invoke-virtual {v0, p0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 175
    sget-object v0, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->gc:Ljava/lang/String;

    .line 176
    sget-object v0, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->pn:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "roleInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EORoleInfo;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    .line 178
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->sc:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->sc:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->serverId:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roleInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v3}, Lcom/eogame/model/EORoleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eogameinfo"

    invoke-virtual {v0, v3, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "payInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOPayInfo;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    .line 182
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->productId:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->productName:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->Amount:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->cpOrderId:Ljava/lang/String;

    .line 187
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payInfo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v4}, Lcom/eogame/model/EOPayInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentUserId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5546\u54c1\u91d1\u989d:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->Amount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u8ba2\u5355\u53f7:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v3}, Lcom/eogame/model/EOPayInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "web_pay_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebViewActivity;->startMycard(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 1

    const-string v0, "eo_layout_webview"

    .line 137
    invoke-static {p0, v0}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebViewActivity;->setContentView(I)V

    const-string v0, "eo_layout_webview_root"

    .line 138
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebViewActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v0, "eo_webview_payInfoView"

    .line 139
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebViewActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mTextView:Landroid/widget/TextView;

    const-string v0, "eo_webview_pb"

    .line 140
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebViewActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public makePayBackData(Lorg/json/JSONObject;)Landroid/content/ContentValues;
    .locals 6

    const-string v0, ""

    .line 507
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v2, "ReturnCode"

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnCode"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ReturnMsg"

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnMsg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PayResult"

    const-string v3, "payResult"

    .line 511
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "FacTradeSeq"

    const-string v3, "facTradeSeq"

    .line 512
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PaymentType"

    const-string v3, "paymentType"

    .line 513
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Amount"

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amount"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Currency"

    const-string v2, "currency"

    .line 515
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MyCardTradeNo"

    const-string v2, "myCardTradeNO"

    .line 516
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MyCardType"

    const-string v2, "myCardType"

    .line 517
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PromoCode"

    const-string v2, "promoCode"

    .line 518
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Hash"

    const-string v2, "hash"

    .line 519
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "paybackdata"

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public makeTradeData()Landroid/content/ContentValues;
    .locals 6

    const-string v0, ""

    .line 409
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->t:Ljava/lang/String;

    .line 411
    sget-object v1, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/eogame/crypto/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->gc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->sk:Ljava/lang/String;

    .line 413
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "md5:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/eogame/activity/EOWebViewActivity;->sk:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eomd5"

    invoke-virtual {v2, v4, v3}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->gc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->serverId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->currency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eogame/crypto/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " gamekeymd5:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gamecode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->gc:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->t:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serverid:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->serverId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currency:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity;->currency:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 420
    :try_start_0
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "uid"

    .line 421
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pn"

    .line 422
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->pn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gc"

    .line 423
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->gc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sc"

    .line 424
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->sc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serverId"

    .line 425
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paymentType"

    .line 426
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->paymentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemCode"

    .line 427
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->itemCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "productName"

    .line 428
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tradeType"

    .line 429
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->tradeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "currency"

    .line 430
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "amount"

    .line 431
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->Amount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "t"

    .line 432
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sk"

    .line 433
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->sk:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rid"

    .line 435
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v3}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rn"

    .line 436
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v3}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gl"

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eogame/activity/EOWebViewActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v4}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "languageCode"

    const-string v3, "en-us"

    .line 438
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "channel"

    const-string v3, "2"

    .line 439
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "deviceId"

    .line 440
    iget-object v3, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/eogame/utils/EODeviceInfoUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "deviceName"

    .line 442
    invoke-static {}, Lcom/eogame/utils/EODeviceInfoUtil;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "deviceSystemVersion"

    .line 443
    invoke-static {}, Lcom/eogame/utils/Util;->getSystemVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "deviceSdkVersion"

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/eogame/utils/Util;->getSDKVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceFactoryName"

    .line 445
    invoke-static {}, Lcom/eogame/utils/EODeviceInfoUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceScreen"

    .line 446
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/eogame/utils/ScreenUtils;->getScreen(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "network"

    .line 447
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/eogame/utils/Util;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ext1"

    .line 448
    iget-object v2, p0, Lcom/eogame/activity/EOWebViewActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EOPayInfo;->getExtInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    :goto_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentvalue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contentvalue"

    invoke-virtual {v0, v3, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "returnMsg"

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x270f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x22b8

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 p1, -0x1

    if-ne p1, p2, :cond_2

    .line 305
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    sget-object p2, Ltw/com/mycard/paymentsdk/baseLib/Config;->PaySDK_Result:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "returnCode"

    .line 306
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string p3, "payResult"

    .line 307
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    .line 308
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    const-string v2, "eopaysdkresult"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x3

    if-ne p3, p2, :cond_1

    .line 311
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity;->makePayBackData(Lorg/json/JSONObject;)Landroid/content/ContentValues;

    move-result-object p1

    .line 312
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    const-string p3, "eopaybackcontentvalue"

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance p2, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;

    invoke-direct {p2, p0, p1}, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;-><init>(Lcom/eogame/activity/EOWebViewActivity;Landroid/content/ContentValues;)V

    iput-object p2, p0, Lcom/eogame/activity/EOWebViewActivity;->doPayBackSync:Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;

    .line 314
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity;->doPayBackSync:Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 317
    :cond_1
    iget-object p2, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK\u4ea4\u6613\u5931\u6557\uff0creturnMsg\uff1a"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 318
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity;->payFail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 321
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    iput-object p0, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    .line 124
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 125
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity;->mUserSession:Lcom/eogame/model/UserSession;

    .line 126
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eogame/model/UserSession;->buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;

    .line 127
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/eogame/utils/Util;->setFinishOnTouchOutside(Landroid/app/Activity;)V

    .line 129
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->initView()V

    .line 130
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->initListener()V

    .line 131
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->initData()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 272
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public payFail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 253
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web pay fail, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/eogame/activity/EOWebViewActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/eogame/activity/EOWebViewActivity$4;-><init>(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public paySuccess(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 230
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web pay success eono = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/eogame/activity/EOWebViewActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/eogame/activity/EOWebViewActivity$2;-><init>(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startMycard(Ljava/lang/String;)V
    .locals 3

    .line 333
    new-instance v0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;

    iget-boolean v1, p0, Lcom/eogame/activity/EOWebViewActivity;->istest:Z

    invoke-virtual {p0}, Lcom/eogame/activity/EOWebViewActivity;->makeTradeData()Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;-><init>(Lcom/eogame/activity/EOWebViewActivity;ZLandroid/content/ContentValues;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eogame/activity/EOWebViewActivity;->dosync:Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;

    .line 335
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity;->dosync:Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
