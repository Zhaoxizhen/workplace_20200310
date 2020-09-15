.class public Lcom/eogame/presenter/EOPayPresenter;
.super Lcom/eogame/base/BasePresenter;
.source "EOPayPresenter.java"


# static fields
.field private static final STATE_OFF:I = 0x1

.field private static final STATE_ON:I = 0x2

.field private static isRePay:Z = false


# instance fields
.field private isInit:Z

.field private isPaying:Z

.field private mGoogleLayout:Landroid/widget/LinearLayout;

.field private mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

.field private mPayInfo:Lcom/eogame/model/EOPayInfo;

.field private mRoleInfo:Lcom/eogame/model/EORoleInfo;

.field private mWebLayout:Landroid/widget/LinearLayout;

.field private webUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/eogame/base/BasePresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 59
    iput-boolean p2, p0, Lcom/eogame/presenter/EOPayPresenter;->isInit:Z

    .line 66
    new-instance p2, Lcom/eogame/presenter/EOGooglePresenter;

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p1, v0}, Lcom/eogame/presenter/EOGooglePresenter;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    .line 67
    iput-object p4, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    .line 68
    iput-object p3, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/UserSession;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/UserSession;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/EORoleInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/EOPayInfo;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method private dealPayChannelState(Ljava/lang/Object;)V
    .locals 5

    if-nez p1, :cond_0

    .line 277
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "eodealPayChannelState"

    const-string v1, "fail"

    invoke-virtual {p1, v0, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 281
    :cond_0
    check-cast p1, Lcom/eogame/model/HttpResult;

    .line 282
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "eo"

    if-ne v0, v1, :cond_3

    .line 283
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get pay channels success . \n "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "web"

    .line 286
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "local"

    .line 287
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 289
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 291
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {v1}, Lcom/eogame/presenter/EOGooglePresenter;->initIabHelper()V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    if-ne v0, v3, :cond_2

    .line 296
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mWebLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "webUrl"

    .line 297
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->webUrl:Ljava/lang/String;

    goto :goto_1

    .line 299
    :cond_2
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mWebLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 303
    :cond_3
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpResult:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get code failed, code=:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/eogame/presenter/EOPayPresenter;->onPayCancle()V

    .line 307
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/eo/games/sdk/R$string;->eo_payChannel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_5

    .line 308
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mWebLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 310
    :cond_5
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private dealPayVerify(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 319
    :cond_0
    check-cast p1, Lcom/eogame/model/HttpResult;

    .line 320
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dealpayverify"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify google pay \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v0

    const v1, 0x15f98

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    iput-boolean v2, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 334
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/listener/EOPayEvent;->onPayError(Ljava/lang/String;)V

    .line 336
    sget-boolean p1, Lcom/eogame/presenter/EOPayPresenter;->isRePay:Z

    if-eqz p1, :cond_2

    .line 337
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v2, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/eogame/presenter/EOLogPresenter;->sendRePayFail(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    goto :goto_2

    .line 339
    :cond_2
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v2, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/eogame/presenter/EOLogPresenter;->sendBuyFail(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    goto :goto_2

    .line 324
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v1, "eo_loading"

    invoke-static {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 325
    sget-boolean p1, Lcom/eogame/presenter/EOPayPresenter;->isRePay:Z

    if-eqz p1, :cond_4

    .line 326
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v2, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/eogame/presenter/EOLogPresenter;->sendRePaySuccess(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    goto :goto_1

    .line 328
    :cond_4
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v2, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, v0, v1, v2}, Lcom/eogame/presenter/EOLogPresenter;->sendBuySuccess(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    :goto_1
    const-string p1, "googlepay"

    const-string v0, "try to consumePurchase"

    .line 330
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOGooglePresenter;->consumePurchase()V

    :goto_2
    return-void
.end method

.method private getOrderForGoogle()V
    .locals 1

    .line 197
    new-instance v0, Lcom/eogame/presenter/EOPayPresenter$1;

    invoke-direct {v0, p0}, Lcom/eogame/presenter/EOPayPresenter$1;-><init>(Lcom/eogame/presenter/EOPayPresenter;)V

    .line 213
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method

.method private verifyGooglePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify google pay.  \t orderId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n repeatData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n signData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Lcom/eogame/presenter/EOPayPresenter$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/eogame/presenter/EOPayPresenter$2;-><init>(Lcom/eogame/presenter/EOPayPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method


# virtual methods
.method public GooglePay()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_pay_tip_inpayinging"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/eogame/presenter/EOPayPresenter;->isInit:Z

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_pay_google_no_init"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_loading"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    const-string v0, "googlepay"

    const-string v1, "try to queryInventory"

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v1}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/presenter/EOGooglePresenter;->queryInventory(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    :goto_0
    return-void
.end method

.method protected dealMessage(Ljava/lang/Object;I)V
    .locals 6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "what= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dealmessagewhat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sign_data"

    const-string v1, "repate_data"

    const-string v2, "order_id"

    const/4 v3, 0x0

    const-string v4, "eo"

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 175
    :pswitch_1
    iput-boolean v3, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 176
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consume google fale, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p2}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 178
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/listener/EOPayEvent;->onPayError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :pswitch_2
    iput-boolean v3, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 183
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p2}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 184
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consume google success, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/listener/EOPayEvent;->onPaySuccess(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 153
    :pswitch_3
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string p2, "buy google cancel"

    invoke-virtual {p1, v4, p2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 155
    invoke-static {}, Lcom/eogame/listener/EOPayEvent;->onPayCancle()V

    .line 156
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, p2, v0, v1}, Lcom/eogame/presenter/EOLogPresenter;->sendBuyFail(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    .line 157
    iput-boolean v3, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    goto/16 :goto_0

    .line 160
    :pswitch_4
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buy google faile, msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p2}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/eogame/listener/EOPayEvent;->onPayError(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 164
    iput-boolean v3, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 165
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, p2, v0, v1}, Lcom/eogame/presenter/EOLogPresenter;->sendBuyFail(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    goto/16 :goto_0

    .line 168
    :pswitch_5
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    const-string v3, "buy google success"

    invoke-virtual {p2, v4, v3}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    check-cast p1, Ljava/util/Map;

    .line 170
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-direct {p0, v2, p2, v1, p1}, Lcom/eogame/presenter/EOPayPresenter;->verifyGooglePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :pswitch_6
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string p2, "query product fail"

    invoke-virtual {p1, v4, p2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 131
    invoke-direct {p0}, Lcom/eogame/presenter/EOPayPresenter;->getOrderForGoogle()V

    goto/16 :goto_0

    :pswitch_7
    const-string p2, "query product success, into the verify google pay!"

    .line 135
    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v5, "eo_pay_google_re_pay"

    invoke-static {v4, v5}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    check-cast p1, Ljava/util/Map;

    .line 139
    :try_start_0
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    const-string v4, "googlepay"

    const-string v5, "try to verifyGooglePay"

    .line 140
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-direct {p0, v2, p2, v1, p1}, Lcom/eogame/presenter/EOPayPresenter;->verifyGooglePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    iput-boolean v3, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 147
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    const-string p1, "no user data"

    .line 148
    invoke-static {p1}, Lcom/eogame/listener/EOPayEvent;->onPayError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/eogame/presenter/EOPayPresenter;->isInit:Z

    .line 122
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "google init ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/eogame/presenter/EOPayPresenter;->isInit:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    iget-boolean p2, p0, Lcom/eogame/presenter/EOPayPresenter;->isInit:Z

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 124
    iget-boolean p1, p0, Lcom/eogame/presenter/EOPayPresenter;->isInit:Z

    if-nez p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v0, "eo_pay_google_init_fail"

    invoke-static {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :pswitch_9
    check-cast p1, Lcom/eogame/model/HttpResult;

    .line 98
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p2

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    .line 100
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v1, "eo_loading"

    invoke-static {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v3}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 101
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "sgno"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p2, p1}, Lcom/eogame/model/EOPayInfo;->setOrderNO(Ljava/lang/String;)V

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create order success, orderId= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/eogame/presenter/EOGooglePresenter;->buyPurchase(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-virtual {p1, p2, v0, v1}, Lcom/eogame/presenter/EOLogPresenter;->sendCreateOrder(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    const-string v0, "create order fail"

    invoke-virtual {p2, v4, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    iput-boolean v3, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    .line 111
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/listener/EOPayEvent;->onPayError(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOPayPresenter;->dealPayVerify(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOPayPresenter;->dealPayChannelState(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2776
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public doQueryPayWay(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    .line 251
    iput-object p2, p0, Lcom/eogame/presenter/EOPayPresenter;->mWebLayout:Landroid/widget/LinearLayout;

    .line 252
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mGoogleLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/eogame/presenter/EOPayPresenter;->mWebLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 255
    new-instance p1, Lcom/eogame/presenter/EOPayPresenter$3;

    invoke-direct {p1, p0}, Lcom/eogame/presenter/EOPayPresenter$3;-><init>(Lcom/eogame/presenter/EOPayPresenter;)V

    .line 267
    invoke-virtual {p1}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method

.method protected initData()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Lcom/eogame/presenter/EOPayPresenter;->isRePay:Z

    return-void
.end method

.method public jumpToNewWebPay()V
    .locals 3

    .line 382
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 383
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    const-string v2, "roleInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    const-string v2, "payInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 385
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 388
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public jumpToWebPay()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->webUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_pay_tip_no_web_pay"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    const-string v2, "roleInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    const-string v2, "payInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->webUrl:Ljava/lang/String;

    const-string v2, "web_pay_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 374
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 375
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/presenter/EOGooglePresenter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestory()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mGooglePayPresenter:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {v0}, Lcom/eogame/presenter/EOGooglePresenter;->onDestroy()V

    return-void
.end method

.method public onPayCancle()V
    .locals 3

    .line 397
    iget-boolean v0, p0, Lcom/eogame/presenter/EOPayPresenter;->isPaying:Z

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_pay_tip_inpayinging"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Lcom/eogame/listener/EOPayEvent;->onPayCancle()V

    .line 401
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
