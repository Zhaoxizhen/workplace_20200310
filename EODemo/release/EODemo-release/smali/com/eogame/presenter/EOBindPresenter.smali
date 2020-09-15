.class public Lcom/eogame/presenter/EOBindPresenter;
.super Lcom/eogame/base/BasePresenter;
.source "EOBindPresenter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/eogame/base/BasePresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method private getActivity()Lcom/eogame/activity/EOUserCenterActivity;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    check-cast v0, Lcom/eogame/activity/EOUserCenterActivity;

    return-object v0
.end method


# virtual methods
.method public bindEOAccount(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 43
    iget-object v2, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/eogame/utils/AccountUtils;->checkUsername(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_email_error"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/eogame/utils/AccountUtils;->checkPassword(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_pwd_error"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v1, :cond_3

    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Lcom/eogame/presenter/EOBindPresenter$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/eogame/presenter/EOBindPresenter$1;-><init>(Lcom/eogame/presenter/EOBindPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/eogame/utils/EOThread;->start()V

    return-void

    .line 52
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_error_regist_pwd_no_some"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public bindFacebookAccount()V
    .locals 4

    .line 77
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eo"

    const-string v2, "bind facebook account"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_loading"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 79
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/eogame/presenter/EOBindPresenter$2;

    invoke-direct {v2, p0}, Lcom/eogame/presenter/EOBindPresenter$2;-><init>(Lcom/eogame/presenter/EOBindPresenter;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/eogame/facebook/FacebookHelper;->loginFacebook(Landroid/app/Activity;ZLcom/eogame/listener/FacebookLoginApi;)V

    return-void
.end method

.method protected dealMessage(Ljava/lang/Object;I)V
    .locals 3

    .line 114
    check-cast p1, Lcom/eogame/model/HttpResult;

    .line 115
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\t msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getObj()Lcom/eogame/model/EOBaseObject;

    move-result-object p1

    check-cast p1, Lcom/eogame/model/EOAccountEntity;

    .line 118
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0, p1}, Lcom/eogame/model/UserSession;->updateTime(Lcom/eogame/model/EOAccountEntity;)V

    const/16 p1, 0x2718

    if-ne p2, p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/eogame/presenter/EOBindPresenter;->getActivity()Lcom/eogame/activity/EOUserCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eogame/activity/EOUserCenterActivity;->bindEOSuccess()V

    .line 121
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/presenter/EOLogPresenter;->sendBind(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x2719

    if-ne p2, p1, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/eogame/presenter/EOBindPresenter;->getActivity()Lcom/eogame/activity/EOUserCenterActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eogame/activity/EOUserCenterActivity;->bindFacebookSuccess()V

    .line 124
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/presenter/EOLogPresenter;->sendBind(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p2, p0, Lcom/eogame/presenter/EOBindPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method
