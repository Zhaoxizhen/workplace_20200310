.class final Lcom/appsflyer/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private token:Ljava/lang/String;

.field private tokenTimestamp:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/h;->lock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lcom/appsflyer/h;->tokenTimestamp:J

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/appsflyer/h;->token:Ljava/lang/String;

    .line 16
    iput-wide p1, p0, Lcom/appsflyer/h;->tokenTimestamp:J

    .line 17
    iput-object p3, p0, Lcom/appsflyer/h;->token:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/h;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method private didExistingTokenAge(J)Z
    .locals 3

    .line 62
    iget-wide v0, p0, Lcom/appsflyer/h;->tokenTimestamp:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static getEmptyUninstallToken()Lcom/appsflyer/h;
    .locals 4

    .line 37
    new-instance v0, Lcom/appsflyer/h;

    const-wide/16 v1, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/appsflyer/h;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method private getTokenTimestamp()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/appsflyer/h;->tokenTimestamp:J

    return-wide v0
.end method

.method static parse(Ljava/lang/String;)Lcom/appsflyer/h;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    .line 27
    invoke-static {}, Lcom/appsflyer/h;->getEmptyUninstallToken()Lcom/appsflyer/h;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 30
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 31
    invoke-static {}, Lcom/appsflyer/h;->getEmptyUninstallToken()Lcom/appsflyer/h;

    move-result-object p0

    return-object p0

    .line 33
    :cond_1
    new-instance v0, Lcom/appsflyer/h;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/appsflyer/h;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method private testAndUpdate(JLjava/lang/String;)Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/appsflyer/h;->lock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/h;->token:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/h;->didExistingTokenAge(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iput-wide p1, p0, Lcom/appsflyer/h;->tokenTimestamp:J

    .line 54
    iput-object p3, p0, Lcom/appsflyer/h;->token:Ljava/lang/String;

    const/4 p1, 0x1

    .line 55
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 57
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method final getToken()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/appsflyer/h;->token:Ljava/lang/String;

    return-object v0
.end method

.method final testAndUpdate(Lcom/appsflyer/h;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 42
    invoke-direct {p1}, Lcom/appsflyer/h;->getTokenTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/appsflyer/h;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/h;->testAndUpdate(JLjava/lang/String;)Z

    move-result p1

    return p1

    .line 44
    :cond_0
    invoke-static {}, Lcom/appsflyer/h;->getEmptyUninstallToken()Lcom/appsflyer/h;

    move-result-object p1

    .line 45
    iget-wide v0, p1, Lcom/appsflyer/h;->tokenTimestamp:J

    invoke-virtual {p1}, Lcom/appsflyer/h;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/h;->testAndUpdate(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/appsflyer/h;->tokenTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/h;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
