.class final Lcom/kochava/base/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/kochava/base/c$a;->c:Landroid/content/Context;

    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x6

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "service_disconnected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "not_gathered"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "timed_out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_3
    const-string v0, "ok"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "developer_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v0, "missing_dependency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "feature_not_supported"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "service_unavailable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v8

    :pswitch_1
    return v1

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_4
    return v4

    :pswitch_5
    return v5

    :pswitch_6
    return v6

    :pswitch_7
    return v7

    :sswitch_data_0
    .sparse-switch
        -0x294f6a3a -> :sswitch_7
        -0x130dcb47 -> :sswitch_6
        -0xe14143c -> :sswitch_5
        -0x3cc62ad -> :sswitch_4
        0xddc -> :sswitch_3
        0x26c7246 -> :sswitch_2
        0x36dbdbc6 -> :sswitch_1
        0x7aa69f85 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;
    .locals 13
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/kochava/base/c$a;->a(Ljava/lang/String;)I

    move-result p1

    :cond_1
    const-string v0, "attempt_count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v10

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v2, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v11

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    const-string v6, ""

    if-nez p1, :cond_2

    const-string p2, "referrer"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "install_begin_time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v2

    int-to-long v2, v2

    const-string v4, "referrer_click_time"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result p0

    int-to-long v4, p0

    move v8, p1

    move-wide v6, v4

    const/4 v9, 0x0

    move-wide v4, v2

    :goto_1
    move-object v3, p2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    move-wide v4, v2

    move-wide v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    move v8, p1

    move-object v3, v6

    const/4 v9, 0x0

    move-wide v6, v4

    :goto_2
    new-instance p0, Lcom/kochava/base/InstallReferrer;

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/kochava/base/InstallReferrer;-><init>(Ljava/lang/String;JJIZID)V

    return-object p0
.end method

.method static a(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "not_gathered"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "missing_dependency"

    return-object p0

    :pswitch_2
    const-string p0, "timed_out"

    return-object p0

    :pswitch_3
    const-string p0, "developer_error"

    return-object p0

    :pswitch_4
    const-string p0, "feature_not_supported"

    return-object p0

    :pswitch_5
    const-string p0, "service_unavailable"

    return-object p0

    :pswitch_6
    const-string p0, "ok"

    return-object p0

    :pswitch_7
    const-string p0, "service_disconnected"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static a(Lcom/kochava/base/InstallReferrer;)Lorg/json/JSONObject;
    .locals 3
    .param p0    # Lcom/kochava/base/InstallReferrer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/kochava/base/InstallReferrer;->status:I

    invoke-static {v1}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-static {v2, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget v1, p0, Lcom/kochava/base/InstallReferrer;->attemptCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "attempt_count"

    invoke-static {v2, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-wide v1, p0, Lcom/kochava/base/InstallReferrer;->duration:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "duration"

    invoke-static {v2, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/kochava/base/InstallReferrer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/InstallReferrer;->referrer:Ljava/lang/String;

    const-string v2, "referrer"

    invoke-static {v2, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-wide v1, p0, Lcom/kochava/base/InstallReferrer;->installBeginTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "install_begin_time"

    invoke-static {v2, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-wide v1, p0, Lcom/kochava/base/InstallReferrer;->referrerClickTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "referrer_click_time"

    invoke-static {v1, p0, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kochava/base/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/kochava/base/c$a;->a()V

    return-void
.end method


# virtual methods
.method final b(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "IRH"

    const-string v2, "waitOnLock"

    invoke-static {v0, p1, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final run()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/c$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    move-result-object v0

    new-instance v1, Lcom/kochava/base/c$a$1;

    invoke-direct {v1, p0, v0}, Lcom/kochava/base/c$a$1;-><init>(Lcom/kochava/base/c$a;Lcom/android/installreferrer/api/InstallReferrerClient;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "IRH"

    const-string v3, "run"

    invoke-static {v1, v0, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/kochava/base/c$a;->a()V

    iget-object v0, p0, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_0
    return-void
.end method
