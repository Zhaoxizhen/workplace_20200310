.class Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;
.super Landroid/os/AsyncTask;
.source "EOWebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetCodaPayUrlTask"
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
.field channelId:Ljava/lang/String;

.field currencyCode:Ljava/lang/String;

.field gameCode:Ljava/lang/String;

.field itemCode:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field price:Ljava/lang/String;

.field productName:Ljava/lang/String;

.field roleId:Ljava/lang/String;

.field roleLevel:Ljava/lang/String;

.field roleName:Ljava/lang/String;

.field serverId:Ljava/lang/String;

.field final synthetic this$0:Lcom/eogame/activity/EOWebBrowserActivity;

.field uid:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 503
    iput-object p2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->url:Ljava/lang/String;

    .line 504
    iput-object p3, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->uid:Ljava/lang/String;

    .line 505
    iput-object p4, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->gameCode:Ljava/lang/String;

    .line 506
    iput-object p5, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->serverId:Ljava/lang/String;

    .line 507
    iput-object p6, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->price:Ljava/lang/String;

    .line 508
    iput-object p7, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleName:Ljava/lang/String;

    .line 509
    iput-object p8, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleLevel:Ljava/lang/String;

    .line 510
    iput-object p9, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->channelId:Ljava/lang/String;

    .line 511
    iput-object p10, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->currencyCode:Ljava/lang/String;

    .line 512
    iput-object p11, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->itemCode:Ljava/lang/String;

    .line 513
    iput-object p12, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleId:Ljava/lang/String;

    .line 514
    iput-object p13, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->packageName:Ljava/lang/String;

    .line 515
    iput-object p14, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->productName:Ljava/lang/String;

    .line 516
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Codapay param"

    invoke-virtual {p1, p3, p2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 468
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 521
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    const-string v2, "EOWebBrowserActivity"

    const-string v3, "start to get paymentUrl"

    invoke-virtual {v1, v2, v3}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v4, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    iget-object v5, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->url:Ljava/lang/String;

    iget-object v6, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->uid:Ljava/lang/String;

    iget-object v7, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->gameCode:Ljava/lang/String;

    iget-object v8, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->serverId:Ljava/lang/String;

    iget-object v9, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->price:Ljava/lang/String;

    iget-object v10, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleName:Ljava/lang/String;

    iget-object v11, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleLevel:Ljava/lang/String;

    iget-object v12, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->channelId:Ljava/lang/String;

    iget-object v13, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->currencyCode:Ljava/lang/String;

    iget-object v14, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->itemCode:Ljava/lang/String;

    iget-object v15, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleId:Ljava/lang/String;

    iget-object v1, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->productName:Ljava/lang/String;

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    invoke-static/range {v4 .. v17}, Lcom/eogame/activity/EOWebBrowserActivity;->access$400(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "paymentUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 468
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 531
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 532
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "paymentUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EOWebBrowserActivity"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&browser_type=mobile-web"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebBrowserActivity;->access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebBrowserActivity;->access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask$1;

    invoke-direct {v0, p0}, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask$1;-><init>(Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCodaPayUrlTask{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", gameCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->gameCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", serverId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->price:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", roleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", roleLevel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channelId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", currencyCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->itemCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", roleId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", productName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetCodaPayUrlTask;->productName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
