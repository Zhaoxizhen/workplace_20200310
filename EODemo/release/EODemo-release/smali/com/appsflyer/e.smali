.class final Lcom/appsflyer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/e$a;,
        Lcom/appsflyer/e$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/e;
    .locals 1

    .line 22
    sget-object v0, Lcom/appsflyer/e$a;->INSTANCE:Lcom/appsflyer/e;

    return-object v0
.end method

.method private static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "connectivity"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const/16 v0, 0x15

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    .line 74
    invoke-static {p0}, Lcom/appsflyer/e;->getNetworkTypeL(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lcom/appsflyer/e;->getNetworkTypePreL(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkTypeL(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 6
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 34
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 35
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "unknown"

    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    .line 36
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 37
    invoke-static {v4}, Lcom/appsflyer/e;->isActive(Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 38
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    const-string p0, "WIFI"

    return-object p0

    .line 41
    :cond_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MOBILE"

    return-object p0

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static getNetworkTypePreL(Landroid/net/ConnectivityManager;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/net/ConnectivityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/e;->isActive(Landroid/net/NetworkInfo;)Z

    move-result v1

    const-string v2, "WIFI"

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/e;->isActive(Landroid/net/NetworkInfo;)Z

    move-result v1

    const-string v3, "MOBILE"

    if-eqz v1, :cond_1

    return-object v3

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 58
    invoke-static {p0}, Lcom/appsflyer/e;->isActive(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-object v2

    .line 61
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_3

    return-object v3

    :cond_3
    const-string p0, "unknown"

    return-object p0
.end method

.method private static isActive(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final getData(Landroid/content/Context;)Lcom/appsflyer/e$b;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/appsflyer/e;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "WIFI"

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "phone"

    .line 93
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 94
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :try_start_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x2

    .line 97
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    if-ne v3, p1, :cond_2

    const-string v0, "CDMA"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    const-string v1, "unknown"

    :goto_0
    move-object v2, v0

    :goto_1
    const-string v3, "Exception while collecting network info. "

    .line 103
    invoke-static {v3, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    :cond_2
    :goto_2
    new-instance p1, Lcom/appsflyer/e$b;

    invoke-direct {p1, v1, v0, v2}, Lcom/appsflyer/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
