.class public final Lcom/kochava/base/Tracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/base/Tracker$ConsentPartner;,
        Lcom/kochava/base/Tracker$IdentityLink;,
        Lcom/kochava/base/Tracker$Event;,
        Lcom/kochava/base/Tracker$Configuration;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_ACHIEVEMENT:I = 0x1

.field public static final EVENT_TYPE_ADD_TO_CART:I = 0x2

.field public static final EVENT_TYPE_ADD_TO_WISH_LIST:I = 0x3

.field public static final EVENT_TYPE_AD_CLICK:I = 0x11

.field public static final EVENT_TYPE_AD_VIEW:I = 0xc

.field public static final EVENT_TYPE_CHECKOUT_START:I = 0x4

.field public static final EVENT_TYPE_CONSENT_GRANTED:I = 0xf

.field public static final EVENT_TYPE_DEEP_LINK:I = 0x10

.field public static final EVENT_TYPE_LEVEL_COMPLETE:I = 0x5

.field public static final EVENT_TYPE_PURCHASE:I = 0x6

.field public static final EVENT_TYPE_PUSH_OPENED:I = 0xe

.field public static final EVENT_TYPE_PUSH_RECEIVED:I = 0xd

.field public static final EVENT_TYPE_RATING:I = 0x7

.field public static final EVENT_TYPE_REGISTRATION_COMPLETE:I = 0x8

.field public static final EVENT_TYPE_SEARCH:I = 0x9

.field public static final EVENT_TYPE_START_TRIAL:I = 0x12

.field public static final EVENT_TYPE_SUBSCRIBE:I = 0x13

.field public static final EVENT_TYPE_TUTORIAL_COMPLETE:I = 0xa

.field public static final EVENT_TYPE_VIEW:I = 0xb

.field public static final LOG_LEVEL_DEBUG:I = 0x4

.field public static final LOG_LEVEL_ERROR:I = 0x1

.field public static final LOG_LEVEL_INFO:I = 0x3

.field public static final LOG_LEVEL_NONE:I = 0x0

.field public static final LOG_LEVEL_TRACE:I = 0x5

.field public static final LOG_LEVEL_WARN:I = 0x2

.field private static final a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final b:Lcom/kochava/base/Tracker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private transient e:I

.field private transient f:Lcom/kochava/base/LogListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private transient g:I

.field private h:Lcom/kochava/base/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kochava/base/Tracker;->a:Ljava/lang/Object;

    new-instance v0, Lcom/kochava/base/Tracker;

    invoke-direct {v0}, Lcom/kochava/base/Tracker;-><init>()V

    sput-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/kochava/base/Tracker;->d:Ljava/lang/String;

    const/4 v1, 0x5

    iput v1, p0, Lcom/kochava/base/Tracker;->e:I

    iput-object v0, p0, Lcom/kochava/base/Tracker;->f:Lcom/kochava/base/LogListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/kochava/base/Tracker;->g:I

    iput-object v0, p0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidTracker 3.7.3 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v2, v2, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "AndroidTracker 3.7.3"

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static varargs a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            value = 0x3L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0xdL
            min = 0x3L
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->a:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_15

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->e:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->e:I

    if-ge v1, p0, :cond_1

    :cond_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->g:I

    if-eqz v1, :cond_15

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v1, v1, Lcom/kochava/base/Tracker;->g:I

    if-ge v1, p0, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KO/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TR/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0xd

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v1, p2, v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p3, :cond_b

    const/4 v5, 0x0

    :goto_0
    array-length v6, p3

    if-ge v5, v6, :cond_b

    aget-object v6, p3, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v6, 0x0

    :try_start_1
    aget-object v7, p3, v5

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_5

    aget-object v7, p3, v5

    invoke-static {v7}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    aget-object v8, p3, v5

    invoke-static {v8}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v7, :cond_3

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-nez v6, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_9

    aget-object v6, p3, v5

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_5
    aget-object v6, p3, v5

    instance-of v6, v6, Lorg/json/JSONObject;

    if-eqz v6, :cond_6

    aget-object v6, p3, v5

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    aget-object v6, p3, v5

    instance-of v6, v6, Lorg/json/JSONArray;

    if-eqz v6, :cond_7

    aget-object v6, p3, v5

    check-cast v6, Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_7
    aget-object v6, p3, v5

    instance-of v6, v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    aget-object v6, p3, v5

    check-cast v6, Ljava/lang/Throwable;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_8
    aget-object v6, p3, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to build message.\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_9
    :goto_1
    if-eqz v6, :cond_a

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p3

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_a

    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    if-nez p3, :cond_c

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget p3, p3, Lcom/kochava/base/Tracker;->g:I

    if-lez p3, :cond_d

    sget-object p3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget p3, p3, Lcom/kochava/base/Tracker;->g:I

    if-gt p0, p3, :cond_d

    sget-object p3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object p3, p3, Lcom/kochava/base/Tracker;->f:Lcom/kochava/base/LogListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_d

    :try_start_3
    sget-object p3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object p3, p3, Lcom/kochava/base/Tracker;->f:Lcom/kochava/base/LogListener;

    invoke-interface {p3, p0, p1, p2}, Lcom/kochava/base/LogListener;->onLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_d
    :try_start_4
    sget-object p3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget p3, p3, Lcom/kochava/base/Tracker;->e:I

    if-lez p3, :cond_14

    sget-object p3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget p3, p3, Lcom/kochava/base/Tracker;->e:I

    if-gt p0, p3, :cond_14

    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    :goto_3
    if-ge v4, p3, :cond_14

    aget-object v5, p2, v4

    if-eqz p0, :cond_13

    if-eq p0, v1, :cond_12

    if-eq p0, v2, :cond_11

    if-eq p0, v3, :cond_10

    const/4 v6, 0x4

    if-eq p0, v6, :cond_f

    const/4 v6, 0x5

    if-eq p0, v6, :cond_e

    goto :goto_4

    :cond_e
    invoke-static {p1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_11
    invoke-static {p1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_12
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_14
    monitor-exit v0

    return-void

    :cond_15
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static addPushToken(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "addPushToken"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "addPushToken"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0, v4}, Lcom/kochava/base/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "addPushToken"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static clearConsentShouldPrompt()V
    .locals 8

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "clearConsentS"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "clearConsentShouldPrompt"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->i()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "clearConsentS"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Invalid Configuration or Parameter"

    aput-object v5, v4, v7

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static configure(Lcom/kochava/base/Tracker$Configuration;)V
    .locals 21
    .param p0    # Lcom/kochava/base/Tracker$Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v2, :cond_0

    const-string v0, "TRA"

    const-string v2, "configure"

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Below API 14 is unsupported. Cannot Configure."

    aput-object v6, v5, v3

    invoke-static {v4, v0, v2, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v5, 0x0

    :try_start_1
    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v0, :cond_1

    const-string v0, "TRA"

    const-string v6, "configure"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Already Configured"

    aput-object v8, v7, v3

    invoke-static {v2, v0, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_1
    if-nez p0, :cond_2

    :try_start_3
    const-string v0, "TRA"

    const-string v6, "configure"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Null Configuration"

    aput-object v8, v7, v3

    invoke-static {v4, v0, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :cond_2
    :try_start_5
    sget-object v6, Lcom/kochava/base/Tracker;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->a(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/kochava/base/x;->a(Ljava/lang/Object;I)I

    move-result v7

    iput v7, v0, Lcom/kochava/base/Tracker;->e:I

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v0, v0, Lcom/kochava/base/Tracker;->e:I

    if-le v0, v8, :cond_3

    const-string v0, "TRA"

    const-string v7, "configure"

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "Log Level set higher than recommended for publishing"

    aput-object v10, v9, v3

    invoke-static {v2, v0, v7, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v0, "koov"

    invoke-virtual {v10, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v6, "log_level"

    const/4 v7, -0x1

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v7, v7, Lcom/kochava/base/Tracker;->e:I

    invoke-static {v6, v7}, Lcom/kochava/base/x;->a(Ljava/lang/Object;I)I

    move-result v6

    sget-object v7, Lcom/kochava/base/Tracker;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    sget-object v9, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget v9, v9, Lcom/kochava/base/Tracker;->e:I

    const/4 v11, 0x4

    if-eq v6, v9, :cond_5

    sget-object v9, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput v6, v9, Lcom/kochava/base/Tracker;->e:I

    const-string v9, "TRA"

    const-string v12, "configure"

    new-array v13, v4, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Override LogLevel "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v3

    invoke-static {v11, v9, v12, v13}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "url_init"

    const-string v9, "url_init"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_push_token_add"

    const-string v9, "url_push_token_add"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_push_token_remove"

    const-string v9, "url_push_token_remove"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_get_attribution"

    const-string v9, "url_get_attribution"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_install"

    const-string v9, "url_install"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_update"

    const-string v9, "url_update"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_identity_link"

    const-string v9, "url_identity_link"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_session_resume"

    const-string v9, "url_session_resume"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_session_pause"

    const-string v9, "url_session_pause"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_event"

    const-string v9, "url_event"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_location_update"

    const-string v9, "url_location_update"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_geo_event"

    const-string v9, "url_geo_event"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_internal_error"

    const-string v9, "url_internal_error"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v7, "url_smartlink"

    const-string v9, "url_smartlink"

    invoke-interface {v0, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "TRA"

    const-string v7, "configure"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v12, "Override URLs"

    aput-object v12, v9, v3

    aput-object v6, v9, v4

    invoke-static {v11, v0, v7, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "TRA"

    const-string v6, "configure"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Either App Guid or Partner Name required"

    aput-object v8, v7, v3

    invoke-static {v4, v0, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return-void

    :cond_7
    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v7, ""

    array-length v9, v0

    if-lt v9, v11, :cond_8

    aget-object v0, v0, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_0

    :cond_8
    move-object/from16 v20, v7

    :goto_0
    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    new-instance v7, Lcom/kochava/base/a;

    invoke-static {}, Lcom/kochava/base/Tracker;->a()Ljava/lang/String;

    move-result-object v11

    sget-object v9, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v12, v9, Lcom/kochava/base/Tracker;->d:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->e(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/ConsentStatusChangeListener;

    move-result-object v15

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->f(Lcom/kochava/base/Tracker$Configuration;)Lorg/json/JSONObject;

    move-result-object v17

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->g(Lcom/kochava/base/Tracker$Configuration;)Z

    move-result v18

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->h(Lcom/kochava/base/Tracker$Configuration;)Z

    move-result v19

    move-object v9, v7

    move-object/from16 v16, v6

    invoke-direct/range {v9 .. v20}, Lcom/kochava/base/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kochava/base/ConsentStatusChangeListener;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZLjava/lang/String;)V

    iput-object v7, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->i(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->i(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/kochava/base/a;->b(Z)V

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->j(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->j(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/kochava/base/a;->c(Z)V

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->k(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/Tracker$IdentityLink;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->k(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/Tracker$IdentityLink;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/kochava/base/a;->a(Lcom/kochava/base/Tracker$IdentityLink;)V

    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->l(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v0, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-static/range {p0 .. p0}, Lcom/kochava/base/Tracker$Configuration;->l(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionUpdateListener;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Lcom/kochava/base/a;->a(Lcom/kochava/base/AttributionUpdateListener;Z)V

    :cond_c
    const-string v0, "TRA"

    const-string v6, "configure"

    new-array v7, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Complete: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/base/Tracker;->getVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v0, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    const-string v6, "TRA"

    const-string v7, "configure"

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SDK ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "!SDK-VERSION-STRING!:com.kochava:tracker:release:3.7.3"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v6, v7, v8}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_c
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0

    :cond_d
    :goto_1
    const-string v0, "TRA"

    const-string v6, "configure"

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "Null Context"

    aput-object v8, v7, v3

    invoke-static {v4, v0, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    return-void

    :catchall_1
    move-exception v0

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catch_0
    move-exception v0

    :try_start_11
    const-string v6, "TRA"

    const-string v7, "configure"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v8, "Unknown"

    aput-object v8, v2, v3

    aput-object v0, v2, v4

    invoke-static {v4, v6, v7, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object v5, v0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    :goto_2
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    throw v0
.end method

.method public static ext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object p0, v1, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    sget-object p0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object p1, p0, Lcom/kochava/base/Tracker;->d:Ljava/lang/String;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getAttribution()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const-string v2, "attribution"

    invoke-virtual {v1, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "getAttributio"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getConsentDescription()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->c()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "getConsentDes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getConsentPartners()[Lcom/kochava/base/Tracker$ConsentPartner;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Lcom/kochava/base/Tracker$ConsentPartner;

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    new-instance v5, Lcom/kochava/base/Tracker$ConsentPartner;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/kochava/base/Tracker$ConsentPartner;-><init>(Lorg/json/JSONObject;)V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v4

    :cond_1
    const/4 v1, 0x2

    const-string v4, "TRA"

    const-string v5, "getConsentPar"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v3, v2

    invoke-static {v1, v4, v5, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v2, [Lcom/kochava/base/Tracker$ConsentPartner;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static getConsentPartnersJson()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->j()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "getConsentPar"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "[]"

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getConsentResponseTime()J
    .locals 7

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->f()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "getConsentRes"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const-string v2, "kochava_device_id"

    invoke-virtual {v1, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "getDeviceId"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstallReferrer()Lcom/kochava/base/InstallReferrer;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const-string v3, "install_referrer"

    invoke-virtual {v1, v3}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v3, v3, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const-string v4, "referrer"

    invoke-virtual {v3, v4}, Lcom/kochava/base/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    const-string v3, "TRA"

    const-string v4, "getInstallRef"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v5, v2

    invoke-static {v1, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kochava/base/Tracker;->a()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "getVersion"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Invalid Configuration or Parameter"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isConfigured()Z
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isConsentGranted()Z
    .locals 7

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->e()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "isConsentGran"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Invalid Configuration or Parameter"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isConsentGrantedOrNotRequired()Z
    .locals 1

    invoke-static {}, Lcom/kochava/base/Tracker;->isConsentRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kochava/base/Tracker;->isConsentGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isConsentRequired()Z
    .locals 8

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->d()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "isConsentRequ"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Invalid Configuration or Parameter"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isConsentRequirementsKnown()Z
    .locals 7

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->b()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "isConsentRequ"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Invalid Configuration or Parameter"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isConsentShouldPrompt()Z
    .locals 7

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->h()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "isConsentShou"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Invalid Configuration or Parameter"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSessionActive()Z
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->m()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "isSessionActi"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Invalid Configuration or Parameter"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isSleep()Z
    .locals 7
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1}, Lcom/kochava/base/a;->a()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x2

    const-string v2, "TRA"

    const-string v3, "isSleep"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Invalid Configuration or Parameter"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static processDeeplink(Ljava/lang/String;DLcom/kochava/base/DeeplinkProcessedListener;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/DeeplinkProcessedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "processDeepli"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "processDeeplink"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-wide/16 v1, 0x0

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/kochava/base/a;->a(Ljava/lang/String;JLcom/kochava/base/DeeplinkProcessedListener;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    const-string p1, "TRA"

    const-string p2, "processDeepli"

    new-array p3, v4, [Ljava/lang/Object;

    const-string v1, "Invalid Configuration or Parameter"

    aput-object v1, p3, v7

    invoke-static {p0, p1, p2, p3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static processDeeplink(Ljava/lang/String;Lcom/kochava/base/DeeplinkProcessedListener;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/DeeplinkProcessedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {p0, v0, v1, p1}, Lcom/kochava/base/Tracker;->processDeeplink(Ljava/lang/String;DLcom/kochava/base/DeeplinkProcessedListener;)V

    return-void
.end method

.method public static removePushToken(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "removePushTok"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "removePushToken"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0, v7}, Lcom/kochava/base/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "removePushTok"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendEvent(Lcom/kochava/base/Tracker$Event;)V
    .locals 8
    .param p0    # Lcom/kochava/base/Tracker$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "sendEvent"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "sendEvent(Event)"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kochava/base/Tracker$Event;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/kochava/base/Tracker$Event;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/kochava/base/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "sendEvent"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "sendEvent"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "sendEvent(String,String)"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2, v2}, Lcom/kochava/base/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "TRA"

    const-string v1, "sendEvent"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Invalid Configuration or Parameter"

    aput-object v3, v2, v7

    invoke-static {p0, p1, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendEventDeepLink(Ljava/lang/String;)V
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "sendEventDeep"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "sendEventDeepLink"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/kochava/base/Tracker$Event;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/kochava/base/Tracker$Event;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/kochava/base/Tracker$Event;->setUri(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object p0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    iget-object v2, p0, Lcom/kochava/base/Tracker$Event;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/kochava/base/Tracker$Event;->a:Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kochava/base/Tracker$Event;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/kochava/base/Tracker$Event;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/kochava/base/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "sendEventDeep"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setAppLimitAdTracking(Z)V
    .locals 8
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setAppLimitAd"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "setAppLimitAdTracking"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0}, Lcom/kochava/base/a;->c(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "setAppLimitAd"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setConsentGranted(Z)V
    .locals 8

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setConsentGra"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "setConsentGranted"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0}, Lcom/kochava/base/a;->e(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "setConsentGra"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setConsentRequired(Z)V
    .locals 6

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0}, Lcom/kochava/base/a;->d(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "setConsentReq"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Invalid Configuration or Parameter"

    aput-object v5, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setDeepLinkListener(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V
    .locals 8
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            max = 0x2710L
            min = 0xfaL
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setDeepLinkLi"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "setDeepLinkListener"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0, p1, p2}, Lcom/kochava/base/a;->a(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string p1, "TRA"

    const-string p2, "setDeepLinkLi"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "Invalid Configuration or Parameter"

    aput-object v2, v1, v7

    invoke-static {p0, p1, p2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setDeepLinkListener(Landroid/net/Uri;Lcom/kochava/base/DeepLinkListener;)V
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xfa0

    invoke-static {p0, v0, p1}, Lcom/kochava/base/Tracker;->setDeepLinkListener(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V

    return-void
.end method

.method public static setIdentityLink(Lcom/kochava/base/Tracker$IdentityLink;)V
    .locals 8
    .param p0    # Lcom/kochava/base/Tracker$IdentityLink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setIdentityLi"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "setIdentityLink"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0}, Lcom/kochava/base/a;->a(Lcom/kochava/base/Tracker$IdentityLink;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "setIdentityLi"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static setLogListener(Lcom/kochava/base/LogListener;I)V
    .locals 3
    .param p0    # Lcom/kochava/base/LogListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kochava/base/Tracker;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object p0, v2, Lcom/kochava/base/Tracker;->f:Lcom/kochava/base/LogListener;

    if-lez p1, :cond_0

    const/4 p0, 0x5

    if-gt p1, p0, :cond_0

    sget-object p0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput p1, p0, Lcom/kochava/base/Tracker;->g:I

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static setSleep(Z)V
    .locals 8
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x3

    :try_start_0
    const-string v2, "TRA"

    const-string v3, "setSleep"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "setSleep"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v2, v3, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0}, Lcom/kochava/base/a;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    const-string v1, "TRA"

    const-string v2, "setSleep"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "Invalid Configuration or Parameter"

    aput-object v4, v3, v7

    invoke-static {p0, v1, v2, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static unConfigure(Z)V
    .locals 9
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "TRA"

    const-string v6, "unConfigure"

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "UnConfigure Tracker"

    aput-object v8, v7, v2

    invoke-static {v1, v5, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object v4, v1, Lcom/kochava/base/Tracker;->c:Ljava/lang/String;

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object v4, v1, Lcom/kochava/base/Tracker;->d:Ljava/lang/String;

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iget-object v1, v1, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;

    invoke-virtual {v1, p0}, Lcom/kochava/base/a;->a(Z)V

    :cond_0
    sget-object p0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object v4, p0, Lcom/kochava/base/Tracker;->h:Lcom/kochava/base/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "TRA"

    const-string v5, "unConfigure"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v3, v1, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lcom/kochava/base/Tracker;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    const/4 v1, 0x3

    iput v1, v0, Lcom/kochava/base/Tracker;->e:I

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput-object v4, v0, Lcom/kochava/base/Tracker;->f:Lcom/kochava/base/LogListener;

    sget-object v0, Lcom/kochava/base/Tracker;->b:Lcom/kochava/base/Tracker;

    iput v2, v0, Lcom/kochava/base/Tracker;->g:I

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
