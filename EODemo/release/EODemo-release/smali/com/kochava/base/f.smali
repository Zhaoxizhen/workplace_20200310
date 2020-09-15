.class final Lcom/kochava/base/f;
.super Ljava/lang/Object;


# instance fields
.field private a:D

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kochava/base/f;->a:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/f;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kochava/base/f;->c:J

    return-void
.end method


# virtual methods
.method final declared-synchronized a()J
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/kochava/base/f;->a:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, -0x40e5c91d14e3bcd3L    # -1.0E-4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/kochava/base/f;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-wide v1

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/kochava/base/x;->d()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/kochava/base/f;->a:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/kochava/base/f;->c:J

    add-long/2addr v7, v5

    cmp-long v0, v3, v7

    if-ltz v0, :cond_2

    iput-wide v3, p0, Lcom/kochava/base/f;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/f;->b:Z

    :cond_2
    iget-boolean v0, p0, Lcom/kochava/base/f;->b:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/kochava/base/f;->c:J

    add-long/2addr v0, v5

    sub-long/2addr v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/f;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method final declared-synchronized a(D)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/kochava/base/f;->a:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
