.class Lcom/eogame/presenter/EOLoginPresenter$5;
.super Lcom/eogame/utils/EOThread;
.source "EOLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLoginPresenter;->localLogin()V
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

    .line 245
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$5;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$5;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$600(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$5;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$700(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 249
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$5;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$800(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/EODeviceInfoUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/web/EOWebApiImpl;->guestLogin(Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$5;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$900(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 251
    invoke-virtual {p0}, Lcom/eogame/presenter/EOLoginPresenter$5;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$5;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    const/16 v2, 0x2713

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EOLoginPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
