.class final Lcom/kochava/base/t;
.super Lcom/kochava/base/j;


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/kochava/base/i;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    iput-object p2, p0, Lcom/kochava/base/t;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kochava/base/t;->c:Z

    iput-boolean p4, p0, Lcom/kochava/base/t;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "run"

    const-string v4, "TPT"

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/kochava/base/t;->d:Z

    const-string v5, "push_token_enable"

    const-string v6, "push_token"

    const/4 v7, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v8, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/kochava/base/x;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/kochava/base/t;->b:Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/kochava/base/t;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v7, [Ljava/lang/Object;

    const-string v5, "Skip"

    aput-object v5, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v8, p0, Lcom/kochava/base/t;->b:Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-boolean v6, p0, Lcom/kochava/base/t;->c:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "push_token_sent"

    invoke-virtual {v1, v6, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "push"

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v7, [Ljava/lang/Object;

    const-string v5, "Push Disabled: Skip"

    aput-object v5, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "token"

    iget-object v9, p0, Lcom/kochava/base/t;->b:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const/4 v9, 0x2

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v0

    invoke-static {v9, v4, v3, v10}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-boolean v8, p0, Lcom/kochava/base/t;->c:Z

    if-eqz v8, :cond_2

    const/16 v8, 0x8

    goto :goto_1

    :cond_2
    const/16 v8, 0x9

    :goto_1
    invoke-virtual {p0, v8, v1, v5}, Lcom/kochava/base/t;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5, v1}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/t;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v1}, Lcom/kochava/base/b;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/kochava/base/t;->i()V

    :cond_3
    new-array v1, v7, [Ljava/lang/Object;

    const-string v5, "Complete"

    aput-object v5, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
