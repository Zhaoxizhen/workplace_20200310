.class Lcom/eogame/presenter/EOLoginPresenter$8;
.super Ljava/lang/Object;
.source "EOLoginPresenter.java"

# interfaces
.implements Lcom/eogame/listener/FacebookLoginApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLoginPresenter;->loginWithFacebook()V
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

    .line 329
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$8;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginCancel()V
    .locals 3

    .line 357
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eo"

    const-string v2, "fb login cancel"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$8;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$2500(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    return-void
.end method

.method public loginFail(Ljava/lang/String;)V
    .locals 3

    .line 350
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb login fail, msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$8;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$2300(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 352
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$8;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$2400(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 332
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getfacebook info success, fbId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t fbName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eo"

    invoke-virtual {p3, v1, v0}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object p3, p0, Lcom/eogame/presenter/EOLoginPresenter$8;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {p3}, Lcom/eogame/presenter/EOLoginPresenter;->access$1900(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 334
    new-instance p3, Lcom/eogame/presenter/EOLoginPresenter$8$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/eogame/presenter/EOLoginPresenter$8$1;-><init>(Lcom/eogame/presenter/EOLoginPresenter$8;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p3}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method
