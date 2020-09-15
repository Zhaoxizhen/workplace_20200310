.class public Lcom/eogame/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final LOG_LEVEL_C:Ljava/lang/String; = "c"

.field private static final LOG_LEVEL_D:Ljava/lang/String; = "d"

.field private static final LOG_LEVEL_E:Ljava/lang/String; = "e"

.field private static final LOG_LEVEL_I:Ljava/lang/String; = "i"

.field private static final LOG_LEVEL_P:Ljava/lang/String; = "p"

.field private static final LOG_LEVEL_V:Ljava/lang/String; = "v"

.field private static final LOG_LEVEL_W:Ljava/lang/String; = "w"

.field private static mInstance:Lcom/eogame/utils/Logger;


# instance fields
.field private mWriterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/BufferedWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/eogame/utils/Logger;

    invoke-direct {v0}, Lcom/eogame/utils/Logger;-><init>()V

    sput-object v0, Lcom/eogame/utils/Logger;->mInstance:Lcom/eogame/utils/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eogame/utils/Logger;->mWriterMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/eogame/utils/Logger;
    .locals 1

    .line 37
    sget-object v0, Lcom/eogame/utils/Logger;->mInstance:Lcom/eogame/utils/Logger;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public downLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
