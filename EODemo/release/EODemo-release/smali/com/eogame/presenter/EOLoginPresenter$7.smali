.class Lcom/eogame/presenter/EOLoginPresenter$7;
.super Lcom/eogame/utils/EOThread;
.source "EOLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLoginPresenter;->loginUseRecord()V
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

    .line 300
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 304
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$1300(Lcom/eogame/presenter/EOLoginPresenter;)Lcom/eogame/model/Useradpter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$1400(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOAccountEntity;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v2}, Lcom/eogame/presenter/EOLoginPresenter;->access$1400(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eogame/model/EOAccountEntity;

    iget-object v1, v1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$1502(Lcom/eogame/presenter/EOLoginPresenter;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$1400(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/eogame/model/Useradpter;->getCurrentUserIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOAccountEntity;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$1400(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/eogame/model/Useradpter;->getCurrentUserIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eogame/model/EOAccountEntity;

    iget-object v2, v2, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/eogame/presenter/EOLoginPresenter;->access$1502(Lcom/eogame/presenter/EOLoginPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$1600(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$1700(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v1

    const-string v3, "eo_loading"

    invoke-static {v1, v3}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v3, ""

    move-object v7, p0

    invoke-static/range {v2 .. v7}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 312
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eogame/model/UserSession;->queryAccount(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v0

    .line 313
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v1

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/eogame/web/EOWebApiImpl;->loginToken(Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$1800(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 315
    invoke-virtual {p0}, Lcom/eogame/presenter/EOLoginPresenter$7;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$7;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EOLoginPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
