.class final Lcom/kochava/base/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/kochava/base/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/kochava/base/g;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/h;->d:Z

    new-instance v1, Lcom/kochava/base/h$1;

    invoke-direct {v1, p0}, Lcom/kochava/base/h$1;-><init>(Lcom/kochava/base/h;)V

    iput-object v1, p0, Lcom/kochava/base/h;->e:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/kochava/base/h;->b:Lcom/kochava/base/g;

    iput-object p2, p0, Lcom/kochava/base/h;->a:Landroid/os/Handler;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "SessionMonito"

    const-string v2, "SMO"

    const/4 v3, 0x5

    invoke-static {v3, v2, v1, p2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of p2, p1, Landroid/app/Application;

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Application;

    invoke-virtual {p2, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Invalid Application Context"

    aput-object v5, v4, v0

    invoke-static {p2, v2, v1, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {p1}, Lcom/kochava/base/x;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/kochava/base/h;->d:Z

    invoke-interface {p3, v3}, Lcom/kochava/base/g;->f(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kochava/base/h;)Lcom/kochava/base/g;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/h;->b:Lcom/kochava/base/g;

    return-object p0
.end method

.method static synthetic a(Lcom/kochava/base/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/kochava/base/h;->d:Z

    return p1
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/kochava/base/h;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kochava/base/h;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/kochava/base/h;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "goActive"

    aput-object v4, v2, v3

    const-string v3, "SMO"

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/kochava/base/h;->d:Z

    iget-object v0, p0, Lcom/kochava/base/h;->b:Lcom/kochava/base/g;

    invoke-interface {v0, v1}, Lcom/kochava/base/g;->f(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/h;->d:Z

    return v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x5

    const-string v0, "SMO"

    const-string v1, "onActivityCre"

    invoke-static {p2, v0, v1, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onActivityDes"

    invoke-static {v0, v1, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const-string v2, "SMO"

    const-string v3, "onActivityPau"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const-string v2, "SMO"

    const-string v3, "onActivityRes"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-direct {p0}, Lcom/kochava/base/h;->b()V

    iget-object p1, p0, Lcom/kochava/base/h;->b:Lcom/kochava/base/g;

    invoke-interface {p1}, Lcom/kochava/base/g;->k()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x5

    const-string v0, "SMO"

    const-string v1, "onActivitySav"

    invoke-static {p2, v0, v1, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/kochava/base/h;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "SMO"

    const-string v3, "onActivitySta"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/kochava/base/h;->b()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/kochava/base/h;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onActivitySto"

    const-string v4, "SMO"

    const/4 v5, 0x5

    invoke-static {v5, v4, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/kochava/base/h;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "?GoInactive?"

    aput-object v0, p1, v3

    invoke-static {v5, v4, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kochava/base/h;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/h;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kochava/base/h;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/h;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kochava/base/h;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x5

    const-string v1, "SMO"

    const-string v2, "onConfigurati"

    invoke-static {v0, v1, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x5

    const-string v2, "SMO"

    const-string v3, "onLowMemory"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/kochava/base/h;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onTrimMemory"

    const-string v4, "SMO"

    const/4 v5, 0x5

    invoke-static {v5, v4, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcom/kochava/base/h;->d:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "GoInactive"

    aput-object v0, p1, v3

    invoke-static {v5, v4, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kochava/base/h;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/h;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v3, p0, Lcom/kochava/base/h;->d:Z

    iget-object p1, p0, Lcom/kochava/base/h;->b:Lcom/kochava/base/g;

    invoke-interface {p1, v3}, Lcom/kochava/base/g;->f(Z)V

    :cond_0
    return-void
.end method
