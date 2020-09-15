.class Lcom/eogame/activity/EOWebViewActivity$5;
.super Ljava/lang/Object;
.source "EOWebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebViewActivity;->ShowAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOWebViewActivity;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebViewActivity;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$5;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$5;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebViewActivity;->access$200(Lcom/eogame/activity/EOWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 463
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$5;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebViewActivity;->finish()V

    .line 464
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$5;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebViewActivity;->access$800(Lcom/eogame/activity/EOWebViewActivity;)V

    return-void
.end method
