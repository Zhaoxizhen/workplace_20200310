.class public Lcom/eogame/activity/EOPayActivity;
.super Lcom/eogame/base/BasePage;
.source "EOPayActivity.java"


# static fields
.field public static instance:Lcom/eogame/activity/EOPayActivity;

.field public static mPayCallback:Lcom/eogame/listener/PayCallback;


# instance fields
.field private mAccountNameTv:Landroid/widget/TextView;

.field private mCloseIv:Landroid/widget/ImageView;

.field private mGoogleLl:Landroid/widget/LinearLayout;

.field private mOtherLl:Landroid/widget/LinearLayout;

.field private mPayInfo:Lcom/eogame/model/EOPayInfo;

.field private mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

.field private mRoleInfo:Lcom/eogame/model/EORoleInfo;

.field private mRoleNameTv:Landroid/widget/TextView;

.field private mWebLl:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/eogame/base/BasePage;-><init>()V

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 6

    .line 45
    sput-object p0, Lcom/eogame/activity/EOPayActivity;->instance:Lcom/eogame/activity/EOPayActivity;

    .line 47
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eopayinit"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/eogame/activity/EOPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "payInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOPayInfo;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    .line 49
    invoke-virtual {p0}, Lcom/eogame/activity/EOPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "roleInfo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EORoleInfo;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    .line 50
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v2, p0, Lcom/eogame/activity/EOPayActivity;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0, v2}, Lcom/eogame/model/UserSession;->setRoleInfo(Lcom/eogame/model/EORoleInfo;)V

    .line 51
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mRoleNameTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eogame/activity/EOPayActivity;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v0, Lcom/eogame/presenter/EOPayPresenter;

    iget-object v2, p0, Lcom/eogame/activity/EOPayActivity;->mContext:Landroid/app/Activity;

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v3

    iget-object v4, p0, Lcom/eogame/activity/EOPayActivity;->mRoleInfo:Lcom/eogame/model/EORoleInfo;

    iget-object v5, p0, Lcom/eogame/activity/EOPayActivity;->mPayInfo:Lcom/eogame/model/EOPayInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/eogame/presenter/EOPayPresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    .line 53
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    iget-object v2, p0, Lcom/eogame/activity/EOPayActivity;->mGoogleLl:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/eogame/activity/EOPayActivity;->mOtherLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Lcom/eogame/presenter/EOPayPresenter;->doQueryPayWay(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    .line 54
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initListener()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mCloseIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mGoogleLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mOtherLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .locals 3

    const-string v0, "eo_pay_channel_layout"

    .line 66
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->getLayout(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/eogame/activity/EOPayActivity;->mContext:Landroid/app/Activity;

    const-string v2, "eo_pay_channel_root"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eogame/utils/ScreenUtils;->autoScaleView(Landroid/app/Activity;Landroid/view/View;)V

    const-string v0, "eo_pay_close_btn"

    .line 70
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mCloseIv:Landroid/widget/ImageView;

    const-string v0, "eo_pay_account_name"

    .line 71
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mAccountNameTv:Landroid/widget/TextView;

    const-string v0, "eo_pay_role_name"

    .line 72
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mRoleNameTv:Landroid/widget/TextView;

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mAccountNameTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eogame/activity/EOPayActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "eo_pay_google_ll"

    .line 79
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mGoogleLl:Landroid/widget/LinearLayout;

    const-string v0, "eo_pay_other_ll"

    .line 80
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mOtherLl:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/presenter/EOPayPresenter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    invoke-virtual {v0}, Lcom/eogame/presenter/EOPayPresenter;->onPayCancle()V

    return-void
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 1

    const-string p1, "eo_pay_close_btn"

    .line 88
    invoke-static {p0, p1}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOPayPresenter;->onPayCancle()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOPayActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_pay_google_ll"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOPayPresenter;->GooglePay()V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOPayActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_pay_other_ll"

    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/eogame/activity/EOPayActivity;->mPayPresenter:Lcom/eogame/presenter/EOPayPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOPayPresenter;->jumpToWebPay()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setViewVisible(Ljava/lang/String;I)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
