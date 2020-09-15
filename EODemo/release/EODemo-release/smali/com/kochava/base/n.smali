.class final Lcom/kochava/base/n;
.super Lcom/kochava/base/j;


# instance fields
.field private final b:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/i;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    iput-object p2, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "run"

    const-string v3, "TIL"

    const/4 v4, 0x4

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "identity_link_all"

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v7, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v8, "identity_link"

    invoke-virtual {v7, v8}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v10, p0, Lcom/kochava/base/n;->b:Lorg/json/JSONObject;

    invoke-static {v7, v10, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    if-nez v9, :cond_1

    invoke-static {v1, v7}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v1, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    const-string v5, "Skip"

    aput-object v5, v1, v0

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {v1, v7, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v9

    const/16 v10, 0xfa

    if-le v9, v10, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-array v9, v6, [Ljava/lang/Object;

    const-string v10, "Max Size Exceeded. Resetting Saved List."

    aput-object v10, v9, v0

    invoke-static {v4, v3, v2, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v9, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v9, v9, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v9, v5, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v8, v7}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "initial_data"

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v7, "initial_needs_sent"

    invoke-virtual {v5, v7}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v1, :cond_4

    if-nez v5, :cond_5

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x7

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v1, v7}, Lcom/kochava/base/n;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5, v1}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/kochava/base/n;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v1}, Lcom/kochava/base/b;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/kochava/base/n;->i()V

    :cond_5
    invoke-virtual {p0}, Lcom/kochava/base/n;->d()V

    new-array v1, v6, [Ljava/lang/Object;

    const-string v5, "Complete"

    aput-object v5, v1, v0

    invoke-static {v4, v3, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
