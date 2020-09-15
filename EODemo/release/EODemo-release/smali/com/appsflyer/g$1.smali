.class final Lcom/appsflyer/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/g;


# direct methods
.method constructor <init>(Lcom/appsflyer/g;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/appsflyer/g$1;->this$0:Lcom/appsflyer/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/appsflyer/g$1;->this$0:Lcom/appsflyer/g;

    iget-object v0, v0, Lcom/appsflyer/g;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/g$1;->this$0:Lcom/appsflyer/g;

    invoke-virtual {v1}, Lcom/appsflyer/g;->unregisterListeners()V

    .line 48
    iget-object v1, p0, Lcom/appsflyer/g$1;->this$0:Lcom/appsflyer/g;

    iget-object v1, v1, Lcom/appsflyer/g;->mSchedulingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appsflyer/g$1;->this$0:Lcom/appsflyer/g;

    iget-object v2, v2, Lcom/appsflyer/g;->mRegisterRunnable:Ljava/lang/Runnable;

    const-wide/32 v3, 0x1b7740

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
