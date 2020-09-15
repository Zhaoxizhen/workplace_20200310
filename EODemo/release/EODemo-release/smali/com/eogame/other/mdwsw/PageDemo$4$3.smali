.class Lcom/eogame/other/mdwsw/PageDemo$4$3;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/other/mdwsw/PageDemo$4;->shareCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/other/mdwsw/PageDemo$4;


# direct methods
.method constructor <init>(Lcom/eogame/other/mdwsw/PageDemo$4;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo$4$3;->this$1:Lcom/eogame/other/mdwsw/PageDemo$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo$4$3;->this$1:Lcom/eogame/other/mdwsw/PageDemo$4;

    iget-object v0, v0, Lcom/eogame/other/mdwsw/PageDemo$4;->this$0:Lcom/eogame/other/mdwsw/PageDemo;

    const-string v1, "\u53d6\u6d88\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
