.class Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$4;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;


# direct methods
.method constructor <init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$4;->this$1:Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;

    .line 271
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string p1, "2222222222"

    const-string v0, "222222222222"

    .line 274
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance p1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    iget-object p2, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$4;->this$1:Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;

    invoke-static {p2}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->access$0(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;)Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
