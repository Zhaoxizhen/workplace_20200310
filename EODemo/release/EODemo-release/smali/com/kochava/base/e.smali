.class final Lcom/kochava/base/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:Lcom/kochava/base/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:J

.field private e:Lcom/kochava/base/DeepLinkListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/net/Uri;ILcom/kochava/base/i;Lcom/kochava/base/DeepLinkListener;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kochava/base/e;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/e;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    const/16 v0, 0xfa

    const/16 v1, 0x2710

    invoke-static {p2, v0, v1}, Lcom/kochava/base/x;->a(III)I

    move-result p2

    iput p2, p0, Lcom/kochava/base/e;->a:I

    iput-object p4, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    iput-object p3, p0, Lcom/kochava/base/e;->b:Lcom/kochava/base/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    :cond_0
    iget-object p1, p3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p2, "deeplink_ran"

    invoke-virtual {p1, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p1, p4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result p1

    iget-object p4, p3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p4, p2, v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p2, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    if-nez p2, :cond_2

    iget-boolean p2, p3, Lcom/kochava/base/i;->q:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/kochava/base/e;->run()V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/kochava/base/e;->b()V

    return-void
.end method

.method private b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    iget-object v1, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-interface {v0, v1}, Lcom/kochava/base/DeepLinkListener;->onDeepLink(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {p0}, Lcom/kochava/base/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "DLT"

    const-string v2, "sendDeepLink"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Exception in Host App"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v1, v2, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/e;->b:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "install_referrer"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/e;->b:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v2, "referrer"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kochava/base/InstallReferrer;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/kochava/base/InstallReferrer;->referrer:Ljava/lang/String;

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/e;->e:Lcom/kochava/base/DeepLinkListener;

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kochava/base/e;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/kochava/base/e;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kochava/base/e;->d:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/kochava/base/e;->a:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/e;->c:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/kochava/base/e;->b()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
