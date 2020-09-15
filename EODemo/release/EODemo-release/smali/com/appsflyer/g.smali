.class final Lcom/appsflyer/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SCHEDULING_HANDLER:Landroid/os/Handler;

.field private static final SENSOR_TYPES:Ljava/util/BitSet;

.field private static volatile sInstance:Lcom/appsflyer/g;


# instance fields
.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/f;",
            "Lcom/appsflyer/f;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mRegisterRunnable:Ljava/lang/Runnable;

.field private mScanning:Z

.field final mSchedulingHandler:Landroid/os/Handler;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/appsflyer/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mStarted:Z

.field final mStopStartedTrackingRunnable:Ljava/lang/Runnable;

.field final mUnregisterRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/appsflyer/g;->SCHEDULING_HANDLER:Landroid/os/Handler;

    .line 31
    sget-object v0, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 32
    sget-object v0, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 33
    sget-object v0, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Landroid/hardware/SensorManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/g;->mLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/appsflyer/g;->mSensorsData:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/appsflyer/g$1;

    invoke-direct {v0, p0}, Lcom/appsflyer/g$1;-><init>(Lcom/appsflyer/g;)V

    iput-object v0, p0, Lcom/appsflyer/g;->mUnregisterRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/appsflyer/g$2;

    invoke-direct {v0, p0}, Lcom/appsflyer/g$2;-><init>(Lcom/appsflyer/g;)V

    iput-object v0, p0, Lcom/appsflyer/g;->mRegisterRunnable:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/appsflyer/g$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/g$3;-><init>(Lcom/appsflyer/g;)V

    iput-object v0, p0, Lcom/appsflyer/g;->mStopStartedTrackingRunnable:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/appsflyer/g;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    iput-object p2, p0, Lcom/appsflyer/g;->mSchedulingHandler:Landroid/os/Handler;

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/appsflyer/g;
    .locals 1

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "sensor"

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    .line 89
    sget-object v0, Lcom/appsflyer/g;->SCHEDULING_HANDLER:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/appsflyer/g;->getInstance(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/g;

    move-result-object p0

    return-object p0
.end method

.method static getInstance(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/g;
    .locals 2

    .line 98
    sget-object v0, Lcom/appsflyer/g;->sInstance:Lcom/appsflyer/g;

    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/appsflyer/g;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/appsflyer/g;->sInstance:Lcom/appsflyer/g;

    if-nez v1, :cond_0

    .line 101
    invoke-static {p0, p1}, Lcom/appsflyer/g;->newInstance(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/g;

    move-result-object p0

    sput-object p0, Lcom/appsflyer/g;->sInstance:Lcom/appsflyer/g;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 105
    :cond_1
    :goto_0
    sget-object p0, Lcom/appsflyer/g;->sInstance:Lcom/appsflyer/g;

    return-object p0
.end method

.method private static isValid(I)Z
    .locals 1

    if-ltz p0, :cond_0

    .line 119
    sget-object v0, Lcom/appsflyer/g;->SENSOR_TYPES:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static newInstance(Landroid/hardware/SensorManager;Landroid/os/Handler;)Lcom/appsflyer/g;
    .locals 1

    .line 109
    new-instance v0, Lcom/appsflyer/g;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/g;-><init>(Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method final getData()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/appsflyer/g;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/appsflyer/g;->mScanning:Z

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/f;

    .line 193
    iget-object v3, p0, Lcom/appsflyer/g;->mSensorsData:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/appsflyer/f;->copyDataTo(Ljava/util/Map;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/g;->mSensorsData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 199
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/appsflyer/g;->mSensorsData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 200
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method final registerListeners()V
    .locals 5

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/g;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 148
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/appsflyer/g;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-static {v1}, Lcom/appsflyer/f;->newInstance(Landroid/hardware/Sensor;)Lcom/appsflyer/f;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v3, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 154
    iget-object v3, p0, Lcom/appsflyer/g;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/appsflyer/g;->mScanning:Z

    return-void
.end method

.method final startNewTracking()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/appsflyer/g;->mSchedulingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/g;->mStopStartedTrackingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    iget-object v0, p0, Lcom/appsflyer/g;->mSchedulingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/g;->mRegisterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final stopStartedTracking()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/appsflyer/g;->mSchedulingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appsflyer/g;->mStopStartedTrackingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final unregisterListeners()V
    .locals 3

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/appsflyer/g;->mListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/f;

    .line 172
    iget-object v2, p0, Lcom/appsflyer/g;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 173
    iget-object v2, p0, Lcom/appsflyer/g;->mSensorsData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/appsflyer/f;->moveDataTo(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/appsflyer/g;->mScanning:Z

    return-void
.end method
