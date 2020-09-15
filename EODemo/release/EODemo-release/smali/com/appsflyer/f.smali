.class final Lcom/appsflyer/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private mDistance:D

.field private final mHash:I

.field private mLastTimeNano:J

.field private final mName:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mTimesMillis:[J

.field private final mType:I

.field private final mValues:[[F

.field private final mVendor:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    new-array v1, v0, [[F

    iput-object v1, p0, Lcom/appsflyer/f;->mValues:[[F

    .line 32
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    .line 38
    iput p1, p0, Lcom/appsflyer/f;->mType:I

    .line 39
    invoke-static {p2}, Lcom/appsflyer/f;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appsflyer/f;->mName:Ljava/lang/String;

    .line 40
    invoke-static {p3}, Lcom/appsflyer/f;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/appsflyer/f;->mVendor:Ljava/lang/String;

    .line 41
    iget-object p2, p0, Lcom/appsflyer/f;->mName:Ljava/lang/String;

    iget-object p3, p0, Lcom/appsflyer/f;->mVendor:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/appsflyer/f;->calculateHash(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/appsflyer/f;->mHash:I

    return-void
.end method

.method private static calculateHash(ILjava/lang/String;Ljava/lang/String;)I
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    add-int/lit8 p0, p0, 0x1f

    mul-int/lit8 p0, p0, 0x1f

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x1f

    .line 53
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static distanceBetween([F[F)D
    .locals 8
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 73
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static isNotNull(Landroid/hardware/Sensor;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSameSensor(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 139
    iget v0, p0, Lcom/appsflyer/f;->mType:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/f;->mName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/appsflyer/f;->mVendor:Ljava/lang/String;

    .line 141
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/appsflyer/f;
    .locals 1

    .line 62
    new-instance v0, Lcom/appsflyer/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsflyer/f;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static newInstance(Landroid/hardware/Sensor;)Lcom/appsflyer/f;
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/appsflyer/f;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/appsflyer/f;

    move-result-object p0

    return-object p0
.end method

.method private pushDataTo(Ljava/util/Map;Z)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/appsflyer/f;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/appsflyer/f;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/appsflyer/f;->clearData()V

    return-void

    .line 133
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/appsflyer/f;->getData()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static toList([F)Ljava/util/List;
    .locals 4
    .param p0    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 86
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateValues(J[F)V
    .locals 10
    .param p3    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/appsflyer/f;->mValues:[[F

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-nez v4, :cond_0

    .line 149
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    aput-object p1, v2, v3

    .line 150
    iget-object p1, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    aput-wide v0, p1, v3

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 152
    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 154
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcom/appsflyer/f;->mValues:[[F

    aput-object p1, p2, v3

    .line 156
    iget-object p2, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    aput-wide v0, p2, v3

    .line 157
    invoke-static {v4, p1}, Lcom/appsflyer/f;->distanceBetween([F[F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/appsflyer/f;->mDistance:D

    return-void

    :cond_1
    const-wide/32 v5, 0x2faf080

    .line 161
    iget-wide v7, p0, Lcom/appsflyer/f;->mLastTimeNano:J

    sub-long v7, p1, v7

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    .line 162
    iput-wide p1, p0, Lcom/appsflyer/f;->mLastTimeNano:J

    .line 163
    invoke-static {v2, p3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    aput-wide v0, p1, v3

    return-void

    .line 167
    :cond_2
    invoke-static {v4, p3}, Lcom/appsflyer/f;->distanceBetween([F[F)D

    move-result-wide p1

    .line 168
    iget-wide v4, p0, Lcom/appsflyer/f;->mDistance:D

    cmpl-double v2, p1, v4

    if-lez v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/appsflyer/f;->mValues:[[F

    array-length v4, p3

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p3

    aput-object p3, v2, v3

    .line 170
    iget-object p3, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    aput-wide v0, p3, v3

    .line 171
    iput-wide p1, p0, Lcom/appsflyer/f;->mDistance:D

    :cond_3
    return-void
.end method


# virtual methods
.method final clearData()V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/appsflyer/f;->mValues:[[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 209
    iget-object v3, p0, Lcom/appsflyer/f;->mValues:[[F

    const/4 v4, 0x0

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    array-length v0, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 212
    iget-object v4, p0, Lcom/appsflyer/f;->mTimesMillis:[J

    aput-wide v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    .line 214
    iput-wide v0, p0, Lcom/appsflyer/f;->mDistance:D

    .line 215
    iput-wide v2, p0, Lcom/appsflyer/f;->mLastTimeNano:J

    return-void
.end method

.method public final copyDataTo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/f;->pushDataTo(Ljava/util/Map;Z)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 241
    :cond_0
    instance-of v0, p1, Lcom/appsflyer/f;

    if-eqz v0, :cond_1

    .line 242
    check-cast p1, Lcom/appsflyer/f;

    .line 243
    iget v0, p1, Lcom/appsflyer/f;->mType:I

    iget-object v1, p1, Lcom/appsflyer/f;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/f;->mVendor:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/f;->isSameSensor(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final getData()Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 189
    iget v1, p0, Lcom/appsflyer/f;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/appsflyer/f;->mName:Ljava/lang/String;

    const-string v2, "sN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p0, Lcom/appsflyer/f;->mVendor:Ljava/lang/String;

    const-string v2, "sV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/appsflyer/f;->mValues:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/appsflyer/f;->toList([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/f;->mValues:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 198
    invoke-static {v1}, Lcom/appsflyer/f;->toList([F)Ljava/util/List;

    move-result-object v1

    const-string v2, "sVE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method final hasData()Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/appsflyer/f;->mValues:[[F

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/appsflyer/f;->mHash:I

    return v0
.end method

.method final moveDataTo(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/appsflyer/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/f;->pushDataTo(Ljava/util/Map;Z)V

    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method final onSensorChanged(ILjava/lang/String;Ljava/lang/String;J[F)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [F
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/f;->isSameSensor(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-direct {p0, p4, p5, p6}, Lcom/appsflyer/f;->updateValues(J[F)V

    :cond_0
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-static {v0}, Lcom/appsflyer/f;->isNotNull(Landroid/hardware/Sensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 95
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    move-object v1, p0

    .line 94
    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/f;->onSensorChanged(ILjava/lang/String;Ljava/lang/String;J[F)V

    :cond_0
    return-void
.end method
