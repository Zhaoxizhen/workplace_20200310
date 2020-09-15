.class final Lcom/appsflyer/AppsFlyerLib$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLib;->getDateListener(Ljava/util/Map;Ljava/lang/ref/WeakReference;)Lcom/appsflyer/q$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;

.field final synthetic val$attributionMap:Ljava/util/Map;

.field final synthetic val$contextRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1882
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$3;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$attributionMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$contextRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mergeDataToAttributionMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1899
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1900
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$attributionMap:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveToSharedPref(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1905
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1906
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1907
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$3;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "deeplinkAttribution"

    invoke-static {v0, v1, v2, p1}, Lcom/appsflyer/AppsFlyerLib;->access$400(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onGetOneLinkParameters(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1885
    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib$3;->mergeDataToAttributionMap(Ljava/util/Map;)V

    .line 1886
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$attributionMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/appsflyer/AppsFlyerLib$3;->saveToSharedPref(Ljava/util/Map;)V

    .line 1887
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLib$3;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$attributionMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->access$200(Lcom/appsflyer/AppsFlyerLib;Ljava/util/Map;)V

    return-void
.end method

.method public final onGetOneLinkParametersError(Ljava/lang/String;)V
    .locals 1

    .line 1892
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$300()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$3;->val$attributionMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/appsflyer/AppsFlyerLib$3;->saveToSharedPref(Ljava/util/Map;)V

    .line 1894
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$300()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onAttributionFailure(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
