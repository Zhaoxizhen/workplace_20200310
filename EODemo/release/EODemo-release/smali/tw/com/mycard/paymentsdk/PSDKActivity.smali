.class public Ltw/com/mycard/paymentsdk/PSDKActivity;
.super Landroid/app/Activity;
.source "PSDKActivity.java"

# interfaces
.implements Ltw/com/mycard/paymentsdk/baseLib/SdkManager$SDKListener;


# static fields
.field public static isVer19ing:Z

.field public static strConfirm:Ljava/lang/String;

.field public static strFail:Ljava/lang/String;

.field public static strSuccess:Ljava/lang/String;

.field public static url:Ljava/lang/String;


# instance fields
.field private Asynctask:Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;

.field private DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

.field private Pd:Landroid/app/ProgressDialog;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "PSDKActivity"

    .line 25
    iput-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Asynctask:Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;

    return-void
.end method

.method static synthetic access$0(Ltw/com/mycard/paymentsdk/PSDKActivity;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->runCheckVersion()V

    return-void
.end method

.method private initProgressDialog()V
    .locals 2

    .line 198
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Pd:Landroid/app/ProgressDialog;

    .line 200
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Pd:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f09\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private logClassLoader(Ljava/lang/String;)V
    .locals 4

    .line 263
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 271
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 267
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    .line 269
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private resultOfPaymentHandle(ILandroid/content/Intent;)V
    .locals 4

    const-string v0, "PaySdkResult"

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 171
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt p1, v1, :cond_1

    .line 172
    sput-boolean v0, Ltw/com/mycard/paymentsdk/PSDKActivity;->isVer19ing:Z

    :cond_1
    const-string p1, "Success"

    .line 173
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ltw/com/mycard/paymentsdk/PSDKActivity;->strSuccess:Ljava/lang/String;

    const-string p1, "Fail"

    .line 174
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ltw/com/mycard/paymentsdk/PSDKActivity;->strFail:Ljava/lang/String;

    const-string p1, "Confirm"

    .line 175
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Ltw/com/mycard/paymentsdk/PSDKActivity;->strConfirm:Ljava/lang/String;

    .line 176
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "URL"

    .line 178
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Ltw/com/mycard/paymentsdk/PSDKActivity;->url:Ljava/lang/String;

    const/16 p2, 0x22b8

    .line 179
    invoke-virtual {p0, p1, p2}, Ltw/com/mycard/paymentsdk/PSDKActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/com/mycard/sdk/libs/PSDKApplication;

    iget-object p1, p1, Ltw/com/mycard/sdk/libs/PSDKApplication;->dataSchema:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 165
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/com/mycard/sdk/libs/PSDKApplication;

    const/4 p2, 0x0

    iput-object p2, p1, Ltw/com/mycard/sdk/libs/PSDKApplication;->dataSchema:Ljava/lang/String;

    .line 168
    :cond_3
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->finish()V

    goto :goto_0

    .line 159
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "***"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->finish()V

    :goto_0
    return-void
.end method

.method private runCheckVersion()V
    .locals 2

    .line 104
    new-instance v0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-direct {v0, p0}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    .line 106
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-virtual {v0}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->fileIsExists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;

    invoke-direct {v0, p0}, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Asynctask:Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;

    .line 108
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Asynctask:Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/CheckVersionAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    new-array v1, v1, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 2

    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 188
    sget-object v0, Ltw/com/mycard/paymentsdk/PSDKActivity;->strConfirm:Ljava/lang/String;

    new-instance v1, Ltw/com/mycard/paymentsdk/PSDKActivity$3;

    invoke-direct {v1, p0}, Ltw/com/mycard/paymentsdk/PSDKActivity$3;-><init>(Ltw/com/mycard/paymentsdk/PSDKActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public DoSyncResult(I)V
    .locals 1

    .line 301
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-virtual {v0, p1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->CheckApkVersion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    new-instance p1, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-direct {p1, p0}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    .line 304
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-virtual {p1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->deleteExternalStoragePrivateFile()V

    .line 305
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->openPaymentSDK()V

    :goto_0
    return-void
.end method

.method public DownLoadFailure(Ljava/lang/String;)V
    .locals 2

    .line 286
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 288
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 289
    new-instance p1, Ltw/com/mycard/paymentsdk/PSDKActivity$4;

    invoke-direct {p1, p0}, Ltw/com/mycard/paymentsdk/PSDKActivity$4;-><init>(Ltw/com/mycard/paymentsdk/PSDKActivity;)V

    const-string v1, "Ok"

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public DownLoadFinish()V
    .locals 0

    .line 280
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->openPaymentSDK()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKActivity.onActivityResult"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PSDKActivity.onActivityResult : requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-boolean v0, Ltw/com/mycard/paymentsdk/PSDKActivity;->isVer19ing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x22b8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x270f

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Ltw/com/mycard/sdk/libs/PSDKApplication;

    invoke-virtual {p1}, Ltw/com/mycard/sdk/libs/PSDKApplication;->RemoveApk()V

    .line 127
    invoke-direct {p0, p2, p3}, Ltw/com/mycard/paymentsdk/PSDKActivity;->resultOfPaymentHandle(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-eq p2, p1, :cond_5

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    .line 150
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->finish()V

    goto :goto_0

    .line 140
    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Ltw/com/mycard/paymentsdk/PSDKActivity$2;

    invoke-direct {p2, p0, p3}, Ltw/com/mycard/paymentsdk/PSDKActivity$2;-><init>(Ltw/com/mycard/paymentsdk/PSDKActivity;Landroid/content/Intent;)V

    const-wide/16 v0, 0x4b0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 136
    :cond_4
    sget-object p1, Ltw/com/mycard/paymentsdk/PSDKActivity;->strFail:Ljava/lang/String;

    invoke-direct {p0, p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_5
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "PaySdkResult"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "***"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltw/com/mycard/paymentsdk/PSDKActivity;->setResult(ILandroid/content/Intent;)V

    .line 133
    sget-object p1, Ltw/com/mycard/paymentsdk/PSDKActivity;->strSuccess:Ljava/lang/String;

    invoke-direct {p0, p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->showDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MyCardSDK"

    const-string v0, "PSDKActivity_onCreate()"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, -0x1

    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->setContentView(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->initProgressDialog()V

    .line 48
    iget-object p1, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ltw/com/mycard/paymentsdk/PSDKActivity$1;

    invoke-direct {v0, p0}, Ltw/com/mycard/paymentsdk/PSDKActivity$1;-><init>(Ltw/com/mycard/paymentsdk/PSDKActivity;)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKActivity.onDestroy"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKActivity.onPause()"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKActivity.onResume()"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKActivity.onStart()"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-boolean v0, Ltw/com/mycard/paymentsdk/PSDKActivity;->isVer19ing:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Ltw/com/mycard/sdk/libs/PSDKApplication;

    iget v0, v0, Ltw/com/mycard/sdk/libs/PSDKApplication;->wvResult:I

    .line 66
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Ltw/com/mycard/sdk/libs/PSDKApplication;

    iget-object v1, v1, Ltw/com/mycard/sdk/libs/PSDKApplication;->dataSchema:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    sput-boolean v2, Ltw/com/mycard/paymentsdk/PSDKActivity;->isVer19ing:Z

    .line 70
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Ltw/com/mycard/sdk/libs/PSDKApplication;

    iput v2, v3, Ltw/com/mycard/sdk/libs/PSDKApplication;->wvResult:I

    .line 71
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Ltw/com/mycard/sdk/libs/PSDKApplication;

    const/4 v3, 0x0

    iput-object v3, v2, Ltw/com/mycard/sdk/libs/PSDKApplication;->dataSchema:Ljava/lang/String;

    .line 72
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "PaySdkResult"

    .line 73
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x22b8

    .line 74
    invoke-virtual {p0, v1, v0, v2}, Ltw/com/mycard/paymentsdk/PSDKActivity;->onActivityResult(IILandroid/content/Intent;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKActivity.onStop()"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->Pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method public openPaymentSDK()V
    .locals 9

    const-string v0, "Param"

    const-string v1, "Count"

    const-string v2, "isTest"

    const-string v3, "isBeta"

    const-string v4, "AuthCode"

    const-string v5, "MyCardSDK"

    const-string v6, "LoadApk\u524d"

    .line 208
    invoke-direct {p0, v6}, Ltw/com/mycard/paymentsdk/PSDKActivity;->logClassLoader(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Ltw/com/mycard/sdk/libs/PSDKApplication;

    invoke-virtual {v6}, Ltw/com/mycard/sdk/libs/PSDKApplication;->LoadApk()V

    const-string v6, "LoadApk\u5f8c"

    .line 210
    invoke-direct {p0, v6}, Ltw/com/mycard/paymentsdk/PSDKActivity;->logClassLoader(Ljava/lang/String;)V

    const-string v6, "soft_world.mycard.paymentapp.ui.MainActivity"

    const/4 v7, 0x0

    .line 214
    :try_start_0
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 215
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Ver"

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-virtual {v4}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->getApkVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Ltw/com/mycard/sdk/libs/PSDKApplication;

    iget v4, v4, Ltw/com/mycard/sdk/libs/PSDKApplication;->sdkVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "PSDKActivity.openPaymentSDK: No other Bubdle parameters."

    .line 223
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 225
    :cond_0
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    :goto_1
    const/16 v0, 0x270f

    .line 230
    invoke-virtual {p0, v8, v0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 227
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PSDKActivity.openPaymentSDK: ClassNotFoundException"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    new-instance v0, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-direct {v0, p0}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    .line 236
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    invoke-virtual {v0}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->deleteExternalStoragePrivateFile()V

    .line 237
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/PSDKActivity;->DownLoadtask:Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;

    new-array v1, v7, [Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ltw/com/mycard/paymentsdk/baseLib/ApkDownLoadAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    return-void
.end method

.method public openPaymentSDKForFarEas(Ljava/lang/String;)V
    .locals 2

    const-string v0, "LoadApk\u524d"

    .line 243
    invoke-direct {p0, v0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->logClassLoader(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Ltw/com/mycard/sdk/libs/PSDKApplication;

    invoke-virtual {v0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->LoadApk()V

    const-string v0, "LoadApk\u5f8c"

    .line 245
    invoke-direct {p0, v0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->logClassLoader(Ljava/lang/String;)V

    const-string v0, "soft_world.mycard.paymentapp.ui.billing.BillingWebViewActivity"

    .line 251
    :try_start_0
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/PSDKActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Call_iStyle"

    .line 253
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x270f

    .line 255
    invoke-virtual {p0, v1, p1}, Ltw/com/mycard/paymentsdk/PSDKActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
