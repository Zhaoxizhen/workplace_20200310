.class Lcom/eogame/mdwsw/PageDemo$1;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Lcom/eogame/listener/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/mdwsw/PageDemo;->init()V
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

    .line 135
    iput-object p1, p0, Lcom/eogame/mdwsw/PageDemo$1;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object p1, p0, Lcom/eogame/mdwsw/PageDemo$1;->this$0:Lcom/eogame/mdwsw/PageDemo;

    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$1;->this$0:Lcom/eogame/mdwsw/PageDemo;

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
