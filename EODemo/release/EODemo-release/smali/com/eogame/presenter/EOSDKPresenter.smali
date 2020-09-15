.class public Lcom/eogame/presenter/EOSDKPresenter;
.super Ljava/lang/Object;
.source "EOSDKPresenter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EOSDKPresenter"

.field private static instance:Lcom/eogame/presenter/EOSDKPresenter;

.field public static mActivity:Landroid/content/Context;


# instance fields
.field private isInit:Z

.field private isLogging:Z

.field private isLogined:Z

.field private mFloatViewUtil:Lcom/eogame/utils/EOFloatViewUtil;

.field private mUpdateUtil:Lcom/eogame/utils/EOUpdateUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isInit:Z

    .line 65
    iput-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogging:Z

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/presenter/EOSDKPresenter;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isInit:Z

    return p0
.end method

.method static synthetic access$102(Lcom/eogame/presenter/EOSDKPresenter;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    return p1
.end method

.method static synthetic access$202(Lcom/eogame/presenter/EOSDKPresenter;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogging:Z

    return p1
.end method

.method private getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 0

    .line 492
    check-cast p1, Landroid/app/Activity;

    return-object p1
.end method

.method private getCurrentUser()Lcom/eogame/model/EOAccountEntity;
    .locals 2

    .line 424
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserInfo()Lcom/eogame/model/EOAccountEntity;

    move-result-object v0

    .line 425
    iget-object v1, v0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private initServiceInfo()V
    .locals 1

    .line 446
    new-instance v0, Lcom/eogame/presenter/EOSDKPresenter$5;

    invoke-direct {v0, p0}, Lcom/eogame/presenter/EOSDKPresenter$5;-><init>(Lcom/eogame/presenter/EOSDKPresenter;)V

    .line 464
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method

.method public static instance()Lcom/eogame/presenter/EOSDKPresenter;
    .locals 1

    .line 71
    sget-object v0, Lcom/eogame/presenter/EOSDKPresenter;->instance:Lcom/eogame/presenter/EOSDKPresenter;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/eogame/presenter/EOSDKPresenter;

    invoke-direct {v0}, Lcom/eogame/presenter/EOSDKPresenter;-><init>()V

    sput-object v0, Lcom/eogame/presenter/EOSDKPresenter;->instance:Lcom/eogame/presenter/EOSDKPresenter;

    .line 74
    :cond_0
    sget-object v0, Lcom/eogame/presenter/EOSDKPresenter;->instance:Lcom/eogame/presenter/EOSDKPresenter;

    return-object v0
.end method

.method private setRoleInfo(Lcom/eogame/model/EORoleInfo;)V
    .locals 1

    .line 81
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eogame/model/UserSession;->setRoleInfo(Lcom/eogame/model/EORoleInfo;)V

    return-void
.end method

.method private showWelcome(Landroid/content/Context;)V
    .locals 1

    .line 472
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 473
    check-cast p1, Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    iget-object v0, v0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/eogame/utils/AnimationUtil;->startWelcomeAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .locals 0

    .line 436
    iget-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isInit:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 439
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V
    .locals 1

    .line 189
    sput-object p1, Lcom/eogame/presenter/EOSDKPresenter;->mActivity:Landroid/content/Context;

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "config is null in EOSDK init()."

    .line 192
    invoke-interface {p3, p1}, Lcom/eogame/listener/InitCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p2}, Lcom/eogame/constants/EOConfig;->getGameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/eogame/constants/EOConfig;->getGameKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "gameCode or gameNmae is empty."

    .line 197
    invoke-interface {p3, v0}, Lcom/eogame/listener/InitCallback;->onError(Ljava/lang/String;)V

    .line 200
    :cond_3
    :try_start_0
    invoke-static {p1, p2}, Lcom/eogame/constants/EOCommon;->init(Landroid/content/Context;Lcom/eogame/constants/EOConfig;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/eogame/http/HttpUtils;->setContext(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/eogame/presenter/EOSDKPresenter;->initServiceInfo()V

    .line 203
    invoke-static {p1}, Lcom/eogame/utils/ScreenUtils;->calculateViewSize(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isInit:Z

    .line 206
    invoke-interface {p3}, Lcom/eogame/listener/InitCallback;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "init with exception."

    .line 209
    invoke-interface {p3, p1}, Lcom/eogame/listener/InitCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V
    .locals 1

    .line 242
    sput-object p1, Lcom/eogame/presenter/EOSDKPresenter;->mActivity:Landroid/content/Context;

    .line 243
    iget-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isInit:Z

    if-nez v0, :cond_0

    const-string p1, "Call init first."

    .line 244
    invoke-interface {p2, p1}, Lcom/eogame/listener/LoginCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogging:Z

    if-eqz v0, :cond_1

    return-void

    .line 253
    :cond_1
    :try_start_0
    new-instance v0, Lcom/eogame/presenter/EOSDKPresenter$2;

    invoke-direct {v0, p0, p2}, Lcom/eogame/presenter/EOSDKPresenter$2;-><init>(Lcom/eogame/presenter/EOSDKPresenter;Lcom/eogame/listener/LoginCallback;)V

    invoke-static {p1, v0}, Lcom/eogame/listener/EOLoginEvent;->setListener(Landroid/content/Context;Lcom/eogame/listener/EOLoginEvent$LoginEventListener;)V

    .line 281
    new-instance v0, Lcom/eogame/presenter/EOSDKPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/eogame/presenter/EOSDKPresenter$3;-><init>(Lcom/eogame/presenter/EOSDKPresenter;Landroid/content/Context;)V

    .line 325
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogging:Z

    .line 329
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    const-string p1, "login with exception."

    .line 330
    invoke-interface {p2, p1}, Lcom/eogame/listener/LoginCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Lcom/eogame/listener/EOLoginEvent;->onLogout()V

    return-void

    .line 386
    :cond_0
    sput-object p1, Lcom/eogame/presenter/EOSDKPresenter;->mActivity:Landroid/content/Context;

    .line 388
    :try_start_0
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eogame/model/UserSession;->cleanCurrent()V

    const/4 p1, 0x0

    .line 389
    iput-boolean p1, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    .line 390
    invoke-static {}, Lcom/eogame/listener/EOLoginEvent;->onLogout()V

    .line 391
    invoke-static {}, Lcom/eogame/utils/PreferenceUtils;->instance()Lcom/eogame/utils/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eogame/utils/PreferenceUtils;->setIsSwitchLogin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x4e22

    if-ne p1, p2, :cond_0

    .line 484
    sget-object p1, Lcom/eogame/presenter/EOSDKPresenter;->mActivity:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/utils/EOPermissionUtil;->checkDrawOverlays(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 p2, 0x4e21

    if-eq p1, p2, :cond_1

    const/16 p2, 0x4e23

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    sget-object p1, Lcom/eogame/presenter/EOSDKPresenter;->instance:Lcom/eogame/presenter/EOSDKPresenter;

    sget-object p2, Lcom/eogame/constants/EODataHolder;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/eogame/constants/EODataHolder;->mLoginCallback:Lcom/eogame/listener/LoginCallback;

    invoke-virtual {p1, p2, p3}, Lcom/eogame/presenter/EOSDKPresenter;->login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V

    goto :goto_0

    .line 504
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_2

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_2

    .line 505
    sget-object p1, Lcom/eogame/presenter/EOSDKPresenter;->instance:Lcom/eogame/presenter/EOSDKPresenter;

    sget-object p2, Lcom/eogame/constants/EODataHolder;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/eogame/constants/EODataHolder;->mConfig:Lcom/eogame/constants/EOConfig;

    sget-object v0, Lcom/eogame/constants/EODataHolder;->mInitCallback:Lcom/eogame/listener/InitCallback;

    invoke-virtual {p1, p2, p3, v0}, Lcom/eogame/presenter/EOSDKPresenter;->init(Landroid/content/Context;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V

    goto :goto_0

    .line 507
    :cond_2
    sget-object p1, Lcom/eogame/constants/EODataHolder;->mInitCallback:Lcom/eogame/listener/InitCallback;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_user_denied_permission"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/eogame/listener/InitCallback;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openUserCenter(Landroid/content/Context;)V
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    if-nez v0, :cond_0

    const-string p1, "EOSDK"

    const-string v0, "login please"

    .line 411
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 414
    :cond_0
    sput-object p1, Lcom/eogame/presenter/EOSDKPresenter;->mActivity:Landroid/content/Context;

    .line 415
    invoke-static {p1}, Lcom/eogame/utils/PageUtil;->jump2UserCenter(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Landroid/content/Context;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;Lcom/eogame/listener/PayCallback;)V
    .locals 1

    .line 343
    :try_start_0
    iget-boolean v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->isLogined:Z

    if-nez v0, :cond_0

    const-string p1, "Call EOSDK.login first."

    .line 344
    invoke-interface {p4, p1}, Lcom/eogame/listener/PayCallback;->onError(Ljava/lang/String;)V

    return-void

    .line 347
    :cond_0
    sput-object p1, Lcom/eogame/presenter/EOSDKPresenter;->mActivity:Landroid/content/Context;

    .line 348
    sput-object p4, Lcom/eogame/activity/EOPayActivity;->mPayCallback:Lcom/eogame/listener/PayCallback;

    .line 349
    invoke-static {p1, p2, p3}, Lcom/eogame/utils/PageUtil;->jump2Pay(Landroid/content/Context;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    .line 350
    new-instance v0, Lcom/eogame/presenter/EOSDKPresenter$4;

    invoke-direct {v0, p0, p3, p2, p4}, Lcom/eogame/presenter/EOSDKPresenter$4;-><init>(Lcom/eogame/presenter/EOSDKPresenter;Lcom/eogame/model/EOPayInfo;Lcom/eogame/model/EORoleInfo;Lcom/eogame/listener/PayCallback;)V

    invoke-static {p1, v0}, Lcom/eogame/listener/EOPayEvent;->setListener(Landroid/content/Context;Lcom/eogame/listener/EOPayEvent$PayEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 373
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public prepareInit(Landroid/content/Context;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V
    .locals 0

    .line 91
    sput-object p1, Lcom/eogame/constants/EODataHolder;->mContext:Landroid/content/Context;

    .line 92
    sput-object p2, Lcom/eogame/constants/EODataHolder;->mConfig:Lcom/eogame/constants/EOConfig;

    .line 93
    sput-object p3, Lcom/eogame/constants/EODataHolder;->mInitCallback:Lcom/eogame/listener/InitCallback;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/eogame/utils/ResourceUtil;->init(Landroid/content/Context;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    const-string p3, "android.permission.READ_PHONE_STATE"

    invoke-static {p2, p3}, Lcom/eogame/utils/EOPermissionUtil;->checkPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 97
    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const/16 p2, 0x4e21

    invoke-static {p1, p3, p2}, Lcom/eogame/utils/EOPermissionUtil;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void

    .line 119
    :cond_0
    sget-object p2, Lcom/eogame/constants/EODataHolder;->mConfig:Lcom/eogame/constants/EOConfig;

    sget-object p3, Lcom/eogame/constants/EODataHolder;->mInitCallback:Lcom/eogame/listener/InitCallback;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eogame/presenter/EOSDKPresenter;->init(Landroid/content/Context;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V

    return-void
.end method

.method public prepareLogin(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V
    .locals 0

    .line 224
    sput-object p1, Lcom/eogame/constants/EODataHolder;->mContext:Landroid/content/Context;

    .line 225
    sput-object p2, Lcom/eogame/constants/EODataHolder;->mLoginCallback:Lcom/eogame/listener/LoginCallback;

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/eogame/presenter/EOSDKPresenter;->login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V

    return-void
.end method

.method public setFloatLocation(I)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter;->mFloatViewUtil:Lcom/eogame/utils/EOFloatViewUtil;

    invoke-virtual {v0, p1}, Lcom/eogame/utils/EOFloatViewUtil;->setLocation(I)V

    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 1

    .line 126
    new-instance v0, Lcom/eogame/presenter/EOSDKPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/eogame/presenter/EOSDKPresenter$1;-><init>(Lcom/eogame/presenter/EOSDKPresenter;Landroid/content/Context;)V

    .line 178
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method
