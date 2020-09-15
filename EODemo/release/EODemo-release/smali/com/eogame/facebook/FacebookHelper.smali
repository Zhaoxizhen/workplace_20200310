.class public Lcom/eogame/facebook/FacebookHelper;
.super Ljava/lang/Object;
.source "FacebookHelper.java"


# static fields
.field private static instance:Lcom/eogame/facebook/FacebookHelper;


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/facebook/FacebookHelper;Lcom/facebook/AccessToken;Lcom/eogame/listener/FacebookLoginApi;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/eogame/facebook/FacebookHelper;->getFacebookUserInfo(Lcom/facebook/AccessToken;Lcom/eogame/listener/FacebookLoginApi;)V

    return-void
.end method

.method private getFacebookUserInfo(Lcom/facebook/AccessToken;Lcom/eogame/listener/FacebookLoginApi;)V
    .locals 4

    .line 190
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eo"

    const-string v2, "get login user info with facebook"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/facebook/GraphRequest;

    sget-object v1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const-string v2, "me?fields=id,name,picture"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 192
    new-instance p1, Lcom/eogame/facebook/FacebookHelper$4;

    invoke-direct {p1, p0, p2}, Lcom/eogame/facebook/FacebookHelper$4;-><init>(Lcom/eogame/facebook/FacebookHelper;Lcom/eogame/listener/FacebookLoginApi;)V

    invoke-virtual {v0, p1}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 210
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public static getInstance()Lcom/eogame/facebook/FacebookHelper;
    .locals 1

    .line 58
    sget-object v0, Lcom/eogame/facebook/FacebookHelper;->instance:Lcom/eogame/facebook/FacebookHelper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/eogame/facebook/FacebookHelper;->instance:Lcom/eogame/facebook/FacebookHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/eogame/facebook/FacebookHelper;

    invoke-direct {v0}, Lcom/eogame/facebook/FacebookHelper;-><init>()V

    sput-object v0, Lcom/eogame/facebook/FacebookHelper;->instance:Lcom/eogame/facebook/FacebookHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/eogame/facebook/FacebookHelper;->instance:Lcom/eogame/facebook/FacebookHelper;

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    iput-object v1, v0, Lcom/eogame/facebook/FacebookHelper;->callbackManager:Lcom/facebook/CallbackManager;

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    return-void
.end method


# virtual methods
.method public facebookShare(Landroid/app/Activity;Lcom/eogame/listener/FacebookShareApi;)V
    .locals 3

    .line 157
    :try_start_0
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string v1, "eo_fb_share_url"

    .line 158
    invoke-static {p1, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 159
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    .line 160
    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v1, p1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 161
    iget-object p1, p0, Lcom/eogame/facebook/FacebookHelper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/eogame/facebook/FacebookHelper$3;

    invoke-direct {v2, p0, p2}, Lcom/eogame/facebook/FacebookHelper$3;-><init>(Lcom/eogame/facebook/FacebookHelper;Lcom/eogame/listener/FacebookShareApi;)V

    invoke-virtual {v1, p1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getFacebookFriendsInfo(Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 101
    new-instance v1, Lcom/eogame/facebook/FacebookHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/eogame/facebook/FacebookHelper$2;-><init>(Lcom/eogame/facebook/FacebookHelper;Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/eogame/facebook/FacebookHelper;->loginFacebook(Landroid/app/Activity;ZLcom/eogame/listener/FacebookLoginApi;)V

    return-void
.end method

.method public loginFacebook(Landroid/app/Activity;ZLcom/eogame/listener/FacebookLoginApi;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eo"

    const-string v2, "login with facebook"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 71
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/eogame/facebook/FacebookHelper;->getFacebookUserInfo(Lcom/facebook/AccessToken;Lcom/eogame/listener/FacebookLoginApi;)V

    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 73
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v1, Lcom/eogame/facebook/FacebookHelper$1;

    invoke-direct {v1, p0, p3}, Lcom/eogame/facebook/FacebookHelper$1;-><init>(Lcom/eogame/facebook/FacebookHelper;Lcom/eogame/listener/FacebookLoginApi;)V

    invoke-virtual {p2, v0, v1}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 90
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "public_profile"

    aput-object v1, p3, v0

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method
