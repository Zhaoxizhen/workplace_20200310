.class final Lcom/appsflyer/AppsFlyerLib$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLib;->registerForAppEvents(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLib;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBecameBackground(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/a;->doOnPause(Landroid/content/Context;)V

    .line 316
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/appsflyer/g;->getInstance(Landroid/content/Context;)Lcom/appsflyer/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/g;->stopStartedTracking()V

    return-void
.end method

.method public final onBecameForeground(Landroid/app/Activity;)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result v0

    const/4 v1, 0x2

    if-le v1, v0, :cond_0

    .line 309
    invoke-static {p1}, Lcom/appsflyer/g;->getInstance(Landroid/content/Context;)Lcom/appsflyer/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/g;->startNewTracking()V

    .line 311
    :cond_0
    invoke-static {p1}, Lcom/appsflyer/a;->doOnResume(Landroid/content/Context;)V

    return-void
.end method
