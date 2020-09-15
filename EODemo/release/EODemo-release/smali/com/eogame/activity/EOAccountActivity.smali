.class public Lcom/eogame/activity/EOAccountActivity;
.super Lcom/eogame/base/BasePage;
.source "EOAccountActivity.java"


# instance fields
.field private mAutoLoadingIv:Landroid/widget/ImageView;

.field private mAutoLoginTv:Landroid/widget/TextView;

.field private mAutoSwitchBt:Landroid/widget/Button;

.field private mContainer:Lcom/eogame/utils/EOAccountViewContainer;

.field private mLoginEyesBt:Landroid/widget/CheckBox;

.field private mLoginFbBt:Landroid/widget/Button;

.field private mLoginForgetBt:Landroid/widget/Button;

.field private mLoginGuestBt:Landroid/widget/Button;

.field private mLoginLoginBt:Landroid/widget/Button;

.field private mLoginPasswordEt:Landroid/widget/EditText;

.field private mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

.field private mLoginRegisterBt:Landroid/widget/Button;

.field private mLoginUsernameEt:Landroid/widget/EditText;

.field private mRegistBackBt:Landroid/widget/ImageView;

.field private mRegistBt:Landroid/widget/Button;

.field private mRegistEmailEt:Landroid/widget/EditText;

.field private mRegistPresenter:Lcom/eogame/presenter/EORegistPresenter;

.field private mRegistPwdEt:Landroid/widget/EditText;

.field private mRegistRepwdEt:Landroid/widget/EditText;

.field private mResetEmailBt:Landroid/widget/Button;

.field private mResetEmailEt:Landroid/widget/EditText;

.field private mSendEmailBackBt:Landroid/widget/ImageView;

.field private mSwitchLoginBt:Landroid/widget/Button;

.field private mSwitchMoreIv:Landroid/widget/ImageView;

.field private mSwitchOtherLl:Landroid/widget/LinearLayout;

.field private mSwitchUsernameTv:Landroid/widget/TextView;

.field private mUerListLl:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/eogame/base/BasePage;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/activity/EOAccountActivity;)Lcom/eogame/presenter/EOLoginPresenter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistEmailEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPwdEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/eogame/activity/EOAccountActivity;)Lcom/eogame/presenter/EORegistPresenter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPresenter:Lcom/eogame/presenter/EORegistPresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailEt:Landroid/widget/EditText;

    return-object p0
.end method

.method private findViews()V
    .locals 8

    const-string v0, "eo_login_username_et"

    .line 99
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    const-string v0, "eo_login_password_et"

    .line 100
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->setPasswordType(Landroid/widget/EditText;)V

    const-string v0, "eo_pwd_eyes_btn"

    .line 102
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginEyesBt:Landroid/widget/CheckBox;

    const-string v0, "eo_login_forget_btn"

    .line 103
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginForgetBt:Landroid/widget/Button;

    const-string v0, "eo_login_btn"

    .line 104
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginLoginBt:Landroid/widget/Button;

    const-string v0, "eo_login_guest_btn"

    .line 105
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginGuestBt:Landroid/widget/Button;

    const-string v0, "eo_login_register_btn"

    .line 106
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginRegisterBt:Landroid/widget/Button;

    const-string v0, "eo_login_fb_btn"

    .line 107
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginFbBt:Landroid/widget/Button;

    const-string v0, "eo_switch_login_record_list_ll"

    .line 109
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mUerListLl:Landroid/widget/LinearLayout;

    const-string v0, "eo_swith_login_btn"

    .line 110
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchLoginBt:Landroid/widget/Button;

    const-string v0, "eo_switch_other_ll"

    .line 111
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchOtherLl:Landroid/widget/LinearLayout;

    const-string v0, "eo_swith_login_username_et"

    .line 112
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchUsernameTv:Landroid/widget/TextView;

    const-string v0, "eo_switch_login_record_list_bt"

    .line 113
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchMoreIv:Landroid/widget/ImageView;

    const-string v0, "eo_auto_text"

    .line 115
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoLoginTv:Landroid/widget/TextView;

    const-string v0, "eo_auto_login_switch_btn"

    .line 116
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoSwitchBt:Landroid/widget/Button;

    const-string v0, "eo_auto_login_loading_iv"

    .line 117
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoLoadingIv:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoLoadingIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x5dc

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 121
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v1, 0x3e8

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 124
    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoLoadingIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const-string v0, "eo_register_email_et"

    .line 127
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistEmailEt:Landroid/widget/EditText;

    const-string v0, "eo_register_pwd_et"

    .line 128
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPwdEt:Landroid/widget/EditText;

    .line 129
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPwdEt:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->setPasswordType(Landroid/widget/EditText;)V

    const-string v0, "eo_register_re_pwd_et"

    .line 130
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->setPasswordType(Landroid/widget/EditText;)V

    const-string v0, "eo_sign_up_btn"

    .line 132
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistBt:Landroid/widget/Button;

    const-string v0, "eo_sign_up_back_btn"

    .line 133
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistBackBt:Landroid/widget/ImageView;

    const-string v0, "eo_send_email_bt"

    .line 135
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailBt:Landroid/widget/Button;

    const-string v0, "eo_send_email_et"

    .line 136
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailEt:Landroid/widget/EditText;

    const-string v0, "eo_send_email_back_btn"

    .line 137
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSendEmailBackBt:Landroid/widget/ImageView;

    return-void
.end method

.method private setPasswordType(Landroid/widget/EditText;)V
    .locals 1

    .line 405
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 406
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method


# virtual methods
.method public autoLogin()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {v0}, Lcom/eogame/presenter/EOLoginPresenter;->loginUseRecord()V

    return-void
.end method

.method public autoLoginEndTime()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoSwitchBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {v0}, Lcom/eogame/presenter/EOLoginPresenter;->loginUseRecord()V

    return-void
.end method

.method protected clear()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getEditTextContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 334
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public getTextViewContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 348
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method protected initData()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/UserSession;->buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOAccountEntity;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoLoginTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchUsernameTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    new-instance v0, Lcom/eogame/presenter/EOLoginPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    iget-object v4, p0, Lcom/eogame/activity/EOAccountActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-direct {v0, v1, v3, v4}, Lcom/eogame/presenter/EOLoginPresenter;-><init>(Landroid/app/Activity;Lcom/eogame/utils/EOAccountViewContainer;Lcom/eogame/model/UserSession;)V

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    .line 152
    new-instance v0, Lcom/eogame/presenter/EORegistPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/eogame/activity/EOAccountActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-direct {v0, v1, v3}, Lcom/eogame/presenter/EORegistPresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPresenter:Lcom/eogame/presenter/EORegistPresenter;

    .line 154
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginLoginBt:Landroid/widget/Button;

    iget-object v3, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3, v4}, Lcom/eogame/presenter/EOLoginPresenter;->bindBtn2EtContent(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 155
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailBt:Landroid/widget/Button;

    iget-object v3, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailEt:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/eogame/presenter/EOLoginPresenter;->bindBtn2EtContent(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 157
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPresenter:Lcom/eogame/presenter/EORegistPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistBt:Landroid/widget/Button;

    iget-object v3, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistEmailEt:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPwdEt:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/eogame/presenter/EORegistPresenter;->bindBtn2EtContent(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    .line 158
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/eogame/presenter/EOLoginPresenter;->removeSpaceOnNoFocus(Landroid/widget/EditText;)V

    .line 159
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/eogame/presenter/EOLoginPresenter;->trimOnNoFocus(Landroid/widget/EditText;)V

    .line 161
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0, p0}, Lcom/eogame/utils/EOAccountViewContainer;->autoShow(Landroid/app/Activity;)V

    .line 162
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistBt:Landroid/widget/Button;

    const-string v1, "eo_sign_up"

    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 164
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginForgetBt:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 165
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 166
    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginForgetBt:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginForgetBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginLoginBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginGuestBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginFbBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginRegisterBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    new-instance v1, Lcom/eogame/activity/EOAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOAccountActivity$1;-><init>(Lcom/eogame/activity/EOAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 192
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginEyesBt:Landroid/widget/CheckBox;

    new-instance v1, Lcom/eogame/activity/EOAccountActivity$2;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOAccountActivity$2;-><init>(Lcom/eogame/activity/EOAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mUerListLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchLoginBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchOtherLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mAutoSwitchBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistEmailEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPwdEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    new-instance v1, Lcom/eogame/activity/EOAccountActivity$3;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOAccountActivity$3;-><init>(Lcom/eogame/activity/EOAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 228
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailEt:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSendEmailBackBt:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailEt:Landroid/widget/EditText;

    new-instance v1, Lcom/eogame/activity/EOAccountActivity$4;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOAccountActivity$4;-><init>(Lcom/eogame/activity/EOAccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 86
    new-instance v0, Lcom/eogame/utils/EOAccountViewContainer;

    invoke-direct {v0, p0}, Lcom/eogame/utils/EOAccountViewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    .line 88
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0, p0}, Lcom/eogame/utils/EOAccountViewContainer;->initContainer(Ljava/lang/Object;)Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0, p0}, Lcom/eogame/utils/EOAccountViewContainer;->scaleViews(Landroid/app/Activity;)V

    .line 92
    invoke-direct {p0}, Lcom/eogame/activity/EOAccountActivity;->findViews()V

    .line 94
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/utils/PreferenceUtils;->instance(Landroid/content/Context;)Lcom/eogame/utils/PreferenceUtils;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 376
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/facebook/FacebookHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/eogame/base/BasePage;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0}, Lcom/eogame/utils/EOAccountViewContainer;->getCurrentView()Ljava/lang/String;

    move-result-object v0

    const-string v1, "login_frist"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "login_auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->backPressedInvalid:Z

    if-nez v0, :cond_1

    .line 385
    invoke-static {}, Lcom/eogame/listener/EOLoginEvent;->onLoginCancle()V

    .line 386
    invoke-super {p0}, Lcom/eogame/base/BasePage;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 2

    .line 252
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_login_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object p2, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginUsernameEt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPasswordEt:Landroid/widget/EditText;

    invoke-virtual {p1, p2, v0}, Lcom/eogame/presenter/EOLoginPresenter;->login(Landroid/widget/EditText;Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_login_forget_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLoginPresenter;->showResetEmail()V

    goto/16 :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_login_guest_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLoginPresenter;->guestLogin()V

    goto/16 :goto_0

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_login_register_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 263
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLoginPresenter;->registFromEmail()V

    goto/16 :goto_0

    .line 264
    :cond_3
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_switch_login_record_list_ll"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 266
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object p2, p0, Lcom/eogame/activity/EOAccountActivity;->mUerListLl:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchUsernameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mSwitchMoreIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2, v0, v1}, Lcom/eogame/presenter/EOLoginPresenter;->showUserList(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 267
    :cond_4
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_swith_login_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 269
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLoginPresenter;->loginUseRecord()V

    goto/16 :goto_0

    .line 270
    :cond_5
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_login_fb_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_6

    .line 272
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLoginPresenter;->loginWithFacebook()V

    goto :goto_0

    .line 273
    :cond_6
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_auto_login_switch_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_7

    .line 274
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOLoginPresenter;->loginSwitch()V

    goto :goto_0

    .line 275
    :cond_7
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_send_email_back_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_8

    .line 277
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->backToPre()V

    goto :goto_0

    .line 278
    :cond_8
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_sign_up_back_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_9

    .line 280
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->backToPre()V

    goto :goto_0

    .line 281
    :cond_9
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_switch_other_ll"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_a

    .line 283
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->showFirstLogin()V

    goto :goto_0

    .line 284
    :cond_a
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_sign_up_btn"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_b

    .line 285
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPresenter:Lcom/eogame/presenter/EORegistPresenter;

    iget-object p2, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistEmailEt:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPwdEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistRepwdEt:Landroid/widget/EditText;

    invoke-virtual {p1, p2, v0, v1}, Lcom/eogame/presenter/EORegistPresenter;->registByEmail(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    goto :goto_0

    .line 286
    :cond_b
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_send_email_bt"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_c

    .line 287
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity;->mLoginPresenter:Lcom/eogame/presenter/EOLoginPresenter;

    iget-object p2, p0, Lcom/eogame/activity/EOAccountActivity;->mResetEmailEt:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Lcom/eogame/presenter/EOLoginPresenter;->sendResetPwdEmail(Landroid/widget/EditText;)V

    :cond_c
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mRegistPresenter:Lcom/eogame/presenter/EORegistPresenter;

    invoke-virtual {v0}, Lcom/eogame/presenter/EORegistPresenter;->onDestory()V

    .line 370
    iget-object v0, p0, Lcom/eogame/activity/EOAccountActivity;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-virtual {v0}, Lcom/eogame/utils/EOAccountViewContainer;->cancelTimer()V

    .line 371
    invoke-super {p0}, Lcom/eogame/base/BasePage;->onDestroy()V

    return-void
.end method

.method public setEditTextContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTextViewContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setViewFocus(Ljava/lang/String;)V
    .locals 0

    .line 361
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setViewVisible(Ljava/lang/String;I)V
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOAccountActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
