.class public Lcom/eogame/utils/EOThread;
.super Ljava/lang/Thread;
.source "EOThread.java"


# instance fields
.field private isDestory:Z

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/eogame/utils/EOThread;->isDestory:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/eogame/utils/EOThread;->isDestory:Z

    .line 14
    iput-object p1, p0, Lcom/eogame/utils/EOThread;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public isDestory()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/eogame/utils/EOThread;->isDestory:Z

    return v0
.end method

.method public run()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/eogame/utils/EOThread;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public safeDestory()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/eogame/utils/EOThread;->isDestory:Z

    return-void
.end method
