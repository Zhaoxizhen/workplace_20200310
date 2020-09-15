.class Lcom/eogame/widgets/EOTimeButton$1;
.super Landroid/os/Handler;
.source "EOTimeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/widgets/EOTimeButton;
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

    .line 33
    iput-object p1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 36
    iget-object p1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-static {p1}, Lcom/eogame/widgets/EOTimeButton;->access$200(Lcom/eogame/widgets/EOTimeButton;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-static {v1}, Lcom/eogame/widgets/EOTimeButton;->access$000(Lcom/eogame/widgets/EOTimeButton;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-static {v1}, Lcom/eogame/widgets/EOTimeButton;->access$100(Lcom/eogame/widgets/EOTimeButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-static {p1}, Lcom/eogame/widgets/EOTimeButton;->access$000(Lcom/eogame/widgets/EOTimeButton;)J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {p1, v0, v1}, Lcom/eogame/widgets/EOTimeButton;->access$002(Lcom/eogame/widgets/EOTimeButton;J)J

    .line 38
    iget-object p1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-static {p1}, Lcom/eogame/widgets/EOTimeButton;->access$000(Lcom/eogame/widgets/EOTimeButton;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/eogame/widgets/EOTimeButton$1;->this$0:Lcom/eogame/widgets/EOTimeButton;

    invoke-virtual {p1}, Lcom/eogame/widgets/EOTimeButton;->reset()V

    :cond_0
    return-void
.end method
