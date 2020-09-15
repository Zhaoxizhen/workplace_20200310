.class Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1$1;
.super Ljava/lang/Object;
.source "EOWebBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1$1;->this$2:Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1;

    iput-object p2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 408
    iget-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method
