.class Ltw/com/mycard/paymentsdk/PSDKActivity$2;
.super Ljava/lang/Object;
.source "PSDKActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/PSDKActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

.field private final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ltw/com/mycard/paymentsdk/PSDKActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$2;->this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

    iput-object p2, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$2;->val$data:Landroid/content/Intent;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 144
    sput-boolean v0, Ltw/com/mycard/paymentsdk/PSDKActivity;->isVer19ing:Z

    .line 145
    :cond_0
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$2;->this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$2;->val$data:Landroid/content/Intent;

    const-string v2, "PaySdkResult"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->openPaymentSDKForFarEas(Ljava/lang/String;)V

    return-void
.end method
