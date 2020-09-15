.class final Lcom/kochava/base/o;
.super Lcom/kochava/base/j;


# instance fields
.field private b:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/i;)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    return-void
.end method

.method static a(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 5
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "sdk_disabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "blacklist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "ids"

    const-string v3, "email"

    if-eqz v1, :cond_1

    invoke-static {v1, v3}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    iget-object v4, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v4, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "whitelist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1, v3}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v2, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "eventname_blacklist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v2, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kochava/base/o;->b(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    const-string v2, "location_services"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kochava/base/b;->a(Lorg/json/JSONObject;)V

    const-string v0, "networking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kochava/base/o;->c(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    const-string v0, "deeplinks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kochava/base/o;->d(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    const-string v0, "internal_logging"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kochava/base/o;->e(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    const-string v0, "install"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kochava/base/o;->i(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    const-string v0, "push_notifications"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kochava/base/o;->h(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/kochava/base/o;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static b(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 7
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "kochava_app_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v2, "kochava_app_id_override"

    invoke-virtual {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "kochava_device_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v2, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "session_tracking"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "send_updates"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "session_minimum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x2d

    invoke-static {v1, v3}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    const v3, 0x7fffffff

    invoke-static {v1, v5, v3}, Lcom/kochava/base/x;->a(III)I

    move-result v1

    iget-object v4, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "session_window"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x258

    invoke-static {v1, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1, v5, v3}, Lcom/kochava/base/x;->a(III)I

    move-result v1

    iget-object v4, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "kvinit_wait"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-static {v1, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    invoke-static {v1, v5, v3}, Lcom/kochava/base/x;->a(III)I

    move-result v1

    iget-object v4, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "kvinit_staleness"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const v6, 0x15180

    invoke-static {v5, v6}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5, v1, v3}, Lcom/kochava/base/x;->a(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-wide/16 v1, 0x0

    const-string v3, "getattribution_wait"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/kochava/base/o;->g(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)V
    .locals 6
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "log_messages"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;I)I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v3, "TIN"

    const-string v5, "decodeLogMess"

    invoke-static {v2, v3, v5, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static c(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 5
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "tracking_wait"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "networking_tracking_wait"

    invoke-virtual {v0, v2, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "seconds_per_request"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "networking_seconds_per_request"

    invoke-virtual {v2, v4, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/kochava/base/i;->u:Lcom/kochava/base/f;

    invoke-virtual {v2, v0, v1}, Lcom/kochava/base/f;->a(D)V

    const-string v0, "urls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v0, "networking_urls"

    invoke-virtual {p0, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static d(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 5
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "allow_deferred"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "deeplinks_allow_deferred"

    invoke-virtual {v0, v2, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timeout_minimum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Lcom/kochava/base/x;->a(J)D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(D)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "deeplinks_timeout_minimum"

    invoke-virtual {v2, v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timeout_maximum"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(J)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v0

    iget-object p0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(D)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "deeplinks_timeout_maximum"

    invoke-virtual {p0, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static e(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "internal_logging_enabled"

    invoke-virtual {p0, v0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static f(Lcom/kochava/base/i;Lorg/json/JSONObject;)Z
    .locals 27
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v1

    iget-object v2, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "consent_last_prompt"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v2

    iget-object v6, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v7, "consent"

    invoke-virtual {v6, v7}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string v9, "partners"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/kochava/base/x;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v10

    const-string v11, "required"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v12

    const-string v13, "granted"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v14

    const-string v15, "response_time"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v5

    const-wide/16 v4, 0x0

    invoke-static {v8, v4, v5}, Lcom/kochava/base/x;->a(Ljava/lang/Object;J)J

    move-result-wide v18

    const-string v8, "should_prompt"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v4

    const-string v5, "prompt_id"

    move-object/from16 v20, v3

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v21, v1

    const-string v1, ""

    invoke-static {v3, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v22

    if-eqz v22, :cond_0

    move/from16 v22, v2

    const/16 v23, 0x1

    goto :goto_0

    :cond_0
    move/from16 v22, v2

    const/16 v23, 0x0

    :goto_0
    move-object/from16 v2, p1

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v25, v1

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/kochava/base/x;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v16

    move-object/from16 v26, v5

    const/4 v5, 0x2

    if-nez v16, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Consent information not returned by server. Ensure it is enabled on the Kochava dashboard."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TIN"

    const-string v3, "decodeConsent"

    invoke-static {v5, v1, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    if-nez v1, :cond_2

    move-object/from16 v1, v17

    invoke-static {v11, v1, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v8, v1, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v7, v6, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->c(Z)V

    return v12

    :cond_2
    move-object/from16 v1, v17

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v13, v3, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v15, v3, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v8, v3, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v10, v9}, Lcom/kochava/base/x;->b(Lorg/json/JSONArray;Lorg/json/JSONArray;)I

    move-result v3

    move-object/from16 v6, v26

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v9, v25

    invoke-static {v6, v9}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v9, v24

    invoke-static {v6, v9}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x1

    xor-int/2addr v6, v9

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    if-eqz v14, :cond_5

    invoke-static {v13, v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v15, v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->c(Z)V

    iget-object v1, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->a(Z)V

    iget-object v1, v0, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v1, v5}, Lcom/kochava/base/b;->g(Z)V

    :cond_5
    if-eqz v22, :cond_6

    sub-int v1, v21, v22

    const-string v5, "prompt_retry_interval"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const v9, 0x278d00

    invoke-static {v5, v9}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v5

    if-le v1, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v23, :cond_7

    if-nez v14, :cond_7

    if-nez v1, :cond_7

    if-nez v22, :cond_8

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_a

    if-nez v5, :cond_9

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v4, 0x1

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v8, v4, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    if-eqz v1, :cond_b

    iget-object v4, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v8, v20

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v5, v10}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_6

    :cond_b
    const/4 v10, 0x1

    :goto_6
    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v7, v2, v10}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-nez v3, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    if-nez v14, :cond_e

    :cond_d
    if-eqz v12, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    const/4 v9, 0x1

    :cond_f
    return v9
.end method

.method private static g(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 11
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "install_referrer_attempts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v3

    const v4, 0x7fffffff

    const/4 v5, 0x1

    invoke-static {v3, v5, v4}, Lcom/kochava/base/x;->a(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "install_referrer_wait"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3, v5, v4}, Lcom/kochava/base/x;->a(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "install_referrer_retry_wait"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v3, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v5 .. v10}, Lcom/kochava/base/x;->a(DDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p1, "install_referrer"

    invoke-static {p1, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object p0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p1, "dp_options"

    invoke-virtual {p0, p1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static h(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 4
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "push"

    invoke-virtual {v2, v3, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "resend_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "push_notifications_resend_id"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "push_token_sent"

    invoke-virtual {v0, v2, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p0, v3, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static i(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 4
    .param p0    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "resend_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v2, "install_resend_id"

    invoke-virtual {v1, v2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "initial_needs_sent"

    invoke-virtual {v0, v3, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v2, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v0, "attribution"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string p1, "attribution_time"

    invoke-virtual {p0, p1}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "run"

    const-string v4, "TIN"

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "init_last_sent"

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    iget-object v6, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-object v6, v6, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v7, "kvinit_wait"

    invoke-virtual {v6, v7}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x3c

    invoke-static {v6, v7}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LastSent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InitWait: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v8, 0x5

    invoke-static {v8, v4, v3, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v1, v6

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v6

    if-lt v1, v6, :cond_0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v5, "Skip"

    aput-object v5, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/o;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/o;->i()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    new-array v1, v9, [Ljava/lang/Object;

    const-string v6, "Gather"

    aput-object v6, v1, v0

    invoke-static {v8, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v1, v6}, Lcom/kochava/base/o;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    new-array v1, v9, [Ljava/lang/Object;

    const-string v6, "Send"

    aput-object v6, v1, v0

    invoke-static {v8, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6, v1}, Lcom/kochava/base/o;->a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v9}, Lcom/kochava/base/o;->a(Lorg/json/JSONObject;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Retry"

    aput-object v2, v1, v0

    invoke-static {v8, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v0

    invoke-static {v8, v4, v3, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    const-string v8, "nt_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "nt_id mismatch"

    aput-object v8, v7, v0

    invoke-static {v2, v4, v3, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v7, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    invoke-static {v7, v1}, Lcom/kochava/base/o;->a(Lcom/kochava/base/i;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-boolean v7, v7, Lcom/kochava/base/i;->m:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-boolean v7, v7, Lcom/kochava/base/i;->n:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    invoke-static {v7, v1}, Lcom/kochava/base/o;->f(Lcom/kochava/base/i;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8, v9}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iput-object v6, p0, Lcom/kochava/base/o;->b:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/kochava/base/o;->d()V

    const/4 v5, 0x3

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "Complete"

    aput-object v7, v6, v0

    const-string v8, "init"

    invoke-static {v5, v4, v8, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v7, v5, v0

    invoke-static {v2, v4, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/o;->i()V

    if-eqz v1, :cond_5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kochava/base/o$1;

    invoke-direct {v1, p0}, Lcom/kochava/base/o$1;-><init>(Lcom/kochava/base/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method
