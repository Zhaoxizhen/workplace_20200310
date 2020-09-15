.class Lcom/eogame/presenter/EOPayPresenter$2;
.super Lcom/eogame/utils/EOThread;
.source "EOPayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOPayPresenter;->verifyGooglePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOPayPresenter;

.field final synthetic val$orderId:Ljava/lang/String;

.field final synthetic val$repeatData:Ljava/lang/String;

.field final synthetic val$signData:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOPayPresenter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/eogame/presenter/EOPayPresenter$2;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    iput-object p2, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$repeatData:Ljava/lang/String;

    iput-object p5, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$signData:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 224
    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter$2;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOPayPresenter;->access$600(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter$2;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOPayPresenter;->access$700(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    const-string v0, "eo"

    const-string v1, "verify google pay: try to EOWebApiImpl.instance().verifyPayOrder"

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$orderId:Ljava/lang/String;

    iget-object v0, p0, Lcom/eogame/presenter/EOPayPresenter$2;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOPayPresenter;->access$400(Lcom/eogame/presenter/EOPayPresenter;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$repeatData:Ljava/lang/String;

    iget-object v7, p0, Lcom/eogame/presenter/EOPayPresenter$2;->val$signData:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/eogame/web/EOWebApiImpl;->verifyPayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    const-string v1, "googlepayresult"

    if-nez v0, :cond_0

    const-string v2, "httpresult is null!"

    .line 230
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$2;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOPayPresenter;->access$800(Lcom/eogame/presenter/EOPayPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 235
    invoke-virtual {p0}, Lcom/eogame/presenter/EOPayPresenter$2;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/eogame/presenter/EOPayPresenter$2;->this$0:Lcom/eogame/presenter/EOPayPresenter;

    const/16 v2, 0x2777

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EOPayPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
