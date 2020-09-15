.class final Lcom/kochava/base/p;
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

    invoke-direct {p0}, Lcom/kochava/base/p;->o()V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 5
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "kochava_device_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "kochava_app_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "sdk_version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p1, "app_version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p1, "os_version"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "time"

    invoke-static {v1, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    invoke-virtual {p1}, Lcom/kochava/base/i;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    invoke-virtual {p1}, Lcom/kochava/base/i;->a()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "sdk_disabled"

    invoke-static {v1, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    iget-object p1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "install_count"

    invoke-virtual {p1, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "count"

    invoke-static {v1, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "last_install"

    invoke-virtual {p1, v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "last_install"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "initial_ever_sent"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "install_count"

    invoke-virtual {v1, v2, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kochava/base/p;->b(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "run"

    const-string v4, "TIL"

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "initial_needs_sent"

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    const-string v5, "Skip"

    aput-object v5, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/kochava/base/p;->d()V

    :goto_0
    invoke-virtual {p0}, Lcom/kochava/base/p;->i()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v7, "initial_data"

    invoke-virtual {v1, v7}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v8, 0x5

    if-nez v1, :cond_2

    new-array v1, v6, [Ljava/lang/Object;

    const-string v9, "Gather"

    aput-object v9, v1, v0

    invoke-static {v8, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v6, v1, v9}, Lcom/kochava/base/p;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v10, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v10, v10, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v11, "first_launch_time"

    invoke-virtual {v10, v11}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v10

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v11

    const v12, 0x278d00

    add-int/2addr v12, v10

    if-le v12, v11, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "usertime"

    invoke-static {v11, v10, v9}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    iget-object v9, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v9, v9, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v9, v7, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/kochava/base/p;->n()Z

    move-result v9

    if-eqz v9, :cond_3

    return-void

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0, v6, v9, v1}, Lcom/kochava/base/p;->a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {p0, v9, v6}, Lcom/kochava/base/p;->a(Lorg/json/JSONObject;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    :cond_4
    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v0

    invoke-static {v8, v4, v3, v10}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v9, "initial_ever_sent"

    invoke-virtual {v8, v9}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "session_resume_time"

    invoke-virtual {v8, v11, v10}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "session_state_active_count"

    invoke-virtual {v8, v11, v10}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v8, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v8, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "initial_sent_time"

    invoke-virtual {v5, v8, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v7, p0, Lcom/kochava/base/p;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v8, "install_count"

    invoke-virtual {v7, v8}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/kochava/base/p;->b(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/kochava/base/p;->d()V

    const/4 v1, 0x3

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "Complete"

    aput-object v7, v5, v0

    const-string v8, "install"

    invoke-static {v1, v4, v8, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v7, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
