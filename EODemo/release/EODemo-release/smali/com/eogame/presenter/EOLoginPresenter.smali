.class public Lcom/eogame/presenter/EOLoginPresenter;
.super Lcom/eogame/base/BasePresenter;
.source "EOLoginPresenter.java"


# instance fields
.field private EO_LOGIN_LIST_DOWN:Ljava/lang/String;

.field private EO_LOGIN_LIST_UP:Ljava/lang/String;

.field private EO_LOGIN_PASSWORD_ET:Ljava/lang/String;

.field private EO_LOGIN_USERNAME_ET:Ljava/lang/String;

.field private currentUserName:Ljava/lang/String;

.field private mContainer:Lcom/eogame/utils/EOAccountViewContainer;

.field private mLoginRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOAccountEntity;",
            ">;"
        }
    .end annotation
.end field

.field private popSelectAccount:Landroid/widget/PopupWindow;

.field private userAdpter:Lcom/eogame/model/Useradpter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/eogame/utils/EOAccountViewContainer;Lcom/eogame/model/UserSession;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p3}, Lcom/eogame/base/BasePresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V

    const-string p1, "eo_login_username_et"

    .line 55
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_USERNAME_ET:Ljava/lang/String;

    const-string p1, "eo_login_password_et"

    .line 57
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_PASSWORD_ET:Ljava/lang/String;

    const-string p1, "eo_login_list_up"

    .line 59
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_LIST_UP:Ljava/lang/String;

    const-string p1, "eo_login_list_down"

    .line 61
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_LIST_DOWN:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_LIST_DOWN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/eogame/presenter/EOLoginPresenter;)Lcom/eogame/model/Useradpter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->userAdpter:Lcom/eogame/model/Useradpter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/util/ArrayList;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mLoginRecordList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/eogame/presenter/EOLoginPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->currentUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/presenter/EOLoginPresenter;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/eogame/presenter/EOLoginPresenter;->checkWifiManagerBeforeLogin()V

    return-void
.end method

.method static synthetic access$400(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eogame/presenter/EOLoginPresenter;Landroid/app/Activity;)Lcom/eogame/activity/EOAccountActivity;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOLoginPresenter;->getActivity(Landroid/app/Activity;)Lcom/eogame/activity/EOAccountActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method private checkWifiManagerBeforeLogin()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/utils/EODeviceInfoUtil;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 217
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v3, "eo_layout_tip_open_wifi"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v3, "eo_layout_tip_sys_title"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 219
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v3, "eo_layout_tip_goto_setting"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/eogame/presenter/EOLoginPresenter$3;

    invoke-direct {v2, p0}, Lcom/eogame/presenter/EOLoginPresenter$3;-><init>(Lcom/eogame/presenter/EOLoginPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v3, "eo_layout_tip_cancel"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/eogame/presenter/EOLoginPresenter$4;

    invoke-direct {v2, p0}, Lcom/eogame/presenter/EOLoginPresenter$4;-><init>(Lcom/eogame/presenter/EOLoginPresenter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 234
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/eogame/presenter/EOLoginPresenter;->localLogin()V

    :goto_0
    return-void
.end method

.method private dealLoginResult(ILjava/lang/Object;)V
    .locals 3

    .line 104
    check-cast p2, Lcom/eogame/model/HttpResult;

    .line 105
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eologintype"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v0

    const/16 v1, 0x2712

    const/16 v2, 0x2710

    if-ne v0, v2, :cond_4

    .line 107
    invoke-virtual {p2}, Lcom/eogame/model/HttpResult;->getObj()Lcom/eogame/model/EOBaseObject;

    move-result-object p2

    check-cast p2, Lcom/eogame/model/EOAccountEntity;

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    .line 109
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v0, p2, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    iput-object v0, p1, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eogame/model/UserSession;->addAccount(Lcom/eogame/model/EOAccountEntity;)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    .line 113
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eogame/model/UserSession;->updateTime(Lcom/eogame/model/EOAccountEntity;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_2

    .line 115
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p1, p2}, Lcom/eogame/model/UserSession;->addAccount(Lcom/eogame/model/EOAccountEntity;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x2717

    if-ne p1, v0, :cond_3

    .line 117
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {p1, p2}, Lcom/eogame/model/UserSession;->addAccount(Lcom/eogame/model/EOAccountEntity;)V

    .line 119
    :cond_3
    :goto_0
    iget-object p1, p2, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    iget-object v0, p2, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    iget-object p2, p2, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/eogame/listener/EOLoginEvent;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_4
    if-ne p1, v1, :cond_6

    .line 124
    invoke-virtual {p2}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p1

    const v0, 0x15fb6

    if-ne p1, v0, :cond_5

    .line 125
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->showFirstLogin()V

    .line 126
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOLoginPresenter;->getActivity(Landroid/app/Activity;)Lcom/eogame/activity/EOAccountActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_USERNAME_ET:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/eogame/activity/EOAccountActivity;->setViewFocus(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->currentUserName:Ljava/lang/String;

    invoke-static {p1}, Lcom/eogame/utils/AccountUtils;->checkUsername(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 130
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/eogame/presenter/EOLoginPresenter;->getActivity(Landroid/app/Activity;)Lcom/eogame/activity/EOAccountActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_USERNAME_ET:Ljava/lang/String;

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->currentUserName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/eogame/activity/EOAccountActivity;->setEditTextContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_5
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->showSwitchLogin()V

    .line 136
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/listener/EOLoginEvent;->onLoginError(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private getActivity(Landroid/app/Activity;)Lcom/eogame/activity/EOAccountActivity;
    .locals 0

    .line 407
    check-cast p1, Lcom/eogame/activity/EOAccountActivity;

    return-object p1
.end method

.method private localLogin()V
    .locals 1

    .line 245
    new-instance v0, Lcom/eogame/presenter/EOLoginPresenter$5;

    invoke-direct {v0, p0}, Lcom/eogame/presenter/EOLoginPresenter$5;-><init>(Lcom/eogame/presenter/EOLoginPresenter;)V

    .line 257
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method


# virtual methods
.method protected dealMessage(Ljava/lang/Object;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 84
    :pswitch_1
    check-cast p1, Lcom/eogame/model/HttpResult;

    .line 85
    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result p2

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object p2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v0, "eo_reset_email_success"

    invoke-static {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->backToPre()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-direct {p0, p2, p1}, Lcom/eogame/presenter/EOLoginPresenter;->dealLoginResult(ILjava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public doLoginCallback()V
    .locals 3

    .line 146
    invoke-static {}, Lcom/eogame/utils/PreferenceUtils;->instance()Lcom/eogame/utils/PreferenceUtils;

    .line 147
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v0, v0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v2}, Lcom/eogame/model/UserSession;->getCurrentToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/eogame/listener/EOLoginEvent;->onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public guestLogin()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mLoginRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eogame/model/EOAccountEntity;

    .line 189
    iget-object v1, v1, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    sget-object v2, Lcom/eogame/model/EOAccountEntity;->GUEST_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 195
    new-instance v0, Lcom/eogame/widgets/EOTipsDialog;

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v1, Lcom/eogame/presenter/EOLoginPresenter$2;

    invoke-direct {v1, p0}, Lcom/eogame/presenter/EOLoginPresenter$2;-><init>(Lcom/eogame/presenter/EOLoginPresenter;)V

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setEOTipsListener(Lcom/eogame/widgets/EOTipsListener;)V

    .line 207
    invoke-virtual {v0}, Lcom/eogame/widgets/EOTipsDialog;->show()V

    goto :goto_1

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/eogame/presenter/EOLoginPresenter;->checkWifiManagerBeforeLogin()V

    :goto_1
    return-void
.end method

.method protected initData()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/UserSession;->buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mLoginRecordList:Ljava/util/ArrayList;

    return-void
.end method

.method public login(Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 3

    .line 156
    invoke-virtual {p0, p1}, Lcom/eogame/presenter/EOLoginPresenter;->removeSpace(Landroid/widget/EditText;)V

    .line 157
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/eogame/utils/AccountUtils;->checkUsername(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string v0, "eo_email_error"

    invoke-virtual {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/eogame/utils/AccountUtils;->checkPassword(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object p2

    const-string v0, "eo_pwd_error"

    invoke-virtual {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_1
    new-instance p1, Lcom/eogame/presenter/EOLoginPresenter$1;

    invoke-direct {p1, p0, v0, v1}, Lcom/eogame/presenter/EOLoginPresenter$1;-><init>(Lcom/eogame/presenter/EOLoginPresenter;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method

.method public loginSwitch()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0}, Lcom/eogame/utils/EOAccountViewContainer;->showSwitchLogin()V

    return-void
.end method

.method public loginUseRecord()V
    .locals 1

    .line 300
    new-instance v0, Lcom/eogame/presenter/EOLoginPresenter$7;

    invoke-direct {v0, p0}, Lcom/eogame/presenter/EOLoginPresenter$7;-><init>(Lcom/eogame/presenter/EOLoginPresenter;)V

    .line 321
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method

.method public loginWithFacebook()V
    .locals 4

    .line 328
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v2, "eo_loading"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 329
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v2}, Lcom/eogame/utils/EOAccountViewContainer;->isSwitch()Z

    move-result v2

    new-instance v3, Lcom/eogame/presenter/EOLoginPresenter$8;

    invoke-direct {v3, p0}, Lcom/eogame/presenter/EOLoginPresenter$8;-><init>(Lcom/eogame/presenter/EOLoginPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/eogame/facebook/FacebookHelper;->loginFacebook(Landroid/app/Activity;ZLcom/eogame/listener/FacebookLoginApi;)V

    return-void
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method

.method public registFromEmail()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0}, Lcom/eogame/utils/EOAccountViewContainer;->showRegistEmail()V

    return-void
.end method

.method public sendResetPwdEmail(Landroid/widget/EditText;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/eogame/utils/AccountUtils;->checkUsername(Landroid/app/Activity;Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/utils/ResourceUtil;->getInstance()Lcom/eogame/utils/ResourceUtil;

    move-result-object v0

    const-string v1, "eo_email_error"

    invoke-virtual {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/eogame/presenter/EOLoginPresenter$9;

    invoke-direct {v0, p0, p1}, Lcom/eogame/presenter/EOLoginPresenter$9;-><init>(Lcom/eogame/presenter/EOLoginPresenter;Landroid/widget/EditText;)V

    .line 384
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method

.method public showResetEmail()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0}, Lcom/eogame/utils/EOAccountViewContainer;->showSendEmail()V

    return-void
.end method

.method public showUserList(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mLoginRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/eogame/presenter/EOLoginPresenter;->EO_LOGIN_LIST_UP:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eogame/model/UserSession;->buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;

    .line 279
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/utils/Util;->getListViewForUserAccount(Landroid/content/Context;)Landroid/widget/ListView;

    move-result-object v0

    .line 280
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v0, v3, v4, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->popSelectAccount:Landroid/widget/PopupWindow;

    .line 281
    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->popSelectAccount:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    const-string v5, "eo_login_userlist_shape"

    invoke-static {v4, v5}, Lcom/eogame/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter;->popSelectAccount:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 283
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->popSelectAccount:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 284
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->popSelectAccount:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/eogame/presenter/EOLoginPresenter$6;

    invoke-direct {v1, p0, p3}, Lcom/eogame/presenter/EOLoginPresenter$6;-><init>(Lcom/eogame/presenter/EOLoginPresenter;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 290
    new-instance p1, Lcom/eogame/model/Useradpter;

    iget-object v3, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/eogame/presenter/EOLoginPresenter;->mLoginRecordList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/eogame/presenter/EOLoginPresenter;->popSelectAccount:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/eogame/presenter/EOLoginPresenter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/eogame/model/Useradpter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/PopupWindow;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/eogame/utils/EOAccountViewContainer;)V

    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->userAdpter:Lcom/eogame/model/Useradpter;

    .line 291
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter;->userAdpter:Lcom/eogame/model/Useradpter;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
