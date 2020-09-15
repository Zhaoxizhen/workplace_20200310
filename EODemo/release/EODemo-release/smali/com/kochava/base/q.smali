.class final Lcom/kochava/base/q;
.super Lcom/kochava/base/j;

# interfaces
.implements Lcom/kochava/base/location/LocationTrackerListener;
.implements Lcom/kochava/base/s;


# direct methods
.method constructor <init>(Lcom/kochava/base/i;)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kochava/base/j;-><init>(Lcom/kochava/base/i;Z)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/kochava/base/location/LocationTracker;->getInstance()Lcom/kochava/base/location/LocationTrackerApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/kochava/base/location/LocationTrackerApi;->stop(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Location module not found"

    aput-object v2, v0, v1

    const-string v1, "LTS"

    const-string v2, "stop"

    invoke-static {p1, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/kochava/base/location/LocationTracker;->getInstance()Lcom/kochava/base/location/LocationTrackerApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/kochava/base/location/LocationTrackerApi;->applySettings(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Location module not found"

    aput-object v2, v0, v1

    const-string v1, "LTS"

    const-string v2, "applySettings"

    invoke-static {p1, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final locationUpdate(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "location"

    invoke-static {v1, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1, v0}, Lcom/kochava/base/q;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/kochava/base/q;->a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/kochava/base/q;->a(Lorg/json/JSONObject;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public final varargs log(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0xdL
            min = 0x3L
        .end annotation
    .end param
    .param p4    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1, p2, p3, p4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final o()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/kochava/base/location/LocationTracker;->getInstance()Lcom/kochava/base/location/LocationTrackerApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/kochava/base/location/LocationTrackerApi;->onActivityResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Location module not found"

    aput-object v3, v1, v2

    const-string v2, "LTS"

    const-string v3, "onActivityRes"

    invoke-static {v0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/kochava/base/location/LocationTracker;->getInstance()Lcom/kochava/base/location/LocationTrackerApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/kochava/base/location/LocationTrackerApi;->start(Landroid/content/Context;Lcom/kochava/base/location/LocationTrackerListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Location module not found"

    aput-object v3, v1, v2

    const-string v2, "LTS"

    const-string v3, "run"

    invoke-static {v0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/kochava/base/q;->d()V

    return-void
.end method

.method public final sendGeoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "event_data"

    invoke-static {v1, p2, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p2, "event_name"

    invoke-static {p2, p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1, v0}, Lcom/kochava/base/q;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p2, p0, Lcom/kochava/base/q;->a:Lcom/kochava/base/i;

    iget-object p2, p2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p2, p1}, Lcom/kochava/base/d;->b(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/kochava/base/q;->j()V

    return-void
.end method
