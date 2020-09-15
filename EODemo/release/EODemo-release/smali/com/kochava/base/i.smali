.class final Lcom/kochava/base/i;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation


# instance fields
.field final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final d:Lcom/kochava/base/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final e:Lcom/kochava/base/ConsentStatusChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final f:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final g:Lcom/kochava/base/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final h:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final i:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final j:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final k:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final l:Ljava/lang/String;

.field final m:Z

.field final n:Z

.field final o:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final p:J

.field final q:Z

.field volatile r:Z

.field volatile s:J

.field t:Z

.field final u:Lcom/kochava/base/f;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/kochava/base/b;Lorg/json/JSONObject;Lcom/kochava/base/ConsentStatusChangeListener;ZZLjava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/kochava/base/ConsentStatusChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kochava/base/i;->b:Ljava/util/List;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kochava/base/i;->j:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ControllerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kochava/base/i;->k:Landroid/os/HandlerThread;

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kochava/base/i;->p:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/i;->r:Z

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kochava/base/i;->s:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kochava/base/i;->t:Z

    new-instance v2, Lcom/kochava/base/f;

    invoke-direct {v2}, Lcom/kochava/base/f;-><init>()V

    iput-object v2, p0, Lcom/kochava/base/i;->u:Lcom/kochava/base/f;

    iput-object p1, p0, Lcom/kochava/base/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/kochava/base/i;->f:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    iput-object p4, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/kochava/base/i;->e:Lcom/kochava/base/ConsentStatusChangeListener;

    iput-boolean p6, p0, Lcom/kochava/base/i;->m:Z

    iput-boolean p7, p0, Lcom/kochava/base/i;->n:Z

    iput-object p8, p0, Lcom/kochava/base/i;->o:Ljava/lang/String;

    new-instance p2, Lcom/kochava/base/d;

    invoke-direct {p2, p1, p6}, Lcom/kochava/base/d;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    new-instance p1, Lcom/kochava/base/i$1;

    invoke-direct {p1, p0}, Lcom/kochava/base/i$1;-><init>(Lcom/kochava/base/i;)V

    iget-object p2, p0, Lcom/kochava/base/i;->j:Landroid/os/HandlerThread;

    invoke-virtual {p2, p1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p2, p0, Lcom/kochava/base/i;->k:Landroid/os/HandlerThread;

    invoke-virtual {p2, p1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lcom/kochava/base/i;->j:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iget-object p1, p0, Lcom/kochava/base/i;->k:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/kochava/base/i;->j:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kochava/base/i;->h:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/kochava/base/i;->k:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    iget-object p1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p2, "kochava_device_id"

    invoke-virtual {p1, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p2, "kvinit_wait"

    invoke-virtual {p1, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/kochava/base/i;->q:Z

    iget-object p1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p2, "launch_count"

    invoke-virtual {p1, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result p1

    iget-object p3, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    add-int/lit8 p4, p1, 0x1

    const p5, 0x7fffffff

    invoke-static {p4, v0, p5}, Lcom/kochava/base/x;->a(III)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    invoke-virtual {p3, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kochava/base/i;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/kochava/base/i;->u:Lcom/kochava/base/f;

    iget-object p2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p3, "networking_seconds_per_request"

    invoke-virtual {p2, p3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-wide/16 p3, 0x0

    invoke-static {p2, p3, p4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/kochava/base/f;->a(D)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        value = "_, null -> param1"
    .end annotation

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/kochava/base/x;->h(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v4, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "networking_urls"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "https://control.kochava.com/track/json"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v2

    :pswitch_0
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_smartlink"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "smartlink"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://smart.link/v1/links-sdk"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v4, "url_internal_logging"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "internal_logging"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_geo_event"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "geo_event"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://location.api.kochava.com/geoevent"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_location_update"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "location_update"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://location.api.kochava.com/location"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_push_token_remove"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "push_token_remove"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://token.api.kochava.com/token/remove"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_push_token_add"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "push_token_add"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://token.api.kochava.com/token/add"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v4, "url_identity_link"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "identityLink"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    const-string p1, "event_by_name"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    iget-object v6, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v7, "url_event"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v3

    aput-object p1, p2, v1

    const-string p1, "event"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-direct {p0, v2, p2}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_get_attribution"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "get_attribution"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://control.kochava.com/track/kvquery"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_9
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v4, "url_update"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "update"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v4, "url_session_pause"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "session_pause"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v4, "url_session_resume"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "session_resume"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v4, "url_install"

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "install"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-direct {p0, v2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_d
    new-array p1, v4, [Ljava/lang/String;

    iget-object p2, p0, Lcom/kochava/base/i;->c:Lorg/json/JSONObject;

    const-string v2, "url_init"

    invoke-virtual {p2, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "init"

    invoke-virtual {v0, p2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "https://kvinit-prod.api.kochava.com/track/kvinit"

    invoke-direct {p0, p2, p1}, Lcom/kochava/base/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final a(Ljava/lang/Runnable;Z)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/StackTraceElement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "message"

    const-string v1, "sdk_version"

    const-string v2, ""

    const-string v3, "kochava_app_id"

    :try_start_0
    iget-object v4, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v4, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, v2, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v3, v4, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v1, "thread"

    invoke-static {v1, p1, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p1, "exception"

    invoke-static {p1, p2, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v0, p3, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    if-eqz p4, :cond_1

    const-string p1, "java.lang.OutOfMemoryError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x3

    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-ge p2, p3, :cond_0

    aget-object p3, p4, p2

    invoke-virtual {p3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-string p2, "stack"

    invoke-static {p2, p1, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sdk.internal "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "action"

    const-string p4, "error"

    invoke-static {p3, p4, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v3, v4, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p3, "data"

    invoke-static {p3, p1, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const/16 p1, 0xc

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/kochava/base/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method final a()Z
    .locals 2

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "sdk_disabled"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method final b(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/i;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
