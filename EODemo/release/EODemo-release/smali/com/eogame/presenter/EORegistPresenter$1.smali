.class Lcom/eogame/presenter/EORegistPresenter$1;
.super Lcom/eogame/utils/EOThread;
.source "EORegistPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EORegistPresenter;->registByEmail(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EORegistPresenter;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$pwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EORegistPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/eogame/presenter/EORegistPresenter$1;->this$0:Lcom/eogame/presenter/EORegistPresenter;

    iput-object p2, p0, Lcom/eogame/presenter/EORegistPresenter$1;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/eogame/presenter/EORegistPresenter$1;->val$pwd:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/eogame/presenter/EORegistPresenter$1;->this$0:Lcom/eogame/presenter/EORegistPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EORegistPresenter;->access$000(Lcom/eogame/presenter/EORegistPresenter;)Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/eogame/presenter/EORegistPresenter$1;->this$0:Lcom/eogame/presenter/EORegistPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EORegistPresenter;->access$100(Lcom/eogame/presenter/EORegistPresenter;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 96
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EORegistPresenter$1;->val$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/eogame/presenter/EORegistPresenter$1;->val$pwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/eogame/web/EOWebApiImpl;->regist(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/eogame/presenter/EORegistPresenter$1;->this$0:Lcom/eogame/presenter/EORegistPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EORegistPresenter;->access$200(Lcom/eogame/presenter/EORegistPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 98
    invoke-virtual {p0}, Lcom/eogame/presenter/EORegistPresenter$1;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/eogame/presenter/EORegistPresenter$1;->this$0:Lcom/eogame/presenter/EORegistPresenter;

    const/16 v2, 0x2714

    invoke-virtual {v1, v0, v2}, Lcom/eogame/presenter/EORegistPresenter;->sendMsg(Lcom/eogame/model/EOBaseObject;I)V

    return-void
.end method
