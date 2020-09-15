.class public Lcom/eogame/utils/EOAccountViewContainer;
.super Ljava/lang/Object;
.source "EOAccountViewContainer.java"


# static fields
.field public static final KEY_FRIST_LOGIN:Ljava/lang/String; = "login_frist"

.field public static final KEY_LOGIN_AUTO:Ljava/lang/String; = "login_auto"

.field public static final KEY_LOGIN_SWITCH:Ljava/lang/String; = "login_switch"

.field public static final KEY_REGISTER_EMAIL:Ljava/lang/String; = "register_email"

.field public static final KEY_SEND_EMAIL:Ljava/lang/String; = "send_email"


# instance fields
.field private isSwitch:Z

.field private lineList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentView:Ljava/lang/String;

.field private mEtList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/ViewGroup;

.field private mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tempTimestamp:J

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mEtList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->isSwitch:Z

    const-string v0, "login_frist"

    .line 40
    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->lineList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    .line 48
    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mRootView:Landroid/view/ViewGroup;

    const-string v0, "eo_switch_login_layout"

    .line 50
    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->setSwitchLogin(I)Lcom/eogame/utils/EOAccountViewContainer;

    move-result-object v0

    const-string v1, "eo_sign_up_layout"

    .line 51
    invoke-static {p1, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->setRegistEmail(I)Lcom/eogame/utils/EOAccountViewContainer;

    move-result-object v0

    const-string v1, "eo_auto_login_layout"

    .line 52
    invoke-static {p1, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->setAutoLogin(I)Lcom/eogame/utils/EOAccountViewContainer;

    move-result-object v0

    const-string v1, "eo_send_email_layout"

    .line 53
    invoke-static {p1, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->setSendEmail(I)Lcom/eogame/utils/EOAccountViewContainer;

    move-result-object v0

    const-string v1, "eo_frist_login_layout"

    .line 54
    invoke-static {p1, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/eogame/utils/EOAccountViewContainer;->setFristLogin(I)Lcom/eogame/utils/EOAccountViewContainer;

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/utils/EOAccountViewContainer;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/utils/EOAccountViewContainer;Landroid/content/Context;)Lcom/eogame/activity/EOAccountActivity;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/eogame/utils/EOAccountViewContainer;->getActivity(Landroid/content/Context;)Lcom/eogame/activity/EOAccountActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Lcom/eogame/utils/EOAccountViewContainer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method private back(Ljava/lang/String;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 75
    iget-object v1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-static {v0}, Lcom/eogame/utils/EOAccountViewContainer;->hideKeyboard(Landroid/view/View;)V

    .line 84
    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private getActivity(Landroid/content/Context;)Lcom/eogame/activity/EOAccountActivity;
    .locals 0

    .line 307
    check-cast p1, Lcom/eogame/activity/EOAccountActivity;

    return-object p1
.end method

.method private getDuration()J
    .locals 6

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/eogame/utils/EOAccountViewContainer;->tempTimestamp:J

    sub-long/2addr v0, v4

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v2

    iput-wide v4, p0, Lcom/eogame/utils/EOAccountViewContainer;->tempTimestamp:J

    return-wide v0
.end method

.method private getRootViews()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "login_frist"

    .line 191
    invoke-virtual {p0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const-string v3, "eo_frist_login_root"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "login_auto"

    .line 192
    invoke-virtual {p0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const-string v3, "eo_auto_login_root"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "login_switch"

    .line 193
    invoke-virtual {p0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const-string v3, "eo_switch_login_root"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "register_email"

    .line 194
    invoke-virtual {p0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const-string v3, "eo_sign_up_root"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "send_email"

    .line 195
    invoke-virtual {p0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const-string v3, "eo_send_email_root"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 197
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/eogame/utils/EOAccountViewContainer;->getEditText(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 219
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private setAutoLogin(I)Lcom/eogame/utils/EOAccountViewContainer;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    const-string v1, "login_auto"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private setFristLogin(I)Lcom/eogame/utils/EOAccountViewContainer;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    const-string v1, "login_frist"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private setRegistEmail(I)Lcom/eogame/utils/EOAccountViewContainer;
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    const-string v1, "register_email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private setSendEmail(I)Lcom/eogame/utils/EOAccountViewContainer;
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    const-string v1, "send_email"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private show(Ljava/lang/String;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    iget-object v1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-static {v0}, Lcom/eogame/utils/EOAccountViewContainer;->hideKeyboard(Landroid/view/View;)V

    .line 69
    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public autoShow(Landroid/app/Activity;)V
    .locals 7

    .line 228
    invoke-static {}, Lcom/eogame/utils/PreferenceUtils;->instance()Lcom/eogame/utils/PreferenceUtils;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/eogame/utils/PreferenceUtils;->getIsSwitchLogin()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->isSwitch:Z

    .line 230
    iget-boolean v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->isSwitch:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/eogame/utils/EOAccountViewContainer;->showSwitchLogin()V

    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eogame/model/UserSession;->buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/eogame/utils/EOAccountViewContainer;->showAutoLogin()V

    .line 239
    new-instance p1, Lcom/eogame/utils/EOAccountViewContainer$1;

    const-wide/16 v3, 0x9c4

    const-wide/16 v5, 0x1f4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/eogame/utils/EOAccountViewContainer$1;-><init>(Lcom/eogame/utils/EOAccountViewContainer;JJ)V

    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    .line 250
    iget-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    .line 236
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/eogame/utils/EOAccountViewContainer;->showFirstLogin()V

    :goto_1
    return-void
.end method

.method public backToPre()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->lineList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mEtList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, ""

    .line 262
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->back(Ljava/lang/String;)V

    return-void
.end method

.method public cancelTimer()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public clearAllEt()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mEtList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, ""

    .line 273
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentView()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    return-object v0
.end method

.method public getEditText(Landroid/view/ViewGroup;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 287
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 288
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 289
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lcom/eogame/utils/EOAccountViewContainer;->getEditText(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 290
    :cond_1
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/eogame/utils/EOAccountViewContainer;->mEtList:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getView(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getViews()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public initContainer(Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 151
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/eogame/utils/EOAccountViewContainer;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    const-string v1, "send_email"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->lineList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 158
    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 160
    :cond_1
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "EOSDK"

    const-string v1, "Container is not add to activity"

    invoke-virtual {p1, v0, v1}, Lcom/eogame/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->tempTimestamp:J

    .line 164
    iget-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public isSwitch()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->isSwitch:Z

    return v0
.end method

.method public scaleViews(Landroid/app/Activity;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/eogame/utils/EOAccountViewContainer;->getRootViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 208
    invoke-static {p1, v1}, Lcom/eogame/utils/ScreenUtils;->autoScaleView(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCurrentView(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer;->mCurrentView:Ljava/lang/String;

    return-void
.end method

.method public setSwitchLogin(I)Lcom/eogame/utils/EOAccountViewContainer;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->mViewMap:Ljava/util/HashMap;

    const-string v1, "login_switch"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public showAutoLogin()V
    .locals 1

    const-string v0, "login_auto"

    .line 92
    invoke-direct {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showFirstLogin()V
    .locals 1

    const-string v0, "login_frist"

    .line 88
    invoke-direct {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showRegistEmail()V
    .locals 1

    const-string v0, "register_email"

    .line 105
    invoke-direct {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showSendEmail()V
    .locals 1

    const-string v0, "send_email"

    .line 110
    invoke-direct {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->show(Ljava/lang/String;)V

    return-void
.end method

.method public showSwitchLogin()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer;->timer:Landroid/os/CountDownTimer;

    :cond_0
    const-string v0, "login_switch"

    .line 100
    invoke-direct {p0, v0}, Lcom/eogame/utils/EOAccountViewContainer;->show(Ljava/lang/String;)V

    return-void
.end method
