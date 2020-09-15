.class final Lcom/kochava/base/u;
.super Lcom/kochava/base/j;


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

    return-void
.end method

.method private c(ILorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "event_name"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private o()Z
    .locals 7

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v0

    iget-object v2, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "initial_sent_time"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v2

    iget-object v3, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "networking_tracking_wait"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    sub-int/2addr v2, v0

    const/4 v0, 0x5

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delaying queue task from install for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "TQU"

    const-string v5, "checkForInsta"

    invoke-static {v0, v1, v5, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/u;->a(J)V

    return v3

    :cond_1
    return v1
.end method

.method private p()Z
    .locals 7

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v0

    iget-object v2, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "click_sent_time"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v2

    iget-object v3, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "networking_tracking_wait"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    sub-int/2addr v2, v0

    const/4 v0, 0x5

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delaying queue task from click for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "TQU"

    const-string v5, "checkForClick"

    invoke-static {v0, v1, v5, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/u;->a(J)V

    return v3

    :cond_1
    return v1
.end method

.method private q()Z
    .locals 7

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->t:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v0

    iget-object v2, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "update_sent_time"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v2

    iget-object v3, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "networking_tracking_wait"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    sub-int/2addr v2, v0

    const/4 v0, 0x5

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delaying queue task from update/idlink for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v1, "TQU"

    const-string v5, "checkForUpdat"

    invoke-static {v0, v1, v5, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/u;->a(J)V

    return v3

    :cond_1
    return v1
.end method

.method private r()Z
    .locals 6

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->k()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/kochava/base/u;->n()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Send"

    aput-object v4, v3, v2

    const-string v4, "TQU"

    const-string v5, "flushClickQue"

    invoke-static {v0, v4, v5, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->j()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "click_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v0, v2}, Lcom/kochava/base/u;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/kochava/base/u;->k()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/kochava/base/u;->m()V

    return v2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "click_sent_time"

    invoke-virtual {v0, v3, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/kochava/base/u;->l()V

    return v1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error in clicks queue remove"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private s()Z
    .locals 6

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->h()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/kochava/base/u;->n()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Send"

    aput-object v4, v3, v2

    const-string v4, "TQU"

    const-string v5, "flushUpdateQu"

    invoke-static {v0, v4, v5, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "blacklist"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v3}, Lcom/kochava/base/d;->g()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Lcom/kochava/base/u;->a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "update_sent_time"

    invoke-virtual {v0, v3, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/kochava/base/u;->l()V

    return v1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error in update queue remove"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t()Z
    .locals 6

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->e()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/kochava/base/u;->n()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x5

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Send"

    aput-object v4, v3, v2

    const-string v4, "TQU"

    const-string v5, "flushEventQue"

    invoke-static {v0, v4, v5, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "blacklist"

    invoke-virtual {v0, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v3, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "eventname_blacklist"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "session_tracking"

    invoke-virtual {v4, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->d()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p0, v5, v0, v3, v4}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;)I

    move-result v0

    invoke-direct {p0, v0, v5}, Lcom/kochava/base/u;->c(ILorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v5}, Lcom/kochava/base/u;->a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/kochava/base/u;->l()V

    return v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown error in events queue remove"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;)I

    move-result v0

    iget-object v2, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {p1, v2}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V

    iget-object v2, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "push"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-ne v0, v3, :cond_2

    :cond_1
    if-nez v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/kochava/base/u;->b(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method final a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;Z)Z
    .locals 7
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "sdk_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;)I

    move-result v4

    const-string v5, "event_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x6

    if-ne v4, v6, :cond_1

    invoke-static {p3, v5}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v1

    :cond_1
    if-nez p4, :cond_3

    const/4 p3, 0x3

    if-eq v4, p3, :cond_2

    const/4 p3, 0x2

    if-ne v4, p3, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object p3, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object p3, p3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {p1, p3}, Lcom/kochava/base/u;->a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V

    const-string p3, "backfilled"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result p4

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p4, :cond_4

    invoke-virtual {p0, v4, v2}, Lcom/kochava/base/u;->b(ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {v0, p3, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/kochava/base/u;->b(Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    return v3

    :cond_5
    :goto_0
    return v1
.end method

.method final b(Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/x;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p2, v2}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final run()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "run"

    const-string v3, "TQU"

    const/4 v4, 0x4

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->k()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->h()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->e()I

    move-result v5

    if-lez v5, :cond_b

    :cond_1
    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-boolean v5, v5, Lcom/kochava/base/i;->r:Z

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/kochava/base/u;->o()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->k()I

    move-result v5

    if-lez v5, :cond_4

    invoke-direct {p0}, Lcom/kochava/base/u;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/kochava/base/u;->p()Z

    move-result v5

    if-eqz v5, :cond_5

    return-void

    :cond_5
    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->h()I

    move-result v5

    if-lez v5, :cond_7

    invoke-direct {p0}, Lcom/kochava/base/u;->s()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/kochava/base/u;->q()Z

    move-result v5

    if-eqz v5, :cond_8

    return-void

    :cond_8
    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->e()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0}, Lcom/kochava/base/u;->t()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    return-void

    :cond_a
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Sleep enabled after launching."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "Failed to process queue"

    aput-object v7, v6, v0

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-static {v4, v3, v2, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    iget-object v5, p0, Lcom/kochava/base/u;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5}, Lcom/kochava/base/d;->a()V

    invoke-virtual {p0}, Lcom/kochava/base/u;->h()V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Complete"

    aput-object v5, v1, v0

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
