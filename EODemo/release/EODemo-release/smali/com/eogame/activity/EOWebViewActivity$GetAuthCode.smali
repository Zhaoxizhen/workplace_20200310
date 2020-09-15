.class Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;
.super Landroid/os/AsyncTask;
.source "EOWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetAuthCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field Url:Ljava/lang/String;

.field contentValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/eogame/activity/EOWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/eogame/activity/EOWebViewActivity;ZLandroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 344
    iput-object p3, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->contentValues:Landroid/content/ContentValues;

    if-eqz p2, :cond_0

    .line 347
    iput-object p4, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->Url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "http://pay.eohfun.com/pay/mycardTradeStartTw.do"

    .line 350
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->Url:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 338
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 359
    :try_start_0
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->Url:Ljava/lang/String;

    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->contentValues:Landroid/content/ContentValues;

    invoke-static {p1, v0}, Ltw/com/mycard/paymentsdk/https/CustomHttpURLConnection;->postByHttpURLConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const-string v0, "strResult:"

    if-eqz p1, :cond_0

    .line 364
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    const-string v2, "strResult is null!"

    invoke-virtual {v1, v0, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 374
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 338
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    const-string v0, "code"

    const-string v1, "eoresult"

    if-eqz p1, :cond_1

    .line 382
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    .line 385
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    const-string v0, "authCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eogame/activity/EOWebViewActivity;->access$502(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    new-instance p1, Ltw/com/mycard/paymentsdk/MyCardSDK;

    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$100(Lcom/eogame/activity/EOWebViewActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Ltw/com/mycard/paymentsdk/MyCardSDK;-><init>(Landroid/app/Activity;)V

    .line 387
    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebViewActivity;->access$600(Lcom/eogame/activity/EOWebViewActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-static {v1}, Lcom/eogame/activity/EOWebViewActivity;->access$500(Lcom/eogame/activity/EOWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltw/com/mycard/paymentsdk/MyCardSDK;->StartPayActivityForResult(ZLjava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d6\u5f97AuthCode\u5931\u6557\n \u932f\u8aa4\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/eogame/activity/EOWebViewActivity;->access$700(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 395
    :cond_1
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "result is null!"

    invoke-virtual {p1, v1, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$GetAuthCode;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    const-string v0, "\u53d6\u5f97AuthCode\u5931\u6557\n \u932f\u8aa4\uff1a\u7db2\u8def\u9023\u7dda\u5931\u6557"

    invoke-static {p1, v0}, Lcom/eogame/activity/EOWebViewActivity;->access$700(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
