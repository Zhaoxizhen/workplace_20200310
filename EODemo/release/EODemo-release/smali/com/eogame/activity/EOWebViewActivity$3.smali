.class Lcom/eogame/activity/EOWebViewActivity$3;
.super Ljava/lang/Object;
.source "EOWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebViewActivity;->closePay()V
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

    .line 242
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$3;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 245
    invoke-static {}, Lcom/eogame/listener/EOPayEvent;->onPayCancle()V

    .line 246
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$3;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$100(Lcom/eogame/activity/EOWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
