.class Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;
.super Ljava/lang/Object;
.source "MyCardSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ApiName:Ljava/lang/String;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;->val$str:Ljava/lang/String;

    iput-object p2, p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;->val$ApiName:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 106
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->access$0()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Server API:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;->val$ApiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2$1;

    invoke-direct {v1, p0}, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2$1;-><init>(Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;)V

    const-string v2, "\u78ba\u5b9a"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
