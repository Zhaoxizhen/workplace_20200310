.class final Lcom/appsflyer/AppsFlyerLib$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field isLaunch:Z

.field private launchCounter:I

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "ZI)V"
        }
    .end annotation

    .line 2653
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$e;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2644
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$e;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2654
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$e;->urlString:Ljava/lang/String;

    .line 2655
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$e;->params:Ljava/util/Map;

    .line 2656
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$e;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2657
    iput-boolean p5, p0, Lcom/appsflyer/AppsFlyerLib$e;->isLaunch:Z

    .line 2658
    iput p6, p0, Lcom/appsflyer/AppsFlyerLib$e;->launchCounter:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZILcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    .line 2641
    invoke-direct/range {p0 .. p6}, Lcom/appsflyer/AppsFlyerLib$e;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZI)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2664
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->isLaunch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->launchCounter:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->this$0:Lcom/appsflyer/AppsFlyerLib;

    .line 2666
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$600(Lcom/appsflyer/AppsFlyerLib;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->params:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLib;->access$700(Lcom/appsflyer/AppsFlyerLib;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "rfr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 2672
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$e;->params:Ljava/util/Map;

    const-string v2, "appsflyerKey"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 2674
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->params:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2675
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$e;->urlString:Ljava/lang/String;

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$e;->ctxReference:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/appsflyer/AppsFlyerLib$e;->isLaunch:Z

    move-object v4, v0

    invoke-static/range {v2 .. v8}, Lcom/appsflyer/AppsFlyerLib;->access$800(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2684
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v1

    const-string v2, "Exception while sending request to server. "

    .line 2678
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_1

    .line 2679
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$e;->urlString:Ljava/lang/String;

    const-string v3, "&isCachedRequest=true&timeincache="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2680
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v2

    new-instance v3, Lcom/appsflyer/cache/RequestCacheData;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$e;->urlString:Ljava/lang/String;

    const-string v5, "4.8.5"

    invoke-direct {v3, v4, v0, v5}, Lcom/appsflyer/cache/RequestCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$e;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/appsflyer/cache/CacheManager;->cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V

    .line 2681
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
