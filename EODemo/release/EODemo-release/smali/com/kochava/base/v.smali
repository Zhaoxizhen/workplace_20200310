.class final Lcom/kochava/base/v;
.super Lcom/kochava/base/j;

# interfaces
.implements Lcom/kochava/base/AttributionUpdateListener;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/kochava/base/DeeplinkProcessedListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/i;Ljava/lang/String;JLcom/kochava/base/DeeplinkProcessedListener;)V
    .locals 8
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/kochava/base/DeeplinkProcessedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kochava/base/v;->d:Landroid/os/Handler;

    new-instance v0, Lcom/kochava/base/v$1;

    invoke-direct {v0, p0}, Lcom/kochava/base/v$1;-><init>(Lcom/kochava/base/v;)V

    iput-object v0, p0, Lcom/kochava/base/v;->e:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/kochava/base/v;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/kochava/base/v;->c:Lcom/kochava/base/DeeplinkProcessedListener;

    iget-object p2, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p5, "deeplinks_timeout_minimum"

    invoke-virtual {p2, p5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-wide/16 v0, 0xfa

    invoke-static {p2, v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;J)J

    move-result-wide v4

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p2, "deeplinks_timeout_maximum"

    invoke-virtual {p1, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-static {p1, v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;J)J

    move-result-wide v6

    iget-object p1, p0, Lcom/kochava/base/v;->d:Landroid/os/Handler;

    iget-object p2, p0, Lcom/kochava/base/v;->e:Ljava/lang/Runnable;

    move-wide v2, p3

    invoke-static/range {v2 .. v7}, Lcom/kochava/base/x;->a(JJJ)J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/kochava/base/v;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/v;->b:Ljava/lang/String;

    return-object p0
.end method

.method private a(Lcom/kochava/base/Deeplink;)V
    .locals 2
    .param p1    # Lcom/kochava/base/Deeplink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kochava/base/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kochava/base/v;->d()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/kochava/base/v;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kochava/base/v;->d:Landroid/os/Handler;

    new-instance v1, Lcom/kochava/base/v$2;

    invoke-direct {v1, p0, p1}, Lcom/kochava/base/v$2;-><init>(Lcom/kochava/base/v;Lcom/kochava/base/Deeplink;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/kochava/base/v;Lcom/kochava/base/Deeplink;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "kochava_device_id"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "{device_id}"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{type}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "click_url"

    invoke-static {v1, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Lcom/kochava/base/v;)Lcom/kochava/base/DeeplinkProcessedListener;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/v;->c:Lcom/kochava/base/DeeplinkProcessedListener;

    return-object p0
.end method

.method private o()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "path"

    iget-object v2, p0, Lcom/kochava/base/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private p()V
    .locals 9

    iget-object v0, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "deeplinks_allow_deferred"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    iget-boolean v2, v2, Lcom/kochava/base/i;->q:Z

    const-string v3, ""

    if-eqz v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v2, "attribution"

    invoke-virtual {v0, v2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v4, "runNoInputDes"

    const-string v5, "TSL"

    const/4 v6, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "First launch, using attribution"

    aput-object v8, v7, v2

    invoke-static {v6, v5, v4, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "is_first_install"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v2, "deferred_deeplink"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/kochava/base/Deeplink;

    invoke-direct {v1, v0, v3}, Lcom/kochava/base/Deeplink;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "First launch, not the first install, ignoring deferred deeplink"

    aput-object v1, v0, v2

    invoke-static {v6, v5, v4, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/kochava/base/Deeplink;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v3}, Lcom/kochava/base/Deeplink;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V

    :goto_0
    return-void

    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "First launch, requesting attribution"

    aput-object v3, v0, v2

    invoke-static {v6, v5, v4, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/v;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v0, p0, v1}, Lcom/kochava/base/b;->a(Lcom/kochava/base/AttributionUpdateListener;Z)V

    return-void

    :cond_3
    :goto_1
    new-instance v0, Lcom/kochava/base/Deeplink;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v3}, Lcom/kochava/base/Deeplink;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V

    return-void
.end method


# virtual methods
.method public final onAttributionUpdated(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Retrieved attribution, waking to process smartlink"

    aput-object v1, p1, v0

    const/4 v0, 0x4

    const-string v1, "TSL"

    const-string v2, "onAttribution"

    invoke-static {v0, v1, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/v;->a(J)V

    return-void
.end method

.method public final run()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "run"

    const-string v3, "TSL"

    const/4 v4, 0x4

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/v;->e()Z

    move-result v1

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "Task complete"

    aput-object v5, v1, v0

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/v;->i()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kochava/base/v;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/kochava/base/v;->p()V

    return-void

    :cond_1
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "has path, querying smartlink API"

    aput-object v6, v1, v0

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/kochava/base/v;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/kochava/base/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kochava/base/v;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "app_link"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "click_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kochava/base/v;->a(Ljava/lang/String;)V

    const-string v1, "deeplink"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/kochava/base/Deeplink;

    iget-object v2, p0, Lcom/kochava/base/v;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/kochava/base/Deeplink;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V

    invoke-virtual {p0}, Lcom/kochava/base/v;->i()V

    return-void

    :cond_3
    :goto_0
    new-instance v0, Lcom/kochava/base/Deeplink;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/kochava/base/v;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kochava/base/Deeplink;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V

    return-void
.end method
