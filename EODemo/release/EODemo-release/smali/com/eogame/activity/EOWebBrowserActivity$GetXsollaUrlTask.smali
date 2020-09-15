.class Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;
.super Landroid/os/AsyncTask;
.source "EOWebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetXsollaUrlTask"
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
.field currency:Ljava/lang/String;

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
.method public constructor <init>(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 360
    iput-object p2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->url:Ljava/lang/String;

    .line 361
    iput-object p3, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->uid:Ljava/lang/String;

    .line 362
    iput-object p4, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->gameCode:Ljava/lang/String;

    .line 363
    iput-object p5, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->serverId:Ljava/lang/String;

    .line 364
    iput-object p6, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->price:Ljava/lang/String;

    .line 365
    iput-object p7, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->roleId:Ljava/lang/String;

    .line 366
    iput-object p8, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->roleName:Ljava/lang/String;

    .line 367
    iput-object p9, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->roleLevel:Ljava/lang/String;

    .line 368
    iput-object p10, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->currency:Ljava/lang/String;

    .line 369
    iput-object p11, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->packageName:Ljava/lang/String;

    .line 370
    iput-object p12, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->itemCode:Ljava/lang/String;

    .line 371
    iput-object p13, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->productName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 345
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 376
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    const-string v2, "EOWebBrowserActivity"

    const-string v3, "start to get paymentUrl"

    invoke-virtual {v1, v2, v3}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v4, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    iget-object v5, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->url:Ljava/lang/String;

    iget-object v6, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->uid:Ljava/lang/String;

    iget-object v7, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->gameCode:Ljava/lang/String;

    iget-object v8, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->serverId:Ljava/lang/String;

    iget-object v9, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->price:Ljava/lang/String;

    iget-object v10, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->roleId:Ljava/lang/String;

    iget-object v11, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->roleName:Ljava/lang/String;

    iget-object v12, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->roleLevel:Ljava/lang/String;

    iget-object v13, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->currency:Ljava/lang/String;

    iget-object v14, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->packageName:Ljava/lang/String;

    iget-object v15, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->itemCode:Ljava/lang/String;

    iget-object v1, v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->productName:Ljava/lang/String;

    move-object/from16 v16, v1

    invoke-static/range {v4 .. v16}, Lcom/eogame/activity/EOWebBrowserActivity;->access$300(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
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

.method protected onCancelled()V
    .locals 0

    .line 427
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 345
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 384
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 385
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

    .line 387
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebBrowserActivity;->access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebBrowserActivity;->access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1;

    invoke-direct {v0, p0}, Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask$1;-><init>(Lcom/eogame/activity/EOWebBrowserActivity$GetXsollaUrlTask;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
