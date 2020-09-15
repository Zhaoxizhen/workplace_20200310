.class Lcom/eogame/widgets/EOTimeButton$2;
.super Ljava/util/TimerTask;
.source "EOTimeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/widgets/EOTimeButton;->initTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/widgets/EOTimeButton;


# direct methods
.method constructor <init>(Lcom/eogame/widgets/EOTimeButton;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/eogame/widgets/EOTimeButton$2;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/eogame/widgets/EOTimeButton$2;->this$0:Lcom/eogame/widgets/EOTimeButton;

    iget-object v0, v0, Lcom/eogame/widgets/EOTimeButton;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
