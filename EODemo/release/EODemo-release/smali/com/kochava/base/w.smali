.class final Lcom/kochava/base/w;
.super Lcom/kochava/base/j;


# static fields
.field private static final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final c:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kochava/base/w;->b:Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/kochava/base/c;->a(I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kochava/base/w;->c:Ljava/util/List;

    return-void
.end method

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

.method static a(Lcom/kochava/base/j;Z)Z
    .locals 16
    .param p0    # Lcom/kochava/base/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    sget-object v1, Lcom/kochava/base/w;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {v0, v4, v2, v3}, Lcom/kochava/base/j;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_0
    iget-object v5, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v6, "send_updates"

    invoke-virtual {v5, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v5

    iget-object v7, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v8, "initial_data"

    invoke-virtual {v7, v8}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    iget-object v9, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v9, v9, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v10, "initial_needs_sent"

    invoke-virtual {v9, v10}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v9

    const/4 v10, 0x5

    const-string v11, "TUP"

    const-string v12, "performUpdate"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendUpdates: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gathered: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "needsSent: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v10, v11, v12, v13}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_7

    if-nez v7, :cond_2

    if-nez v9, :cond_7

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {v0, v4, v2, v3}, Lcom/kochava/base/j;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-le v2, v15, :cond_7

    const-string v2, "notifications_enabled"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "background_location"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "push_token_sent"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    sget-object v2, Lcom/kochava/base/w;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_upd"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "app_limit_trackingupd"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v4, v2, v3}, Lcom/kochava/base/j;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, v0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v2}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;)V

    monitor-exit v1

    return v6

    :cond_7
    monitor-exit v1

    return v8

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "run"

    const-string v3, "TUP"

    const/4 v4, 0x4

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/kochava/base/w;->a(Lcom/kochava/base/j;Z)Z

    invoke-virtual {p0}, Lcom/kochava/base/w;->d()V

    invoke-virtual {p0}, Lcom/kochava/base/w;->i()V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "Complete"

    aput-object v5, v1, v0

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
