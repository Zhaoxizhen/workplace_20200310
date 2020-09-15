.class public Lcom/eogame/presenter/EORegistPresenter;
.super Lcom/eogame/base/BasePresenter;
.source "EORegistPresenter.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/eogame/base/BasePresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V

    .line 33
    invoke-direct {p0}, Lcom/eogame/presenter/EORegistPresenter;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/presenter/EORegistPresenter;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/presenter/EORegistPresenter;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/presenter/EORegistPresenter;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method private initView()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected dealMessage(Ljava/lang/Object;I)V
    .locals 1

    const/16 v0, 0x2714

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    check-cast p1, Lcom/eogame/model/HttpResult;

    .line 54
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p2

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getObj()Lcom/eogame/model/EOBaseObject;

    move-result-object p1

    check-cast p1, Lcom/eogame/model/EOAccountEntity;

    .line 56
    iget-object p2, p0, Lcom/eogame/presenter/EORegistPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p2, p1}, Lcom/eogame/model/UserSession;->addAccount(Lcom/eogame/model/EOAccountEntity;)V

    .line 57
    invoke-static {}, Lcom/eogame/utils/AppflyerUtil;->getInstance()Lcom/eogame/utils/AppflyerUtil;

    move-result-object p2

    iget-object v0, p0, Lcom/eogame/presenter/EORegistPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/eogame/utils/AppflyerUtil;->register(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p2

    iget-object v0, p0, Lcom/eogame/presenter/EORegistPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLogin(Ljava/lang/String;)V

    .line 59
    iget-object p2, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/eogame/listener/EOLoginEvent;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/eogame/listener/EOLoginEvent;->onLoginError(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

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

.method public registByEmail(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 79
    iget-object v2, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/eogame/utils/AccountUtils;->checkUsername(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_email_error"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/eogame/utils/AccountUtils;->checkPassword(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 84
    iget-object p1, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_pwd_error"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 92
    :cond_2
    new-instance p1, Lcom/eogame/presenter/EORegistPresenter$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/eogame/presenter/EORegistPresenter$1;-><init>(Lcom/eogame/presenter/EORegistPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/eogame/utils/EOThread;->start()V

    return-void

    .line 88
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/eogame/presenter/EORegistPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string p3, "eo_error_regist_pwd_no_some"

    invoke-virtual {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
