.class final Lcom/appsflyer/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/d$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static anyGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 93
    invoke-static {p0, v3}, Lcom/appsflyer/a;->isPermissionAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private chooseBestLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    return-object p2

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    return-object p1

    :cond_3
    return-object p2
.end method

.method public static getInstance()Lcom/appsflyer/d;
    .locals 1

    .line 18
    sget-object v0, Lcom/appsflyer/d$a;->INSTANCE:Lcom/appsflyer/d;

    return-object v0
.end method

.method private getLastKnownLocation(Landroid/content/Context;Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v0, v3

    const-string v4, "network"

    invoke-direct {p0, p1, p2, v4, v0}, Lcom/appsflyer/d;->getLastKnownLocationIfGranted(Landroid/content/Context;Landroid/location/LocationManager;Ljava/lang/String;[Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 46
    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v2

    const-string v1, "gps"

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/appsflyer/d;->getLastKnownLocationIfGranted(Landroid/content/Context;Landroid/location/LocationManager;Ljava/lang/String;[Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/appsflyer/d;->chooseBestLocation(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object p1

    return-object p1
.end method

.method private varargs getLastKnownLocationIfGranted(Landroid/content/Context;Landroid/location/LocationManager;Ljava/lang/String;[Ljava/lang/String;)Landroid/location/Location;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 85
    invoke-static {p1, p4}, Lcom/appsflyer/d;->anyGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p2, p3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final getData(Landroid/content/Context;)Landroid/location/Location;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "location"

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/appsflyer/d;->getLastKnownLocation(Landroid/content/Context;Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method
