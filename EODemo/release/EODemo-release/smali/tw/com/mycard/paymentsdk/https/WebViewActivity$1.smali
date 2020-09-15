.class Ltw/com/mycard/paymentsdk/https/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgCloseOnClick()V
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
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$1;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 171
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$1;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-virtual {p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->finish()V

    return-void
.end method
