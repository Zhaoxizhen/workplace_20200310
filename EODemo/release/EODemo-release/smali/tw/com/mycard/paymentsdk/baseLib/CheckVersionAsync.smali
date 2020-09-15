.class public Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;
.super Landroid/os/AsyncTask;
.source "CheckVersionAsync.java"


# annotations
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
.field private Pd:Landroid/app/ProgressDialog;

.field private act:Landroid/app/Activity;

.field private listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

.field private strResult:Ljava/lang/String;

.field private strUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    .line 24
    check-cast p1, Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    .line 25
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->initProgressDialog()V

    return-void
.end method

.method private initProgressDialog()V
    .locals 3

    .line 29
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    .line 30
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 31
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    const-string v2, "Loading..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 33
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 45
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isTest"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 46
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isBeta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    const-string p1, "https://test1api.mycard520.com.tw/MyBillingPaySDKAuthApi/Ver"

    .line 49
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "https://testapi.mycard520.com.tw/MyBillingPaySDKAuthApi/Ver"

    .line 51
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "https://api.mycard520.com.tw/MyBillingPaySDKAuthApi/Ver"

    if-eqz v0, :cond_2

    .line 55
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strUrl:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_2
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strUrl:Ljava/lang/String;

    .line 62
    :goto_0
    :try_start_0
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strUrl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltw/com/mycard/paymentsdk/https/CustomHttpURLConnection;->getByHttpURLConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :goto_1
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->strResult:Ljava/lang/String;

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 76
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->dismissProgressDialog(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;->DoSyncResult(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 81
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "CheckVersion_API Error"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 39
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->act:Landroid/app/Activity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->showProgressDialog(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    return-void
.end method
