.class Lcom/eogame/presenter/EOLoginPresenter$3;
.super Ljava/lang/Object;
.source "EOLoginPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLoginPresenter;->checkWifiManagerBeforeLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOLoginPresenter;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOLoginPresenter;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$3;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$3;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {p1}, Lcom/eogame/presenter/EOLoginPresenter;->access$400(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/presenter/EOLoginPresenter;->access$500(Lcom/eogame/presenter/EOLoginPresenter;Landroid/app/Activity;)Lcom/eogame/activity/EOAccountActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/eogame/activity/EOAccountActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
