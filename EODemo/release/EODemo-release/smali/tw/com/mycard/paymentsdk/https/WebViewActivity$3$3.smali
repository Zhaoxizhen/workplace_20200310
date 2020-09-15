.class Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;Landroid/webkit/JsResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$3;->this$1:Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;

    iput-object p2, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$3;->val$result:Landroid/webkit/JsResult;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 253
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
