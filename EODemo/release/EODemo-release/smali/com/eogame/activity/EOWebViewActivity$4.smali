.class Lcom/eogame/activity/EOWebViewActivity$4;
.super Ljava/lang/Object;
.source "EOWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebViewActivity;->payFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOWebViewActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$4;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    iput-object p2, p0, Lcom/eogame/activity/EOWebViewActivity$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$4;->val$msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/eogame/listener/EOPayEvent;->onPayError(Ljava/lang/String;)V

    return-void
.end method
