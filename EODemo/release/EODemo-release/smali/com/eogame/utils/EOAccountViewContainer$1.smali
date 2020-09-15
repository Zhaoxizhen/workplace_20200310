.class Lcom/eogame/utils/EOAccountViewContainer$1;
.super Landroid/os/CountDownTimer;
.source "EOAccountViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/EOAccountViewContainer;->autoShow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/utils/EOAccountViewContainer;


# direct methods
.method constructor <init>(Lcom/eogame/utils/EOAccountViewContainer;JJ)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/eogame/utils/EOAccountViewContainer$1;->this$0:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer$1;->this$0:Lcom/eogame/utils/EOAccountViewContainer;

    invoke-static {v0}, Lcom/eogame/utils/EOAccountViewContainer;->access$000(Lcom/eogame/utils/EOAccountViewContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->access$100(Lcom/eogame/utils/EOAccountViewContainer;Landroid/content/Context;)Lcom/eogame/activity/EOAccountActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/activity/EOAccountActivity;->autoLoginEndTime()V

    .line 247
    iget-object v0, p0, Lcom/eogame/utils/EOAccountViewContainer$1;->this$0:Lcom/eogame/utils/EOAccountViewContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eogame/utils/EOAccountViewContainer;->access$202(Lcom/eogame/utils/EOAccountViewContainer;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
