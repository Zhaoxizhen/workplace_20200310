.class Ltw/com/mycard/paymentsdk/PSDKActivity$3;
.super Ljava/lang/Object;
.source "PSDKActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/PSDKActivity;->showDialog(Ljava/lang/String;)V
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
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$3;->this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 191
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity$3;->this$0:Ltw/com/mycard/paymentsdk/PSDKActivity;

    invoke-virtual {p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->finish()V

    return-void
.end method
