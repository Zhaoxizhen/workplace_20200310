.class Ltw/com/mycard/paymentsdk/PSDKActivity$1;
.super Ljava/lang/Object;
.source "PSDKActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/PSDKActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;


# direct methods
.method constructor <init>(Ltw/com/mycard/paymentsdk/PSDKActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$1;->this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$1;->this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

    invoke-static {v0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->access$0(Ltw/com/mycard/paymentsdk/PSDKActivity;)V

    return-void
.end method
