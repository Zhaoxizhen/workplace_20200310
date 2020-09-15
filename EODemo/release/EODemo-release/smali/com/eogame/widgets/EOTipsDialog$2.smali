.class Lcom/eogame/widgets/EOTipsDialog$2;
.super Ljava/lang/Object;
.source "EOTipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/widgets/EOTipsDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/widgets/EOTipsDialog;


# direct methods
.method constructor <init>(Lcom/eogame/widgets/EOTipsDialog;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/eogame/widgets/EOTipsDialog$2;->this$0:Lcom/eogame/widgets/EOTipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/eogame/widgets/EOTipsDialog$2;->this$0:Lcom/eogame/widgets/EOTipsDialog;

    invoke-static {p1}, Lcom/eogame/widgets/EOTipsDialog;->access$000(Lcom/eogame/widgets/EOTipsDialog;)Lcom/eogame/widgets/EOTipsListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/eogame/widgets/EOTipsDialog$2;->this$0:Lcom/eogame/widgets/EOTipsDialog;

    invoke-static {p1}, Lcom/eogame/widgets/EOTipsDialog;->access$000(Lcom/eogame/widgets/EOTipsDialog;)Lcom/eogame/widgets/EOTipsListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/eogame/widgets/EOTipsListener;->onCancelClick()V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/eogame/widgets/EOTipsDialog$2;->this$0:Lcom/eogame/widgets/EOTipsDialog;

    invoke-virtual {p1}, Lcom/eogame/widgets/EOTipsDialog;->dismiss()V

    return-void
.end method
