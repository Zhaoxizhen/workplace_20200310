.class Lcom/kochava/base/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/BlockingQueue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/kochava/base/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/kochava/base/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/kochava/base/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/i;Lcom/kochava/base/b;)V
    .locals 2
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    iput-object p2, p0, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "start"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "QUP"

    const-string v3, "queueProcess"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    invoke-virtual {v0, p0}, Lcom/kochava/base/i;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Lcom/kochava/base/a$b;)V
    .locals 4
    .param p1    # Lcom/kochava/base/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "add"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "QUP"

    const-string v3, "queueProcess"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/kochava/base/a$c;->a()V

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "run"

    aput-object v4, v0, v3

    const-string v4, "queueProcess"

    const-string v5, "QUP"

    const/4 v6, 0x5

    invoke-static {v6, v5, v4, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_8

    :cond_1
    const/4 v6, 0x2

    :try_start_0
    iget-object v0, v1, Lcom/kochava/base/a$c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kochava/base/a$b;

    if-eqz v0, :cond_0

    iget-object v7, v1, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    iget-boolean v7, v7, Lcom/kochava/base/i;->m:Z

    const/4 v8, 0x3

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v7}, Lcom/kochava/base/b;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lcom/kochava/base/a$c;->c:Lcom/kochava/base/b;

    invoke-interface {v7}, Lcom/kochava/base/b;->e()Z

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v2, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Consent denied. Dropping Incoming Action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/kochava/base/a$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v8, v5, v4, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v7, v0, Lcom/kochava/base/a$b;->a:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "setPushToken"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :sswitch_1
    const-string v10, "sendEvent"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v9, 0x3

    goto :goto_1

    :sswitch_2
    const-string v10, "setAppLimitAdTracking"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :sswitch_3
    const-string v10, "setIdentityLink"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v9, 0x2

    :cond_3
    :goto_1
    if-eqz v9, :cond_7

    if-eq v9, v2, :cond_6

    if-eq v9, v6, :cond_5

    if-eq v9, v8, :cond_4

    goto/16 :goto_0

    :cond_4
    new-instance v7, Lcom/kochava/base/l;

    iget-object v11, v1, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    const/4 v12, 0x6

    iget-object v8, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v9, "eventName"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v8, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v9, "eventData"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v8, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v9, "receiptJson"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v8, "receiptSignature"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v10, v7

    invoke-direct/range {v10 .. v16}, Lcom/kochava/base/l;-><init>(Lcom/kochava/base/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/kochava/base/l;->run()V

    goto/16 :goto_0

    :cond_5
    new-instance v7, Lcom/kochava/base/n;

    iget-object v8, v1, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v9, "identityLink"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/kochava/base/n;-><init>(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    invoke-virtual {v7}, Lcom/kochava/base/n;->run()V

    goto/16 :goto_0

    :cond_6
    new-instance v7, Lcom/kochava/base/k;

    iget-object v8, v1, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v9, "appLimitAdTracking"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v7, v8, v0}, Lcom/kochava/base/k;-><init>(Lcom/kochava/base/i;Z)V

    invoke-virtual {v7}, Lcom/kochava/base/k;->run()V

    goto/16 :goto_0

    :cond_7
    new-instance v7, Lcom/kochava/base/t;

    iget-object v8, v1, Lcom/kochava/base/a$c;->b:Lcom/kochava/base/i;

    iget-object v9, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v10, "token"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lcom/kochava/base/a$b;->b:Landroid/os/Bundle;

    const-string v10, "enable"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v7, v8, v9, v0, v3}, Lcom/kochava/base/t;-><init>(Lcom/kochava/base/i;Ljava/lang/String;ZZ)V

    invoke-virtual {v7}, Lcom/kochava/base/t;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    const-string v0, "queue"

    invoke-static {v6, v5, v0, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ffa6ca6 -> :sswitch_3
        -0x20b6ce4a -> :sswitch_2
        0x2a27f2 -> :sswitch_1
        0x2d53acbd -> :sswitch_0
    .end sparse-switch
.end method
