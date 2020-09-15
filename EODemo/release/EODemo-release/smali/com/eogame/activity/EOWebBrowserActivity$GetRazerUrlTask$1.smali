.class Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;
.super Landroid/webkit/WebViewClient;
.source "EOWebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;->this$1:Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;->this$1:Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebBrowserActivity;->access$000(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 281
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;->this$1:Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;

    iget-object p3, p3, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    iget-object p3, p3, Lcom/eogame/activity/EOWebBrowserActivity;->mContext:Landroid/app/Activity;

    invoke-direct {p1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p3, "SSL\u8ba4\u8bc1\u5931\u8d25,\u662f\u5426\u7ee7\u7eed\u8bbf\u95ee?"

    .line 282
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    new-instance p3, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1$1;

    invoke-direct {p3, p0, p2}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1$1;-><init>(Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;Landroid/webkit/SslErrorHandler;)V

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    new-instance p3, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1$2;

    invoke-direct {p3, p0, p2}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1$2;-><init>(Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;Landroid/webkit/SslErrorHandler;)V

    const-string p2, "\u53d6\u6d88"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 269
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
