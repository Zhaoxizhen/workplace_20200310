.class Lcom/eogame/presenter/EOLogPresenter$1;
.super Lcom/eogame/utils/EOThread;
.source "EOLogPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOLogPresenter;

.field final synthetic val$logType:I

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOLogPresenter;ILjava/util/Map;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/eogame/presenter/EOLogPresenter$1;->this$0:Lcom/eogame/presenter/EOLogPresenter;

    iput p2, p0, Lcom/eogame/presenter/EOLogPresenter$1;->val$logType:I

    iput-object p3, p0, Lcom/eogame/presenter/EOLogPresenter$1;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 171
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    iget v1, p0, Lcom/eogame/presenter/EOLogPresenter$1;->val$logType:I

    iget-object v2, p0, Lcom/eogame/presenter/EOLogPresenter$1;->val$map:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/eogame/web/EOWebApiImpl;->sendLog(ILjava/util/Map;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v0

    const-string v1, "eo"

    const/16 v2, 0x2710

    if-ne v0, v2, :cond_0

    .line 173
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log success, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/eogame/presenter/EOLogPresenter$1;->val$logType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log fail, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/eogame/presenter/EOLogPresenter$1;->val$logType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
