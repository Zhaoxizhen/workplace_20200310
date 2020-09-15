.class final Lcom/appsflyer/AppsFlyerLib$b;
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
    name = "b"
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

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;)V
    .locals 0

    .line 2915
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2913
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$b;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2916
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$b;->ctxReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 2920
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$1600(Lcom/appsflyer/AppsFlyerLib;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2923
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->access$1702(Lcom/appsflyer/AppsFlyerLib;J)J

    .line 2924
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->ctxReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 2927
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Lcom/appsflyer/AppsFlyerLib;Z)Z

    const/4 v0, 0x0

    .line 2929
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v2, "AppsFlyerKey"

    invoke-static {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->access$1800(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2930
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$b;->ctxReference:Ljava/lang/ref/WeakReference;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2931
    :try_start_1
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v3

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$b;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/appsflyer/cache/CacheManager;->getCachedRequests(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/cache/RequestCacheData;

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resending request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2938
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2939
    invoke-virtual {v3}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    .line 2940
    invoke-static {v6, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 2942
    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/appsflyer/cache/RequestCacheData;->getRequestURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "&isCachedRequest=true&timeincache="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2943
    invoke-virtual {v3}, Lcom/appsflyer/cache/RequestCacheData;->getPostData()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/appsflyer/AppsFlyerLib$b;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2946
    invoke-virtual {v3}, Lcom/appsflyer/cache/RequestCacheData;->getCacheKey()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v3, v8

    move-object v6, v1

    move-object v8, v9

    move v9, v11

    .line 2942
    invoke-static/range {v3 .. v9}, Lcom/appsflyer/AppsFlyerLib;->access$800(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Failed to resend cached request"

    .line 2950
    invoke-static {v4, v3}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2953
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "failed to check cache. "

    .line 2955
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2957
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Lcom/appsflyer/AppsFlyerLib;Z)Z

    .line 2959
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$1900(Lcom/appsflyer/AppsFlyerLib;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 2960
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$1902(Lcom/appsflyer/AppsFlyerLib;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 2957
    :goto_2
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$b;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v2, v0}, Lcom/appsflyer/AppsFlyerLib;->access$1602(Lcom/appsflyer/AppsFlyerLib;Z)Z

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method
