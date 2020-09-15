.class Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;
.super Landroid/os/AsyncTask;
.source "EOWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MycardPayBack"
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
.method public constructor <init>(Lcom/eogame/activity/EOWebViewActivity;Landroid/content/ContentValues;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, "http://pay.eohfun.com/pay/mycardBillingPayBackTw.do"

    .line 531
    iput-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->Url:Ljava/lang/String;

    .line 535
    iput-object p2, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->contentValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 530
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 542
    :try_start_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "eopayback"

    const-string v1, "start send payback!"

    invoke-virtual {p1, v0, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->Url:Ljava/lang/String;

    iget-object v0, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->contentValues:Landroid/content/ContentValues;

    invoke-static {p1, v0}, Ltw/com/mycard/paymentsdk/https/CustomHttpURLConnection;->postByHttpURLConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 545
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    const-string v0, "strResult:"

    if-nez p1, :cond_0

    .line 548
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    const-string v2, "strResult is null!"

    invoke-virtual {v1, v0, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 550
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 557
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 530
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    const-string v0, "code"

    const-string v1, "eoresult"

    if-eqz p1, :cond_1

    .line 566
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x2710

    if-ne p1, v1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    const-string v0, "\u4ea4\u6613\u6210\u529f\uff01"

    invoke-static {p1, v0}, Lcom/eogame/activity/EOWebViewActivity;->access$700(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4ea4\u6613\u5931\u8d25\n \u932f\u8aa4\uff1a"

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

    .line 574
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 577
    :cond_1
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "payback result is null!"

    invoke-virtual {p1, v1, v0}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object p1, p0, Lcom/eogame/activity/EOWebViewActivity$MycardPayBack;->this$0:Lcom/eogame/activity/EOWebViewActivity;

    const-string v0, "\u4ea4\u6613\u5931\u8d25\n \u932f\u8aa4\uff1a\u7db2\u8def\u9023\u7dda\u5931\u6557"

    invoke-static {p1, v0}, Lcom/eogame/activity/EOWebViewActivity;->access$700(Lcom/eogame/activity/EOWebViewActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
