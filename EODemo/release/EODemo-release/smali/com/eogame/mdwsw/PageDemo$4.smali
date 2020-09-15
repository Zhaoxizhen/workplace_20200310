.class Lcom/eogame/mdwsw/PageDemo$4;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Lcom/eogame/listener/FacebookShareApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/mdwsw/PageDemo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/mdwsw/PageDemo;


# direct methods
.method constructor <init>(Lcom/eogame/mdwsw/PageDemo;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/eogame/mdwsw/PageDemo$4;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareCancel()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$4;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-static {v0}, Lcom/eogame/mdwsw/PageDemo;->access$000(Lcom/eogame/mdwsw/PageDemo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/eogame/mdwsw/PageDemo$4$3;

    invoke-direct {v1, p0}, Lcom/eogame/mdwsw/PageDemo$4$3;-><init>(Lcom/eogame/mdwsw/PageDemo$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shareFail()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$4;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-static {v0}, Lcom/eogame/mdwsw/PageDemo;->access$000(Lcom/eogame/mdwsw/PageDemo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/eogame/mdwsw/PageDemo$4$2;

    invoke-direct {v1, p0}, Lcom/eogame/mdwsw/PageDemo$4$2;-><init>(Lcom/eogame/mdwsw/PageDemo$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shareSuccess()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$4;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-static {v0}, Lcom/eogame/mdwsw/PageDemo;->access$000(Lcom/eogame/mdwsw/PageDemo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/eogame/mdwsw/PageDemo$4$1;

    invoke-direct {v1, p0}, Lcom/eogame/mdwsw/PageDemo$4$1;-><init>(Lcom/eogame/mdwsw/PageDemo$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
