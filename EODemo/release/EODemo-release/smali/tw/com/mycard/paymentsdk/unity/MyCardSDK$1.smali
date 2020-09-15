.class Ltw/com/mycard/paymentsdk/unity/MyCardSDK$1;
.super Ljava/lang/Object;
.source "MyCardSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->CreateWebViewTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 56
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method
