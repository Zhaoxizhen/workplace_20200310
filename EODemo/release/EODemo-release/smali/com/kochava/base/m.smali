.class final Lcom/kochava/base/m;
.super Lcom/kochava/base/j;


# instance fields
.field private final b:Lcom/kochava/base/AttributionUpdateListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Z

.field private d:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/i;Lcom/kochava/base/AttributionUpdateListener;Z)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/AttributionUpdateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kochava/base/m;->d:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/kochava/base/m;->b:Lcom/kochava/base/AttributionUpdateListener;

    iput-boolean p3, p0, Lcom/kochava/base/m;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/kochava/base/m;)Lcom/kochava/base/AttributionUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/m;->b:Lcom/kochava/base/AttributionUpdateListener;

    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "{\"attribution\":\"false\"}"

    :cond_1
    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kochava/base/m$1;

    invoke-direct {v1, p0, p1}, Lcom/kochava/base/m$1;-><init>(Lcom/kochava/base/m;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "run"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x4

    const-string v5, "TGA"

    invoke-static {v4, v5, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v6, "attribution"

    invoke-virtual {v1, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v6, p0, Lcom/kochava/base/m;->c:Z

    if-eqz v6, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v6, "Returning cached response"

    aput-object v6, v0, v3

    invoke-static {v4, v5, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/kochava/base/m;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Skip"

    aput-object v1, v0, v3

    invoke-static {v4, v5, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/kochava/base/m;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/m;->i()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v7, "getattribution_wait"

    invoke-virtual {v1, v7}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {v1, v7, v8}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v7, v7, v9

    iget-object v1, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v9, "initial_sent_time"

    invoke-virtual {v1, v9}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    int-to-long v9, v1

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v11

    long-to-double v11, v11

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v7

    const/4 v1, 0x5

    cmpg-double v7, v11, v9

    if-gez v7, :cond_2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delaying for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " milliseconds"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v5, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v7}, Lcom/kochava/base/m;->a(J)V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/kochava/base/m;->d:Lorg/json/JSONObject;

    if-nez v7, :cond_3

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "Gather"

    aput-object v8, v7, v3

    invoke-static {v1, v5, v2, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, p0, Lcom/kochava/base/m;->d:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/kochava/base/m;->d:Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1, v7, v8}, Lcom/kochava/base/m;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_3
    iget-object v7, p0, Lcom/kochava/base/m;->d:Lorg/json/JSONObject;

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8, v7}, Lcom/kochava/base/m;->a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/kochava/base/m;->a(Lorg/json/JSONObject;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    const-string v7, "data"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_5
    invoke-static {v8}, Lcom/kochava/base/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v7, v6, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/kochava/base/m;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kochava/base/m;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "attribution_time"

    invoke-virtual {v1, v7, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "Complete"

    aput-object v7, v6, v3

    const-string v8, "Attribution"

    invoke-static {v1, v5, v8, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v3

    invoke-static {v4, v5, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/m;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/m;->i()V

    return-void
.end method
