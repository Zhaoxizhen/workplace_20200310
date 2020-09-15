.class public final Lcom/kochava/base/InstallReferrer;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_ATTEMPT_COUNT:Ljava/lang/String; = "attempt_count"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final KEY_DURATION:Ljava/lang/String; = "duration"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final STATUS_DEVELOPER_ERROR:I = 0x3

.field public static final STATUS_FEATURE_NOT_SUPPORTED:I = 0x2

.field public static final STATUS_MISSING_DEPENDENCY:I = 0x5

.field public static final STATUS_NOT_GATHERED:I = 0x6

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_SERVICE_DISCONNECTED:I = -0x1

.field public static final STATUS_SERVICE_UNAVAILABLE:I = 0x1

.field public static final STATUS_TIMED_OUT:I = 0x4


# instance fields
.field public final attemptCount:I

.field public final duration:D

.field public final installBeginTime:J

.field public final isLegacy:Z

.field public final referrer:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final referrerClickTime:J

.field public final status:I


# direct methods
.method constructor <init>(Ljava/lang/String;JJIZID)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kochava/base/InstallReferrer;->referrer:Ljava/lang/String;

    iput-wide p2, p0, Lcom/kochava/base/InstallReferrer;->installBeginTime:J

    iput-wide p4, p0, Lcom/kochava/base/InstallReferrer;->referrerClickTime:J

    iput p6, p0, Lcom/kochava/base/InstallReferrer;->status:I

    iput-boolean p7, p0, Lcom/kochava/base/InstallReferrer;->isLegacy:Z

    iput p8, p0, Lcom/kochava/base/InstallReferrer;->attemptCount:I

    iput-wide p9, p0, Lcom/kochava/base/InstallReferrer;->duration:D

    return-void
.end method


# virtual methods
.method public final isGathered()Z
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget v0, p0, Lcom/kochava/base/InstallReferrer;->status:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSupported()Z
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget v0, p0, Lcom/kochava/base/InstallReferrer;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isValid()Z
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/InstallReferrer;->referrer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/kochava/base/InstallReferrer;->installBeginTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/kochava/base/InstallReferrer;->referrerClickTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/kochava/base/InstallReferrer;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
