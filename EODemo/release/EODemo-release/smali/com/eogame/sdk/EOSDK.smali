.class public Lcom/eogame/sdk/EOSDK;
.super Ljava/lang/Object;
.source "EOSDK.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EOSDK"

.field private static instance:Lcom/eogame/sdk/EOSDK;

.field private static mPresenter:Lcom/eogame/presenter/EOSDKPresenter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/eogame/sdk/EOSDK;
    .locals 1

    .line 67
    sget-object v0, Lcom/eogame/sdk/EOSDK;->instance:Lcom/eogame/sdk/EOSDK;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/eogame/sdk/EOSDK;

    invoke-direct {v0}, Lcom/eogame/sdk/EOSDK;-><init>()V

    sput-object v0, Lcom/eogame/sdk/EOSDK;->instance:Lcom/eogame/sdk/EOSDK;

    .line 69
    invoke-static {}, Lcom/eogame/presenter/EOSDKPresenter;->instance()Lcom/eogame/presenter/EOSDKPresenter;

    move-result-object v0

    sput-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    .line 71
    :cond_0
    sget-object v0, Lcom/eogame/sdk/EOSDK;->instance:Lcom/eogame/sdk/EOSDK;

    return-object v0
.end method

.method private getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 125
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "zh_CN"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "zh-cn"

    return-object p1

    :cond_0
    const-string p1, "zh-hk"

    return-object p1

    :cond_1
    const-string p1, "en-us"

    return-object p1
.end method

.method private setRoleInfo(Lcom/eogame/model/EORoleInfo;)V
    .locals 1

    .line 78
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eogame/model/UserSession;->setRoleInfo(Lcom/eogame/model/EORoleInfo;)V

    return-void
.end method


# virtual methods
.method public createRoleGame(Lcom/eogame/model/EORoleInfo;)V
    .locals 2

    .line 288
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object v0

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/eogame/presenter/EOLogPresenter;->sendCreateRole(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;)V

    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 3

    .line 295
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object v0

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eogame/model/UserSession;->getRoleInfo()Lcom/eogame/model/EORoleInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eogame/presenter/EOLogPresenter;->sendQuitGame(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;)V

    .line 296
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->destroy(Landroid/content/Context;)V

    return-void
.end method

.method public entryGame(Lcom/eogame/model/EORoleInfo;)V
    .locals 2

    .line 276
    new-instance v0, Lcom/kochava/base/Tracker$Event;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/kochava/base/Tracker$Event;-><init>(I)V

    .line 277
    invoke-virtual {p1}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/Tracker$Event;->setUserId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/Tracker$Event;->setUserName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/kochava/base/Tracker;->sendEvent(Lcom/kochava/base/Tracker$Event;)V

    .line 279
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eogame/model/UserSession;->setRoleInfo(Lcom/eogame/model/EORoleInfo;)V

    .line 280
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object v0

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/eogame/presenter/EOLogPresenter;->sendEntryGame(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;)V

    return-void
.end method

.method public getFacebookFriends(Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V
    .locals 2

    .line 178
    sget-object v0, Lcom/eogame/model/EOAccountEntity;->FB_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    new-instance v1, Lcom/eogame/sdk/EOSDK$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/eogame/sdk/EOSDK$1;-><init>(Lcom/eogame/sdk/EOSDK;Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V

    invoke-virtual {v0, p1, v1}, Lcom/eogame/facebook/FacebookHelper;->getFacebookFriendsInfo(Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V

    goto :goto_0

    :cond_0
    const-string p1, "user is no facebook user"

    .line 247
    invoke-interface {p2, p1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "context is null in EOSDK init()."

    .line 98
    invoke-interface {p3, p1}, Lcom/eogame/listener/InitCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/eogame/sdk/EOSDK;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p2, v0}, Lcom/eogame/constants/EOConfig;->setGameLanguage(Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/eogame/sdk/EOSDK;->instance:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {v1, p1, v0}, Lcom/eogame/sdk/EOSDK;->setGameLanguage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/eogame/constants/EOConfig;->getGameLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eogame/utils/AndroidUtils;->setLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/presenter/EOSDKPresenter;->prepareInit(Landroid/content/Context;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->kochava_app_guid:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "kochava"

    const-string v0, "start"

    .line 110
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcom/kochava/base/Tracker$Configuration;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kochava/base/Tracker$Configuration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/kochava/base/Tracker$Configuration;->setAppGuid(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;

    move-result-object p2

    invoke-static {p2}, Lcom/kochava/base/Tracker;->configure(Lcom/kochava/base/Tracker$Configuration;)V

    const-string p2, "end"

    .line 112
    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/eogame/utils/AppflyerUtil;->getInstance()Lcom/eogame/utils/AppflyerUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/eogame/utils/AppflyerUtil;->startTrack(Landroid/app/Activity;)V

    .line 114
    invoke-static {p1}, Lcom/eogame/facebook/FacebookHelper;->init(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLogPresenter;->sendInit()V

    return-void
.end method

.method public login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V
    .locals 1

    .line 142
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/eogame/presenter/EOSDKPresenter;->login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V

    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .locals 1

    .line 161
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->logout(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 316
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/presenter/EOSDKPresenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 317
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/facebook/FacebookHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onApplicationCreate(Landroid/app/Application;)V
    .locals 1

    .line 322
    invoke-static {}, Lcom/eogame/utils/AppflyerUtil;->getInstance()Lcom/eogame/utils/AppflyerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/eogame/utils/AppflyerUtil;->init(Landroid/app/Application;)V

    return-void
.end method

.method public onConfiggurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 0

    .line 326
    sget-object p2, Lcom/eogame/constants/EOCommon;->gameLanguage:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/eogame/utils/AndroidUtils;->setLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 306
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/presenter/EOSDKPresenter;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public openUserCenter(Landroid/content/Context;)V
    .locals 1

    .line 267
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->openUserCenter(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Landroid/content/Context;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;Lcom/eogame/listener/PayCallback;)V
    .locals 1

    .line 154
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/eogame/presenter/EOSDKPresenter;->pay(Landroid/content/Context;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;Lcom/eogame/listener/PayCallback;)V

    return-void
.end method

.method public setGameLanguage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 169
    invoke-static {p1, p2}, Lcom/eogame/utils/AndroidUtils;->setLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public shareFacebook(Landroid/app/Activity;Lcom/eogame/listener/FacebookShareApi;)V
    .locals 1

    .line 258
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eogame/facebook/FacebookHelper;->facebookShare(Landroid/app/Activity;Lcom/eogame/listener/FacebookShareApi;)V

    return-void
.end method

.method public update(Landroid/app/Activity;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/eogame/sdk/EOSDK;->mPresenter:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-virtual {v0, p1}, Lcom/eogame/presenter/EOSDKPresenter;->update(Landroid/content/Context;)V

    return-void
.end method
