.class public abstract Lcom/eogame/base/BasePage;
.super Landroid/app/Activity;
.source "BasePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public TAG:Ljava/lang/String;

.field public mContext:Landroid/app/Activity;

.field public mUserSession:Lcom/eogame/model/UserSession;

.field private tempTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "EOSDK"

    .line 32
    iput-object v0, p0, Lcom/eogame/base/BasePage;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method public getLayout(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/eogame/base/BasePage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/eogame/base/BasePage;->mContext:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getView(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/eogame/base/BasePage;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/eogame/base/BasePage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract initData()V
.end method

.method protected abstract initListener()V
.end method

.method protected abstract initView()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/eogame/base/BasePage;->onClick(Landroid/view/View;I)V

    return-void
.end method

.method protected abstract onClick(Landroid/view/View;I)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iput-object p0, p0, Lcom/eogame/base/BasePage;->mContext:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/eogame/base/BasePage;->requestWindowFeature(I)Z

    const/4 p1, 0x6

    .line 46
    invoke-virtual {p0, p1}, Lcom/eogame/base/BasePage;->setRequestedOrientation(I)V

    .line 50
    invoke-virtual {p0}, Lcom/eogame/base/BasePage;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/base/BasePage;->mUserSession:Lcom/eogame/model/UserSession;

    .line 52
    iget-object p1, p0, Lcom/eogame/base/BasePage;->mUserSession:Lcom/eogame/model/UserSession;

    iget-object v0, p0, Lcom/eogame/base/BasePage;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/eogame/model/UserSession;->buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;

    .line 53
    iget-object p1, p0, Lcom/eogame/base/BasePage;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/eogame/utils/Util;->setFinishOnTouchOutside(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p0}, Lcom/eogame/base/BasePage;->initView()V

    .line 55
    invoke-virtual {p0}, Lcom/eogame/base/BasePage;->initListener()V

    .line 56
    invoke-virtual {p0}, Lcom/eogame/base/BasePage;->initData()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
