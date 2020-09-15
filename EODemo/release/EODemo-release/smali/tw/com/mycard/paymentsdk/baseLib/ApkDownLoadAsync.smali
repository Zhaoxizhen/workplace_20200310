.class public Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;
.super Landroid/os/AsyncTask;
.source "ApkDownLoadAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private Pd:Landroid/app/ProgressDialog;

.field private act:Landroid/app/Activity;

.field private downloadurl:Ljava/lang/String;

.field private listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

.field msg:Ljava/lang/String;

.field private saveFilePath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    .line 30
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    .line 31
    check-cast p1, Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    .line 32
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-direct {p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    .line 33
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 34
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 36
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 37
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 41
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "PaymentApp.apk"

    if-eqz p1, :cond_0

    .line 42
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 45
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public CheckApkVersion(I)Z
    .locals 3

    .line 188
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v0, p1, :cond_0

    return v2

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v2
.end method

.method public deleteExternalStoragePrivateFile()V
    .locals 1

    .line 176
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .locals 13

    .line 57
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "isTest"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 58
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "isBeta"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    const-string p1, "https://test1api.mycard520.com.tw/MyCardApkDemoTest/PaymentApp.apk"

    .line 60
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->downloadurl:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f09\u5565\u7248>>>>>>>>>"

    const-string v1, "Test"

    .line 61
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    const-string p1, "https://api.mycard520.com.tw/MyCardApkBeta/PaymentApp.apk"

    .line 63
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->downloadurl:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f09\u5565\u7248>>>>>>>>>"

    const-string v1, "CPTest"

    .line 64
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    const-string p1, "https://api.mycard520.com.tw/MyCardApkDemoBeta/PaymentApp.apk"

    .line 66
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->downloadurl:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f09\u5565\u7248>>>>>>>>>"

    const-string v1, "Beta"

    .line 67
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "https://api.mycard520.com.tw/MyCardApk/PaymentApp.apk"

    .line 69
    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->downloadurl:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f09\u5565\u7248>>>>>>>>>"

    const-string v1, "Real"

    .line 70
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    :try_start_0
    new-instance p1, Ljava/net/URL;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->downloadurl:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    if-nez p1, :cond_3

    .line 77
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v1, 0x2710

    .line 80
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    .line 81
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 83
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 84
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    .line 85
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 86
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 87
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    .line 89
    new-array v4, v4, [B

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 92
    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 109
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 110
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v6, v8

    int-to-double v9, v6

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 95
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    int-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v11

    double-to-int v9, v9

    .line 96
    :try_start_1
    invoke-virtual {v3, v4, v2, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 98
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v6, v1, :cond_5

    if-eq v7, v9, :cond_5

    .line 105
    :try_start_2
    new-array v7, v0, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {p0, v7}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->publishProgress([Ljava/lang/Object;)V

    move v7, v9

    .line 98
    :cond_5
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    .line 114
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_7

    const-string p1, ""

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->msg:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->msg:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public fileIsExists()Z
    .locals 2

    .line 160
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "AppFileDownUtils"

    if-nez v0, :cond_0

    const-string v0, "File not exists"

    .line 161
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "File exists"

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public getApkVersion()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 206
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->saveFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 137
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->dismissProgressDialog(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "downSuc"

    if-eqz p1, :cond_0

    const-string p1, "MSG_FINISH"

    .line 139
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    invoke-interface {p1}, Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;->DownLoadFinish()V

    goto :goto_0

    :cond_0
    const-string p1, "MSG_FAILURE"

    .line 143
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->listener:Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;

    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->msg:Ljava/lang/String;

    invoke-interface {p1, v0}, Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;->DownLoadFailure(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 151
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->act:Landroid/app/Activity;

    iget-object v1, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->showProgressDialog(Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 127
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->Pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
