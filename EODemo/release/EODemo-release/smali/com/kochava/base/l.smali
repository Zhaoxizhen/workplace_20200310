.class final Lcom/kochava/base/l;
.super Lcom/kochava/base/j;


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kochava/base/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    iput p2, p0, Lcom/kochava/base/l;->b:I

    iput-object p3, p0, Lcom/kochava/base/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kochava/base/l;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/kochava/base/l;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/kochava/base/l;->f:Ljava/lang/String;

    return-void
.end method

.method private b(Lorg/json/JSONObject;)Z
    .locals 24
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/kochava/base/l;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eq v1, v2, :cond_0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    return v3

    :cond_0
    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "session_minimum"

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-static {v1, v5}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    iget-object v5, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v6, "session_window"

    invoke-virtual {v5, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x258

    invoke-static {v5, v6}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v5

    if-eqz v5, :cond_8

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/l;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v7, v6

    iget-object v6, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v6, v6, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v10, "session_resume_time"

    invoke-virtual {v6, v10}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v11, 0x0

    invoke-static {v6, v11}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v6

    iget-object v12, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v12, v12, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v13, "session_pause_sent_this_window"

    invoke-virtual {v12, v13}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v12

    iget-object v14, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v14, v14, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v15, "session_pause_ever_sent"

    invoke-virtual {v14, v15}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v11}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v14

    iget v8, v0, Lcom/kochava/base/l;->b:I

    const-string v9, "session_window_uptime"

    const-string v3, "session_pause"

    const-string v11, "session_state_active_count"

    const-string v2, "processSessio"

    move/from16 v18, v1

    const-string v1, "TBE"

    move/from16 v19, v12

    const/4 v12, 0x2

    if-ne v8, v12, :cond_4

    iget-object v8, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v8, v11}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x0

    invoke-static {v8, v12}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v8

    iget-object v14, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v14, v14, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v12, 0x1

    add-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v11, v8}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/2addr v6, v5

    if-lt v7, v6, :cond_3

    new-array v5, v12, [Ljava/lang/Object;

    const-string v6, "Resume: Sufficient Time"

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const/4 v6, 0x4

    invoke-static {v6, v1, v2, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v5, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    new-array v14, v12, [Ljava/lang/Object;

    const-string v12, "Resume: Queuing Cached Pause"

    aput-object v12, v14, v8

    invoke-static {v6, v1, v2, v14}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v5}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v15, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    const/4 v8, 0x0

    return v8

    :cond_4
    const/4 v8, 0x0

    iget-object v10, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v10, v10, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v10, v9}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v10

    move-object v8, v11

    int-to-long v10, v10

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/l;->c()J

    move-result-wide v20

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/l;->a()J

    move-result-wide v22

    sub-long v20, v20, v22

    const-wide/16 v16, 0x3e8

    div-long v20, v20, v16

    add-long v10, v10, v20

    long-to-int v11, v10

    iget-object v10, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v10, v10, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v14, :cond_7

    if-nez v19, :cond_5

    move/from16 v9, v18

    if-ge v11, v9, :cond_7

    add-int/2addr v6, v5

    if-lt v7, v6, :cond_5

    goto :goto_1

    :cond_5
    if-nez v19, :cond_6

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "Pause: Updating"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x4

    invoke-static {v7, v1, v2, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    move-object/from16 v2, p1

    invoke-virtual {v1, v3, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "Pause: Not Updating"

    aput-object v4, v3, v6

    invoke-static {v7, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v6

    :cond_7
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v9, v5, [Ljava/lang/Object;

    const-string v5, "Pause: Sending"

    aput-object v5, v9, v6

    invoke-static {v7, v1, v2, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v3}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v15, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v13, v4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const/4 v1, 0x1

    return v1

    :cond_8
    :goto_3
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "run"

    const-string v4, "TBE"

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1}, Lcom/kochava/base/d;->e()I

    move-result v1

    const/4 v5, 0x1

    const/16 v6, 0x1f4

    if-lt v1, v6, :cond_0

    const/4 v1, 0x2

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database Full. Dropping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kochava/base/l;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v1, v4, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v6, "eventname_blacklist"

    invoke-virtual {v1, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object v6, p0, Lcom/kochava/base/l;->c:Ljava/lang/String;

    if-eqz v6, :cond_1

    invoke-static {v1, v6}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/kochava/base/l;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " blacklisted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    invoke-static {v1, v4, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v6, p0, Lcom/kochava/base/l;->c:Ljava/lang/String;

    if-eqz v6, :cond_2

    const-string v7, "event_name"

    invoke-static {v7, v6, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_2
    iget-object v6, p0, Lcom/kochava/base/l;->d:Ljava/lang/String;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/kochava/base/l;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    :goto_0
    const-string v7, "event_data"

    if-eqz v6, :cond_5

    iget-object v8, p0, Lcom/kochava/base/l;->c:Ljava/lang/String;

    const-string v9, "Consent Granted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-boolean v8, v8, Lcom/kochava/base/i;->m:Z

    if-eqz v8, :cond_6

    const-string v8, "content_id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v9, v9, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v9}, Lcom/kochava/base/b;->g()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_4
    iget-object v8, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v8}, Lcom/kochava/base/b;->e()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "date"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v9, v9, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v9}, Lcom/kochava/base/b;->f()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/kochava/base/l;->d:Ljava/lang/String;

    :cond_6
    :goto_1
    invoke-static {v7, v6, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_7
    iget-object v6, p0, Lcom/kochava/base/l;->e:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/kochava/base/l;->f:Ljava/lang/String;

    if-eqz v6, :cond_8

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, p0, Lcom/kochava/base/l;->e:Ljava/lang/String;

    const-string v8, "purchaseData"

    invoke-static {v8, v7, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v7, p0, Lcom/kochava/base/l;->f:Ljava/lang/String;

    const-string v8, "dataSignature"

    invoke-static {v8, v7, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "receipt"

    invoke-static {v7, v6, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_8
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget v7, p0, Lcom/kochava/base/l;->b:I

    invoke-virtual {p0, v7, v6, v1}, Lcom/kochava/base/l;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, v6}, Lcom/kochava/base/l;->b(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/kochava/base/l;->a:Lcom/kochava/base/i;

    iget-object v7, v7, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v7, v6}, Lcom/kochava/base/d;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_9
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Not sending deferred/dropped event."

    aput-object v7, v6, v0

    invoke-static {v2, v4, v3, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/kochava/base/l;->j()V

    :cond_a
    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "Complete"

    aput-object v5, v1, v0

    invoke-static {v2, v4, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
