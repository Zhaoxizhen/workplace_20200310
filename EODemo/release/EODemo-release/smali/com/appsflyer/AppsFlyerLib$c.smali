.class final Lcom/appsflyer/AppsFlyerLib$c;
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
    name = "c"
.end annotation


# instance fields
.field private appsFlyerKey:Ljava/lang/String;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isBackgroundReferrerLaunch:Z

.field private isNewAPI:Z

.field private referrer:Ljava/lang/String;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/ExecutorService;",
            "Z)V"
        }
    .end annotation

    .line 2623
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$c;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2624
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$c;->context:Ljava/lang/ref/WeakReference;

    .line 2625
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$c;->appsFlyerKey:Ljava/lang/String;

    .line 2626
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$c;->eventName:Ljava/lang/String;

    .line 2627
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$c;->eventValue:Ljava/lang/String;

    .line 2628
    iput-object p6, p0, Lcom/appsflyer/AppsFlyerLib$c;->referrer:Ljava/lang/String;

    .line 2629
    iput-boolean p7, p0, Lcom/appsflyer/AppsFlyerLib$c;->isNewAPI:Z

    .line 2630
    iput-object p8, p0, Lcom/appsflyer/AppsFlyerLib$c;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2631
    iput-boolean p9, p0, Lcom/appsflyer/AppsFlyerLib$c;->isBackgroundReferrerLaunch:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;ZLcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0

    .line 2605
    invoke-direct/range {p0 .. p9}, Lcom/appsflyer/AppsFlyerLib$c;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Z)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 2635
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$c;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$c;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$c;->appsFlyerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$c;->eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$c;->eventValue:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$c;->referrer:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/appsflyer/AppsFlyerLib$c;->isNewAPI:Z

    iget-boolean v7, p0, Lcom/appsflyer/AppsFlyerLib$c;->isBackgroundReferrerLaunch:Z

    invoke-static/range {v0 .. v7}, Lcom/appsflyer/AppsFlyerLib;->access$500(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
