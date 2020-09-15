.class Lcom/kochava/base/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/i;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/kochava/base/b;Lorg/json/JSONObject;Lcom/kochava/base/ConsentStatusChangeListener;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/i;


# direct methods
.method constructor <init>(Lcom/kochava/base/i;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/i$1;->a:Lcom/kochava/base/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Critical Error: Shutting Down"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "STT"

    const-string v4, "uncaughtExcep"

    invoke-static {v2, v3, v4, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/i$1;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "internal_logging_enabled"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/kochava/base/i$1;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "blacklist"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Lcom/kochava/base/x;->e()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/kochava/base/i$1;->a:Lcom/kochava/base/i;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/kochava/base/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    :cond_1
    invoke-static {v1}, Lcom/kochava/base/Tracker;->unConfigure(Z)V

    return-void
.end method
