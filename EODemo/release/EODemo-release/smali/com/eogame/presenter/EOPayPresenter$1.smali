.class Lcom/eogame/presenter/EOPayPresenter$1;
.super Lcom/eogame/utils/EOThread;
.source "EOPayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOPayPresenter;->getOrderForGoogle()V
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

    .line 197
    iput-object p1, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 200
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOPayPresenter;->access$000(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/UserSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOPayPresenter;->access$100(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOPayPresenter;->access$200(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v1

    const-string v3, "eo_loading"

    invoke-static {v1, v3}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 203
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v2}, Lcom/eogame/presenter/EOPayPresenter;->access$300(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/EORoleInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v3}, Lcom/eogame/presenter/EOPayPresenter;->access$400(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/EOPayInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/eogame/web/EOWebApiImpl;->createPayOrder(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOPayPresenter;->access$500(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 205
    invoke-virtual {p0}, Lcom/eogame/presenter/EOPayPresenter$1;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create order result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eo"

    invoke-virtual {v1, v3, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$1;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    const/16 v2, 0x2778

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EOPayPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
