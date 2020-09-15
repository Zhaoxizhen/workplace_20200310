.class Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;
.super Landroid/os/AsyncTask;
.source "EOWebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetRazerUrlTask"
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
.field amount:Ljava/lang/String;

.field channelId:Ljava/lang/String;

.field currencyCode:Ljava/lang/String;

.field gameCode:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field roleId:Ljava/lang/String;

.field roleLevel:Ljava/lang/String;

.field roleName:Ljava/lang/String;

.field serverId:Ljava/lang/String;

.field final synthetic this$0:Lcom/eogame/activity/EOWebBrowserActivity;

.field uid:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->url:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->uid:Ljava/lang/String;

    .line 241
    iput-object p4, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->gameCode:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->serverId:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->amount:Ljava/lang/String;

    .line 244
    iput-object p7, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->roleId:Ljava/lang/String;

    .line 245
    iput-object p8, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->roleName:Ljava/lang/String;

    .line 246
    iput-object p9, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->roleLevel:Ljava/lang/String;

    .line 247
    iput-object p10, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->channelId:Ljava/lang/String;

    .line 248
    iput-object p11, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->currencyCode:Ljava/lang/String;

    .line 249
    iput-object p12, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 225
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 254
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string v0, "EOWebBrowserActivity"

    const-string v1, "start to get paymentUrl"

    invoke-virtual {p1, v0, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    iget-object v3, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->gameCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->serverId:Ljava/lang/String;

    iget-object v7, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->amount:Ljava/lang/String;

    iget-object v8, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->roleId:Ljava/lang/String;

    iget-object v9, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->roleName:Ljava/lang/String;

    iget-object v10, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->roleLevel:Ljava/lang/String;

    iget-object v11, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->channelId:Ljava/lang/String;

    iget-object v12, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->currencyCode:Ljava/lang/String;

    iget-object v13, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->packageName:Ljava/lang/String;

    invoke-static/range {v2 .. v13}, Lcom/eogame/activity/EOWebBrowserActivity;->access$100(Lcom/eogame/activity/EOWebBrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 306
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 261
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 262
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

    .line 264
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebBrowserActivity;->access$000(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebBrowserActivity;->access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;->this$0:Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebBrowserActivity;->access$200(Lcom/eogame/activity/EOWebBrowserActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;

    invoke-direct {v0, p0}, Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask$1;-><init>(Lcom/eogame/activity/EOWebBrowserActivity$GetRazerUrlTask;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
