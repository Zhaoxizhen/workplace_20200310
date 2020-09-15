.class Lcom/eogame/presenter/EOBindPresenter$2$1;
.super Lcom/eogame/utils/EOThread;
.source "EOBindPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOBindPresenter$2;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/presenter/EOBindPresenter$2;

.field final synthetic val$fbId:Ljava/lang/String;

.field final synthetic val$fbName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOBindPresenter$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->this$1:Lcom/eogame/presenter/EOBindPresenter$2;

    iput-object p2, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->val$fbId:Ljava/lang/String;

    iput-object p3, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->val$fbName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 86
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->this$1:Lcom/eogame/presenter/EOBindPresenter$2;

    iget-object v0, v0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOBindPresenter;->access$400(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->this$1:Lcom/eogame/presenter/EOBindPresenter$2;

    iget-object v0, v0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOBindPresenter;->access$500(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 87
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->val$fbId:Ljava/lang/String;

    iget-object v2, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->val$fbName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/eogame/web/EOWebApiImpl;->bindForFacebook(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->this$1:Lcom/eogame/presenter/EOBindPresenter$2;

    iget-object v1, v1, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOBindPresenter;->access$600(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 89
    invoke-virtual {p0}, Lcom/eogame/presenter/EOBindPresenter$2$1;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/eogame/presenter/EOBindPresenter$2$1;->this$1:Lcom/eogame/presenter/EOBindPresenter$2;

    iget-object v1, v1, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    const/16 v2, 0x2719

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EOBindPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
