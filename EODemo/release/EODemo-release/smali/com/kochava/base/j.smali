.class abstract Lcom/kochava/base/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field final a:Lcom/kochava/base/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Z

.field private final d:J

.field private final e:Z

.field private final f:J

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kochava/base/j;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/kochava/base/i;Z)V
    .locals 1
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/kochava/base/j;->g:I

    iput-boolean v0, p0, Lcom/kochava/base/j;->h:Z

    iput-boolean v0, p0, Lcom/kochava/base/j;->i:Z

    iput-object p1, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iput-boolean p2, p0, Lcom/kochava/base/j;->c:Z

    iget-object p2, p1, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {p2}, Lcom/kochava/base/b;->m()Z

    move-result p2

    iput-boolean p2, p0, Lcom/kochava/base/j;->e:Z

    iget-wide p1, p1, Lcom/kochava/base/i;->s:J

    iput-wide p1, p0, Lcom/kochava/base/j;->d:J

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kochava/base/j;->f:J

    return-void
.end method

.method static a(Lorg/json/JSONObject;)I
    .locals 14
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x6

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "session"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "install"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "push_token_add"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v2, "geo_event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const-string v2, "get_attribution"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "location_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_7
    const-string v2, "init"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v2, "identityLink"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v2, "update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v2, "push_token_remove"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v13

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    return v5

    :pswitch_2
    return v6

    :pswitch_3
    return v7

    :pswitch_4
    return v8

    :pswitch_5
    return v13

    :pswitch_6
    return v9

    :pswitch_7
    return v10

    :pswitch_8
    const-string v0, "data"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "state"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v3

    :pswitch_9
    return v11

    :pswitch_a
    return v12

    :sswitch_data_0
    .sparse-switch
        -0x49e3a971 -> :sswitch_a
        -0x31ffc737 -> :sswitch_9
        -0x735fa28 -> :sswitch_8
        0x316510 -> :sswitch_7
        0x4547093 -> :sswitch_6
        0x5c6729a -> :sswitch_5
        0x1f9b2d16 -> :sswitch_4
        0x3b15e42c -> :sswitch_3
        0x7454ce76 -> :sswitch_2
        0x74ae259b -> :sswitch_1
        0x76508296 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/kochava/base/j;->b(Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kochava/base/j;->b(Lorg/json/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Payload Type"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/kochava/base/x;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    rem-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%03d"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(ILorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "action"

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "geo_event"

    goto :goto_0

    :pswitch_1
    const-string p0, "location_update"

    goto :goto_0

    :pswitch_2
    const-string p0, "push_token_remove"

    goto :goto_0

    :pswitch_3
    const-string p0, "push_token_add"

    goto :goto_0

    :pswitch_4
    const-string p0, "identityLink"

    goto :goto_0

    :pswitch_5
    const-string p0, "event"

    goto :goto_0

    :pswitch_6
    const-string p0, "get_attribution"

    goto :goto_0

    :pswitch_7
    const-string p0, "update"

    goto :goto_0

    :pswitch_8
    const-string p0, "session"

    goto :goto_0

    :pswitch_9
    const-string p0, "install"

    goto :goto_0

    :pswitch_a
    const-string p0, "init"

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
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

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/kochava/base/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sdk_id"

    invoke-static {p1, p0, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "min_api"

    invoke-static {v2, v1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "target_api"

    invoke-static {v1, p0, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string p0, "metrics"

    invoke-static {p0, v0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 3
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ext_date"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2020-04-20T21:25:42Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sdk_build_date"

    invoke-static {v0, p0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 1
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    const-string v0, "identity_link"

    invoke-static {p2, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "identity_link_all"

    invoke-virtual {p0, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    invoke-static {v0, p2, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 7
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "custom"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p3, v1}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v1}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v2, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Custom item not in whitelist. Ignoring."

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const-string v1, "TSK"

    const-string v2, "addCustomItem"

    invoke-static {v3, v1, v2, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V
    .locals 2
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2

    const-string v0, "app_limit_tracking"

    invoke-static {p2, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "app_limit_trackingupd"

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "kochava_app_id_override"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kochava_app_id"

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v1, v0, p0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "kochava_device_id"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v0, p1, p0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)V
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    const-string v0, "state_active_count"

    invoke-static {p1, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    const-string v0, "state_active"

    invoke-static {p1, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 1
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "partner_name"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v0, p0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .locals 3
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "conversion_type"

    invoke-static {p2, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "conversion_data"

    invoke-static {p2, v1}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "referrer"

    invoke-virtual {p0, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "referrer_source"

    invoke-virtual {p0, v2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {v1, p2, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 10
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nt_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "kochava_app_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "kochava_device_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sdk_version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "adid"

    aput-object v7, v5, v6

    const-string v7, "android_id"

    aput-object v7, v5, v4

    const/4 v7, 0x2

    const-string v8, "fire_adid"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string v8, "fb_attribution_id"

    aput-object v8, v5, v7

    const/4 v7, 0x4

    const-string v8, "custom"

    aput-object v8, v5, v7

    const/4 v7, 0x5

    const-string v8, "custom_id"

    aput-object v8, v5, v7

    const/4 v7, 0x6

    const-string v8, "conversion_data"

    aput-object v8, v5, v7

    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    aget-object v9, v5, v8

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "usertime"

    aput-object v5, v4, v6

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "ids"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "email"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v4, "install_referrer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v4, "referrer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "install_begin_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/kochava/base/x;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, "referrer_click_time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Z"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send_date"

    invoke-static {v1, v0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static c(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "identity_link"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, v1, p0}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method private static d(Lcom/kochava/base/d;Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "last_install"

    invoke-virtual {p0, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/j;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kochava/base/j;->d:J

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-wide v0, v0, Lcom/kochava/base/i;->s:J

    return-wide v0
.end method

.method final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "httpGet"

    const-string v1, "TSK"

    iget-object v2, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    invoke-virtual {v2}, Lcom/kochava/base/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "{}"

    return-object p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    :try_start_0
    iget-object v6, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v6, v6, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/kochava/base/x;->b(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p1, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    move-object v2, p1

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "Error: No Network Connection"

    aput-object p2, p1, v3

    invoke-static {v5, v1, v0, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    invoke-static {v5, v1, v0, p2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method final a(ILjava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 7
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "httpPost"

    const-string v1, "TSK"

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    invoke-virtual {v2}, Lcom/kochava/base/i;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "success"

    const-string p3, "1"

    invoke-static {p2, p3, p1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    :try_start_0
    iget-object v6, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v6, v6, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/kochava/base/x;->b(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    invoke-virtual {v6, p1, p2}, Lcom/kochava/base/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/kochava/base/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, p2

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "Error: No Network Connection"

    aput-object p2, p1, v3

    invoke-static {v5, v1, v0, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v3

    invoke-static {v5, v1, v0, p2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v2
.end method

.method final a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 19
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v2, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "dp_options"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v13, 0x1

    invoke-static {v2, v13}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v2, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "dp_override"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v2, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "blacklist"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v14

    iget-object v2, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "whitelist"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/kochava/base/x;->g(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v15

    new-array v2, v13, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v3, "Main"

    aput-object v3, v2, v10

    const/4 v9, 0x5

    const-string v3, "TSK"

    const-string v6, "buildPayload"

    invoke-static {v9, v3, v6, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v6, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v6, v6, Lcom/kochava/base/i;->b:Ljava/util/List;

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, p1

    move-object/from16 v10, p3

    invoke-static/range {v2 .. v10}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;Lorg/json/JSONArray;Lorg/json/JSONArray;ILorg/json/JSONObject;)V

    sget-object v2, Lcom/kochava/base/j;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "TSK"

    const-string v4, "buildPayload"

    new-array v5, v13, [Ljava/lang/Object;

    const-string v6, "Extra in lock"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x5

    invoke-static {v6, v3, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v14, :cond_1

    const/4 v5, 0x6

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v5, "backfilled"

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8, v11}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/kochava/base/j;->a(ILorg/json/JSONObject;)V

    iget-object v5, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v11, v5}, Lcom/kochava/base/j;->a(Lorg/json/JSONObject;Lcom/kochava/base/d;)V

    const-string v5, "sdk_protocol"

    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v11}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v5, "sdk_version"

    iget-object v8, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v8, v8, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v9, "sdk_version"

    invoke-virtual {v8, v9}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v11}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v5, "nt_id"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v9, v9, Lcom/kochava/base/i;->l:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v11}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v5, "data"

    invoke-static {v5, v12, v11}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v5, "usertime"

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->c()J

    move-result-wide v8

    const-wide/16 v16, 0x3e8

    div-long v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v5, v8, v12}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->b()Z

    move-result v5

    const-wide v8, 0x40c3880000000000L    # 10000.0

    const-wide/16 v16, 0xa

    if-nez v5, :cond_3

    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "uptime"

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->c()J

    move-result-wide v4

    iget-object v10, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    move-object/from16 v18, v14

    iget-wide v13, v10, Lcom/kochava/base/i;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v13

    mul-long v4, v4, v16

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4, v12}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_3

    :cond_3
    :goto_1
    move-object/from16 v18, v14

    if-eq v0, v4, :cond_4

    iget-object v3, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v3, v3, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "session_window_uptime"

    invoke-virtual {v3, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    const-string v3, "uptime"

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->c()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->a()J

    move-result-wide v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v4, v13

    mul-long v4, v4, v16

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v8

    int-to-double v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :goto_3
    iget-object v3, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-boolean v3, v3, Lcom/kochava/base/i;->m:Z

    if-eqz v3, :cond_6

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "required"

    iget-object v5, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v5}, Lcom/kochava/base/b;->d()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v4, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v4}, Lcom/kochava/base/b;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "time"

    iget-object v5, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v5}, Lcom/kochava/base/b;->f()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_5
    const-string v4, "consent"

    invoke-static {v4, v3, v11}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :cond_6
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->b()Z

    move-result v0

    move-object/from16 v3, v18

    :goto_4
    invoke-static {v12, v3, v0}, Lcom/kochava/base/j;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v3, v18

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->b()Z

    move-result v0

    goto :goto_4

    :pswitch_2
    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12}, Lcom/kochava/base/j;->c(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    goto/16 :goto_6

    :pswitch_3
    move-object/from16 v3, v18

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->b()Z

    move-result v0

    goto :goto_4

    :pswitch_4
    move-object/from16 v3, v18

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v4, 0x1

    invoke-static {v0, v12, v3, v4}, Lcom/kochava/base/j;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    goto/16 :goto_6

    :pswitch_5
    move-object/from16 v3, v18

    const/4 v4, 0x1

    invoke-static {v12, v3, v4}, Lcom/kochava/base/j;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "session_state_active_count"

    invoke-virtual {v0, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v0

    invoke-static {v12, v3, v0}, Lcom/kochava/base/j;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;I)V

    const-string v0, "state"

    const-string v3, "pause"

    :goto_5
    invoke-static {v0, v3, v12}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_6

    :pswitch_6
    move-object/from16 v3, v18

    const/4 v0, 0x1

    invoke-static {v12, v3, v0}, Lcom/kochava/base/j;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    const-string v0, "state"

    const-string v3, "resume"

    goto :goto_5

    :pswitch_7
    move-object/from16 v3, v18

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->o:Ljava/lang/String;

    invoke-static {v0, v4, v11}, Lcom/kochava/base/j;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/j;->b()Z

    move-result v0

    invoke-static {v12, v3, v0}, Lcom/kochava/base/j;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12, v3, v7}, Lcom/kochava/base/j;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12, v3}, Lcom/kochava/base/j;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12, v3}, Lcom/kochava/base/j;->b(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12, v3, v15}, Lcom/kochava/base/j;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    goto :goto_6

    :pswitch_8
    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v11}, Lcom/kochava/base/j;->a(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12}, Lcom/kochava/base/j;->b(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->a:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/kochava/base/j;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget-object v0, v1, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v0, v12}, Lcom/kochava/base/j;->d(Lcom/kochava/base/d;Lorg/json/JSONObject;)V

    :goto_6
    :pswitch_9
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v11, v0, v7

    const-string v2, "TSK"

    const-string v3, "buildPayload"

    invoke-static {v6, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a(J)V
    .locals 4
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "TSK"

    const-string v3, "wakeSelf"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method final a(Lorg/json/JSONObject;Z)Z
    .locals 10
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        value = "null, _ -> true"
    .end annotation

    const/4 v0, 0x4

    const-string v1, "checkErrorAnd"

    const-string v2, "TSK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    new-array p1, v4, [Ljava/lang/Object;

    const-string v5, "Network Error"

    aput-object v5, p1, v3

    invoke-static {v0, v2, v1, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/kochava/base/j;->m()V

    :cond_0
    return v4

    :cond_1
    const-string v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v2, v1, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v5, "success"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v5

    if-nez v5, :cond_4

    new-array p1, v4, [Ljava/lang/Object;

    const-string v5, "Success False"

    aput-object v5, p1, v3

    invoke-static {v0, v2, v1, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/kochava/base/j;->m()V

    :cond_3
    return v4

    :cond_4
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v5, "retry"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-static {p1, v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double p1, v5, v7

    if-ltz p1, :cond_6

    new-array p1, v4, [Ljava/lang/Object;

    const-string v7, "Retry Time"

    aput-object v7, p1, v3

    invoke-static {v0, v2, v1, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    const-wide p1, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/kochava/base/j;->a(J)V

    :cond_5
    return v4

    :cond_6
    return v3
.end method

.method final b(ILorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lcom/kochava/base/j;->a(ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    invoke-static {v1, p2, p1}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-object v1
.end method

.method final b()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/j;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kochava/base/j;->e:Z

    return v0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->m()Z

    move-result v0

    return v0
.end method

.method final c()J
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/j;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/kochava/base/j;->f:J

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method final d()V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-virtual {p0}, Lcom/kochava/base/j;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/j;->h:Z

    return-void
.end method

.method public final e()Z
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/j;->h:Z

    return v0
.end method

.method public final f()V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kochava/base/j;->i:Z

    return-void
.end method

.method public final g()Z
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-boolean v0, p0, Lcom/kochava/base/j;->i:Z

    return v0
.end method

.method public final h()V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    invoke-virtual {v0, p0}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kochava/base/j;->h:Z

    iput-boolean v0, p0, Lcom/kochava/base/j;->i:Z

    invoke-virtual {p0}, Lcom/kochava/base/j;->l()V

    return-void
.end method

.method final i()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v1, v0, Lcom/kochava/base/i;->f:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method final j()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->g:Lcom/kochava/base/b;

    invoke-interface {v0}, Lcom/kochava/base/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Controller Busy. Returning."

    aput-object v3, v1, v2

    const-string v2, "TSK"

    const-string v3, "wakeControlle"

    invoke-static {v0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/kochava/base/j;->i()V

    return-void
.end method

.method final k()I
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget v0, p0, Lcom/kochava/base/j;->g:I

    return v0
.end method

.method final l()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/kochava/base/j;->g:I

    return-void
.end method

.method final m()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x4

    const-string v2, "TSK"

    const-string v3, "retry"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/kochava/base/j;->g:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, 0x5

    invoke-static {v0, v2, v3}, Lcom/kochava/base/x;->a(III)I

    move-result v0

    iput v0, p0, Lcom/kochava/base/j;->g:I

    iget v0, p0, Lcom/kochava/base/j;->g:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    const-wide/16 v0, 0xbb8

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/j;->a(J)V

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x493e0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x2710

    goto :goto_0

    :goto_1
    return-void
.end method

.method final n()Z
    .locals 10

    iget-object v0, p0, Lcom/kochava/base/j;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->u:Lcom/kochava/base/f;

    invoke-virtual {v0}, Lcom/kochava/base/f;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, -0x1

    const-string v5, "checkRateLimi"

    const-string v6, "TSK"

    const/4 v7, 0x4

    const/4 v8, 0x1

    cmp-long v9, v0, v3

    if-nez v9, :cond_1

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "Rate limited Permanent. Cannot send until disabled."

    aput-object v1, v0, v2

    invoke-static {v7, v6, v5, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_1
    new-array v3, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rate limited, delaying for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " milliseconds"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v7, v6, v5, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kochava/base/j;->a(J)V

    return v8
.end method
