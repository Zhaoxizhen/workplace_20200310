.class Lcom/eogame/presenter/EOPayPresenter$3;
.super Lcom/eogame/utils/EOThread;
.source "EOPayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOPayPresenter;->doQueryPayWay(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOPayPresenter;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOPayPresenter;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 257
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOPayPresenter;->access$900(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOPayPresenter;->access$1000(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 259
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOPayPresenter;->access$1100(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/UserSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v3}, Lcom/eogame/presenter/EOPayPresenter;->access$300(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/EORoleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eogame/web/EOWebApiImpl;->getPayChannels(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOPayPresenter;->access$1200(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 261
    invoke-virtual {p0}, Lcom/eogame/presenter/EOPayPresenter$3;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$3;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    const/16 v2, 0x2776

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EOPayPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
