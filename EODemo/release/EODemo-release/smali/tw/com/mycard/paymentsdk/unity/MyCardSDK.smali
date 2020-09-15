.class public Ltw/com/mycard/paymentsdk/unity/MyCardSDK;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MyCardSDK.java"


# static fields
.field private static GameObject:Ljava/lang/String;

.field private static act:Landroid/app/Activity;

.field private static intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static CreateWebViewTest()V
    .locals 2

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- CreateWebViewTest()"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget-object v0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->act:Landroid/app/Activity;

    new-instance v1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$1;

    invoke-direct {v1}, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- ShowDialog Call"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->act:Landroid/app/Activity;

    new-instance v1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;

    invoke-direct {v1, p1, p0}, Ltw/com/mycard/paymentsdk/unity/MyCardSDK$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static StartPayment(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- StartPayment()"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sput-object p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->GameObject:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MyCardSDK GameObject\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    const-string v1, "AuthCode"

    invoke-virtual {p0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    sget-object p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    const-string p2, "isTest"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "MyCardSDK startActivityForResult start"

    .line 68
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->act:Landroid/app/Activity;

    sget-object p1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    const/16 p2, 0x270f

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p0, "MyCardSDK startActivityForResult End"

    .line 70
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .line 22
    sget-object v0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->act:Landroid/app/Activity;

    return-object v0
.end method

.method public static setIsBeta(Z)V
    .locals 3

    const-string v0, "Unity"

    const-string v1, "setIsBeta()aaaaaaaaaaa"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    const-string v2, "isBeta"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "setIsBeta()bbbbbbbbbbb"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs setParameter([Ljava/lang/String;)V
    .locals 4

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- setParameter()"

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 43
    sget-object v0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    array-length v1, p0

    const-string v2, "Count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 44
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    sget-object v1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Param"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- onActivityResult Call"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x270f

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PaySdkResult = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "PaySdkResult"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object p1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->GameObject:Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "PayCompleted"

    invoke-static {p1, p3, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u53d6\u6d88\u4ea4\u6613\u7b49... "

    .line 93
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object p1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->GameObject:Ljava/lang/String;

    const-string p2, "PayCancel"

    const-string p3, "Pay Cancel"

    invoke-static {p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sput-object p0, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->act:Landroid/app/Activity;

    .line 29
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltw/com/mycard/paymentsdk/PSDKActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object p1, Ltw/com/mycard/paymentsdk/unity/MyCardSDK;->intent:Landroid/content/Intent;

    const-string p1, "Unity"

    const-string v0, "MyCardSDK java- onCreate"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    const-string v0, "Unity"

    const-string v1, "MyCardSDK java- onStart()"

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
