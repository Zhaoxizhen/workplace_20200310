.class abstract Lcom/appsflyer/AppsFlyerLib$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field private appsFlyerDevKey:Ljava/lang/String;

.field ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 2730
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2720
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$a;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2728
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2731
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$a;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2732
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$a;->appsFlyerDevKey:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 2734
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/AFExecutor;->getScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$a;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 2736
    :cond_0
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$a;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method protected abstract attributionCallback(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract attributionCallbackFailure(Ljava/lang/String;I)V
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public run()V
    .locals 13

    const-string v0, "af_siteid"

    .line 2741
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$a;->appsFlyerDevKey:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 2744
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2747
    :try_start_0
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$a;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 2855
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    .line 2752
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2753
    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v7, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v7, v8}, Lcom/appsflyer/AppsFlyerLib;->access$1000(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v3, v7}, Lcom/appsflyer/AppsFlyerLib;->access$1100(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v7, ""

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    .line 2756
    :try_start_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$1200()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2757
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v9, "AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix."

    .line 2759
    new-array v10, v8, [Ljava/lang/Object;

    aput-object v6, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_3
    move-object v6, v7

    .line 2762
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2763
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib$a;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2764
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2765
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?devkey="

    .line 2766
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$a;->appsFlyerDevKey:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&device_id="

    .line 2767
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/appsflyer/s;->id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2769
    invoke-static {}, Lcom/appsflyer/u;->getInstance()Lcom/appsflyer/u;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10, v7}, Lcom/appsflyer/u;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Calling server for attribution url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/a;->logMessageMaskKey(Ljava/lang/String;)V

    .line 2772
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "GET"

    .line 2774
    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 2775
    invoke-virtual {v6, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "Connection"

    const-string v7, "close"

    .line 2776
    invoke-virtual {v6, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 2779
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 2780
    iget-object v7, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-virtual {v7, v6}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v7

    .line 2781
    invoke-static {}, Lcom/appsflyer/u;->getInstance()Lcom/appsflyer/u;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1, v7}, Lcom/appsflyer/u;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xc8

    if-ne v1, v10, :cond_9

    .line 2784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 2786
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v11, "appsflyerGetConversionDataTiming"

    sub-long/2addr v9, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v9, v4

    invoke-static {v1, v3, v11, v9, v10}, Lcom/appsflyer/AppsFlyerLib;->access$1300(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;J)V

    .line 2789
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Attribution data: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/a;->logMessageMaskKey(Ljava/lang/String;)V

    .line 2791
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    if-eqz v3, :cond_b

    .line 2792
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v1, v7}, Lcom/appsflyer/AppsFlyerLib;->access$1400(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "iscache"

    .line 2793
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 2796
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2798
    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v9, "appsflyerConversionDataCacheExpiration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v5, v3, v9, v10, v11}, Lcom/appsflyer/AppsFlyerLib;->access$1300(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;J)V

    .line 2800
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v9, "[Invite] Detected App-Invite via channel: "

    const-string v10, "af_channel"

    if-eqz v5, :cond_6

    .line 2801
    :try_start_4
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2803
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v5, "[CrossPromotion] App was installed via %s\'s Cross Promotion"

    .line 2806
    new-array v11, v8, [Ljava/lang/Object;

    .line 2808
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v11, v2

    .line 2806
    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2811
    :cond_6
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    :cond_7
    const-string v0, "is_first_launch"

    .line 2816
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2818
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v5, "attributionId"

    if-eqz v0, :cond_8

    .line 2820
    :try_start_5
    iget-object v7, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v7, v3, v5, v0}, Lcom/appsflyer/AppsFlyerLib;->access$400(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2823
    :cond_8
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v0, v3, v5, v7}, Lcom/appsflyer/AppsFlyerLib;->access$400(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "iscache="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " caching conversion data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2828
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$300()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2829
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-gt v0, v8, :cond_b

    .line 2832
    :try_start_6
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v0, v3}, Lcom/appsflyer/AppsFlyerLib;->access$1500(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1
    :try_end_6
    .catch Lcom/appsflyer/n; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    const-string v3, "Exception while trying to fetch attribution data. "

    .line 2834
    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2837
    :goto_3
    invoke-virtual {p0, v1}, Lcom/appsflyer/AppsFlyerLib$a;->attributionCallback(Ljava/util/Map;)V

    goto :goto_4

    .line 2843
    :cond_9
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$300()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Error connection to server: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib$a;->attributionCallbackFailure(Ljava/lang/String;I)V

    .line 2846
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "AttributionIdFetcher response code: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/a;->logMessageMaskKey(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2855
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v6, :cond_d

    .line 2857
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_7

    :catch_2
    move-exception v0

    .line 2850
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$300()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2851
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/appsflyer/AppsFlyerLib$a;->attributionCallbackFailure(Ljava/lang/String;I)V

    .line 2853
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2855
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v1, :cond_d

    .line 2857
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2860
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$a;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void

    .line 2855
    :goto_7
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$a;->currentRequestsCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    if-eqz v6, :cond_e

    .line 2857
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v0

    :cond_f
    :goto_8
    return-void
.end method
