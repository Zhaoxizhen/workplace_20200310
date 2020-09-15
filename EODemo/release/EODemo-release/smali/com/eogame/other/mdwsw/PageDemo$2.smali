.class Lcom/eogame/other/mdwsw/PageDemo$2;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Lcom/eogame/listener/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/other/mdwsw/PageDemo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/other/mdwsw/PageDemo;


# direct methods
.method constructor <init>(Lcom/eogame/other/mdwsw/PageDemo;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo$2;->this$0:Lcom/eogame/other/mdwsw/PageDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo$2;->this$0:Lcom/eogame/other/mdwsw/PageDemo;

    const-string v1, "\u53d6\u6d88\u767b\u5f55"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 4

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, "error happen-->90005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "error happen-->90004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "error happen-->90003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_4
    const-string v0, "error happen-->90001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "\u8d26\u53f7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff0c\u8bf7\u8f93\u5165"

    goto :goto_2

    :cond_2
    const-string p1, "\u5f53\u524d\u7528\u6237\u5df2\u88ab\u9501\u5b9a\u65e0\u6cd5\u4f7f\u7528\uff0c\u8bf7\u4e0e\u5ba2\u670d\u4eba\u5458\u8054\u7cfb"

    goto :goto_2

    :cond_3
    const-string p1, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    goto :goto_2

    :cond_4
    const-string p1, "\u5f53\u524d\u7528\u6237\u4e0d\u5b58\u5728"

    .line 194
    :goto_2
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo$2;->this$0:Lcom/eogame/other/mdwsw/PageDemo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u767b\u5f55\u5931\u8d25\uff0cmsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x204c0dea
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onLogout()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo$2;->this$0:Lcom/eogame/other/mdwsw/PageDemo;

    const-string v1, "\u767b\u51fa\u6210\u529f "

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo$2;->this$0:Lcom/eogame/other/mdwsw/PageDemo;

    const-string v0, "\u767b\u5f55\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
