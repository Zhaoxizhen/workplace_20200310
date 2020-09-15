.class Lcom/eogame/mdwsw/PageDemo$3;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Lcom/eogame/listener/PayCallback;


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

    .line 229
    iput-object p1, p0, Lcom/eogame/mdwsw/PageDemo$3;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$3;->this$0:Lcom/eogame/mdwsw/PageDemo;

    const-string v1, "\u8d2d\u4e70\u53d6\u6d88"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$3;->this$0:Lcom/eogame/mdwsw/PageDemo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d2d\u4e70\u5931\u8d25\uff0c\u9519\u8bef\u4fe1\u606f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object p1, p0, Lcom/eogame/mdwsw/PageDemo$3;->this$0:Lcom/eogame/mdwsw/PageDemo;

    const-string v0, "\u8d2d\u4e70\u6210\u529f. "

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
