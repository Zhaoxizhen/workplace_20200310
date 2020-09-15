.class public Ltw/com/mycard/paymentsdk/MyCardSDK;
.super Ljava/lang/Object;
.source "MyCardSDK.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->activity:Landroid/app/Activity;

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ltw/com/mycard/paymentsdk/PSDKActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    return-void
.end method

.method private setParameter(ZLjava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    const-string v1, "AuthCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object p2, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    const-string v0, "isTest"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public CreateWebViewTest()V
    .locals 2

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- CreateWebViewTest()"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public StartPayActivityForResult(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p2, p3}, Ltw/com/mycard/paymentsdk/MyCardSDK;->setParameter(ZLjava/lang/String;)V

    .line 46
    iget-object p2, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    const/16 p3, 0x270f

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public StartPayActivityForResult(ZLjava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Ltw/com/mycard/paymentsdk/MyCardSDK;->setParameter(ZLjava/lang/String;)V

    .line 41
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->activity:Landroid/app/Activity;

    iget-object p2, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    const/16 v0, 0x270f

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setIsBeta(Z)V
    .locals 2

    .line 23
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    const-string v1, "isBeta"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public varargs setParameter([Ljava/lang/String;)V
    .locals 4

    .line 27
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    array-length v1, p1

    const-string v2, "Count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/MyCardSDK;->intent:Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Param"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
