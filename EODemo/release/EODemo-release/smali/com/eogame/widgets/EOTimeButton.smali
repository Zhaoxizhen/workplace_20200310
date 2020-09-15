.class public Lcom/eogame/widgets/EOTimeButton;
.super Ljava/lang/Object;
.source "EOTimeButton.java"


# instance fields
.field private DefaultTime:J

.field handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private mBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private showTime:J

.field private textafter:Ljava/lang/String;

.field private textbefore:Ljava/lang/String;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 16
    iput-wide v0, p0, Lcom/eogame/widgets/EOTimeButton;->DefaultTime:J

    const-string v0, "s"

    .line 17
    iput-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->textafter:Ljava/lang/String;

    const-string v0, "\u91cd\u65b0\u53d1\u9001"

    .line 18
    iput-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->textbefore:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/eogame/widgets/EOTimeButton$1;

    invoke-direct {v0, p0}, Lcom/eogame/widgets/EOTimeButton$1;-><init>(Lcom/eogame/widgets/EOTimeButton;)V

    iput-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->handler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/eogame/widgets/EOTimeButton;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    .line 29
    iget-object p1, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    const/4 p2, 0x2

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/widgets/EOTimeButton;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/eogame/widgets/EOTimeButton;->showTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/eogame/widgets/EOTimeButton;J)J
    .locals 0

    .line 14
    iput-wide p1, p0, Lcom/eogame/widgets/EOTimeButton;->showTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/eogame/widgets/EOTimeButton;)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eogame/widgets/EOTimeButton;->textafter:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/widgets/EOTimeButton;)Landroid/widget/Button;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    return-object p0
.end method

.method private clearTimer()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->timerTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 70
    iput-object v1, p0, Lcom/eogame/widgets/EOTimeButton;->timerTask:Ljava/util/TimerTask;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 74
    iput-object v1, p0, Lcom/eogame/widgets/EOTimeButton;->timer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private initTimer()V
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/eogame/widgets/EOTimeButton;->DefaultTime:J

    iput-wide v0, p0, Lcom/eogame/widgets/EOTimeButton;->showTime:J

    .line 58
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->timer:Ljava/util/Timer;

    .line 59
    new-instance v0, Lcom/eogame/widgets/EOTimeButton$2;

    invoke-direct {v0, p0}, Lcom/eogame/widgets/EOTimeButton$2;-><init>(Lcom/eogame/widgets/EOTimeButton;)V

    iput-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->timerTask:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-wide/16 v0, -0x3e8

    .line 53
    iput-wide v0, p0, Lcom/eogame/widgets/EOTimeButton;->showTime:J

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/eogame/widgets/EOTimeButton;->isRunning:Z

    return v0
.end method

.method public reset()V
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 46
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/eogame/widgets/EOTimeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/widgets/EOTimeButton;->mContext:Landroid/content/Context;

    const-string v3, "eo_red"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 47
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/eogame/widgets/EOTimeButton;->textbefore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-direct {p0}, Lcom/eogame/widgets/EOTimeButton;->clearTimer()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/eogame/widgets/EOTimeButton;->isRunning:Z

    return-void
.end method

.method public setLenght(J)Lcom/eogame/widgets/EOTimeButton;
    .locals 0

    .line 113
    iput-wide p1, p0, Lcom/eogame/widgets/EOTimeButton;->DefaultTime:J

    return-object p0
.end method

.method public setTextAfter(Ljava/lang/String;)Lcom/eogame/widgets/EOTimeButton;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/eogame/widgets/EOTimeButton;->textafter:Ljava/lang/String;

    return-object p0
.end method

.method public setTextBefore(Ljava/lang/String;)Lcom/eogame/widgets/EOTimeButton;
    .locals 1

    .line 96
    iput-object p1, p0, Lcom/eogame/widgets/EOTimeButton;->textbefore:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->textbefore:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public start()V
    .locals 8

    .line 79
    invoke-direct {p0}, Lcom/eogame/widgets/EOTimeButton;->initTimer()V

    .line 80
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/eogame/widgets/EOTimeButton;->showTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/widgets/EOTimeButton;->textafter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/eogame/widgets/EOTimeButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/widgets/EOTimeButton;->mContext:Landroid/content/Context;

    const-string v3, "af_text_gray"

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton;->mBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    iget-object v2, p0, Lcom/eogame/widgets/EOTimeButton;->timer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/eogame/widgets/EOTimeButton;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/eogame/widgets/EOTimeButton;->isRunning:Z

    return-void
.end method
