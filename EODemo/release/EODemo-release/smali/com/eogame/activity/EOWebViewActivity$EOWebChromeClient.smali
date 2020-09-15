.class Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "EOWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EOWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/eogame/activity/EOWebViewActivity;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eogame/activity/EOWebViewActivity;Lcom/eogame/activity/EOWebViewActivity$1;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;-><init>(Lcom/eogame/activity/EOWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$200(Lcom/eogame/activity/EOWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 285
    invoke-static {}, Lcom/eogame/activity/EOWebViewActivity;->access$300()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$100(Lcom/eogame/activity/EOWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 287
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eogame/activity/EOWebViewActivity;->access$402(Lcom/eogame/activity/EOWebViewActivity;Z)Z

    .line 288
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eo"

    const-string v2, "progress 100% !!!!"

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$EOWebChromeClient;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$200(Lcom/eogame/activity/EOWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
