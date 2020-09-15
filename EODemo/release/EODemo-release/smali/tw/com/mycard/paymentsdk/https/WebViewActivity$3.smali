.class Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/https/WebViewActivity;->initWebPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;


# direct methods
.method constructor <init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    .line 229
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;)Ltw/com/mycard/paymentsdk/https/WebViewActivity;
    .locals 0

    .line 229
    iget-object p0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    return-object p0
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    .line 261
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    const-string p1, "FullScreenWebView"

    const-string v0, "onCloseWindow"

    .line 262
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-virtual {p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->finish()V

    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 0

    const-string p2, "WebViewActivity"

    const-string p3, "onCreateWindow"

    .line 269
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance p2, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance p1, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$4;

    invoke-direct {p1, p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$4;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 280
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebView$WebViewTransport;

    .line 281
    invoke-virtual {p1, p2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 282
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 232
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 234
    new-instance p2, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$1;

    invoke-direct {p2, p0, p4}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$1;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;Landroid/webkit/JsResult;)V

    const-string p3, "Ok"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 244
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 246
    new-instance p2, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$2;

    invoke-direct {p2, p0, p4}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$2;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;Landroid/webkit/JsResult;)V

    const-string p3, "Ok"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 251
    new-instance p2, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$3;

    invoke-direct {p2, p0, p4}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$3;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;Landroid/webkit/JsResult;)V

    const-string p3, "No"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
