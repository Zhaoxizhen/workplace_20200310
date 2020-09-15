.class public Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/com/mycard/paymentsdk/https/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyJavaScript"
.end annotation


# instance fields
.field final synthetic this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;


# direct methods
.method constructor <init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Call(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "***"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "returnCode"

    .line 306
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "PaySdkResult"

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "payResult"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setMyResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    const/4 v1, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setMyResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 313
    :goto_0
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-virtual {p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->finish()V

    :cond_1
    return-void
.end method

.method public Call_LinePay(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call_LinePay msg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 325
    :try_start_0
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 326
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-virtual {v0, p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Call_iStyle(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Call_iStyle msg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "PaySdkResult"

    .line 342
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setMyResult(ILandroid/content/Intent;)V

    .line 344
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-virtual {p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->finish()V

    return-void
.end method

.method public openPrivacyPage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "openPrivacyPage url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 356
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;->this$0:Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-virtual {p1, v0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
