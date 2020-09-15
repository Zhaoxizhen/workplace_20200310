.class Lcom/eogame/activity/EOWebViewActivity$2;
.super Ljava/lang/Object;
.source "EOWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebViewActivity;->paySuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOWebViewActivity;

.field final synthetic val$eono:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$2;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    iput-object p2, p0, Lcom/eogame/activity/EOWebViewActivity$2;->val$eono:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$2;->val$eono:Ljava/lang/String;

    invoke-static {v0}, Lcom/eogame/listener/EOPayEvent;->onPaySuccess(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$2;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$100(Lcom/eogame/activity/EOWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
