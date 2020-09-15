.class public Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;
.super Landroid/os/AsyncTask;
.source "TreatyAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private Pd:Landroid/app/ProgressDialog;

.field private act:Landroid/app/Activity;

.field private isDownloadException:Z

.field private listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

.field private strException:Ljava/lang/String;

.field private strResult:Ljava/lang/String;

.field private strUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strResult:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    .line 29
    check-cast p1, Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    .line 30
    iput-boolean p2, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->isDownloadException:Z

    .line 31
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->initProgressDialog()V

    return-void
.end method

.method private initProgressDialog()V
    .locals 3

    .line 35
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    .line 36
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 37
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    const-string v2, "Loading..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 39
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private makeTreatyJson()Ljava/lang/String;
    .locals 5

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "mbs03"

    .line 80
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "mbs04"

    .line 81
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :try_start_0
    const-string v2, "ver"

    const-string v3, "V1"

    .line 83
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locale"

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "typeId"

    .line 85
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 51
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isTest"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 52
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isBeta"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p1, :cond_1

    const-string p1, "https://testapi.mycard520.com.tw/MyCardMemberForAPPV2/api/MemberAPI/MyCardAppTreaty/"

    if-eqz v1, :cond_0

    .line 55
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strUrl:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_0
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "https://api.mycard520.com.tw/MyCardMemberForAPPV2/api/MemberAPI/MyCardAppTreaty/"

    if-eqz v1, :cond_2

    .line 61
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strUrl:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_2
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strUrl:Ljava/lang/String;

    .line 68
    :goto_0
    :try_start_0
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strUrl:Ljava/lang/String;

    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->makeTreatyJson()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ltw/com/mycard/paymentsdk/https/CustomHttpURLConnection;->postByHttpURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strException:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 99
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->dismissProgressDialog(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->strException:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 45
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->act:Landroid/app/Activity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/TreatyAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->showProgressDialog(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    return-void
.end method
