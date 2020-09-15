.class public Ltw/com/mycard/paymentsdk/https/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewActivity"


# instance fields
.field private imgClose:Landroid/widget/ImageView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private buildButtonLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const-string v0, "WebViewActivity"

    const-string v1, "buildButtonLayoutParams()"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x35

    .line 161
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    .line 162
    invoke-static {p0, v1}, Ltw/com/mycard/paymentsdk/baseLib/UiUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 163
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private buildContentView()Landroid/view/View;
    .locals 4

    const-string v0, "WebViewActivity"

    const-string v1, "buildContentView()"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->buildFrameLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 140
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->buildWebViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgClose:Landroid/widget/ImageView;

    .line 144
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgClose:Landroid/widget/ImageView;

    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->buildButtonLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgClose:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgClose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private buildFrameLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private buildWebViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 155
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private imgCloseOnClick()V
    .locals 2

    .line 168
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgClose:Landroid/widget/ImageView;

    new-instance v1, Ltw/com/mycard/paymentsdk/https/WebViewActivity$1;

    invoke-direct {v1, p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$1;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismissProgress()V
    .locals 2

    const-string v0, "WebViewActivity"

    const-string v1, "dismissProgress()"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public initWebPage()V
    .locals 4

    const-string v0, "WebViewActivity"

    const-string v1, "initWebPage()"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    .line 179
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 180
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x0

    .line 181
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 182
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 183
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 184
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 185
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 186
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 188
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;

    invoke-direct {v2, p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$MyJavaScript;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity;)V

    const-string v3, "jsInterface"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ltw/com/mycard/paymentsdk/https/WebViewActivity$2;

    invoke-direct {v2, p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$2;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 229
    iget-object v1, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;

    invoke-direct {v2, p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity$3;-><init>(Ltw/com/mycard/paymentsdk/https/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ltw/com/mycard/paymentsdk/PSDKActivity;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->webView:Landroid/webkit/WebView;

    sget-object v1, Ltw/com/mycard/paymentsdk/PSDKActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "WebViewActivity"

    const-string v0, "onStart()"

    .line 46
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->showProgressDialog()V

    .line 48
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->buildContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->initWebPage()V

    .line 50
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->imgCloseOnClick()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "WebViewActivity"

    const-string v1, "onDestroy()"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->dismissProgress()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "WebViewActivity"

    const-string v1, "onNewIntent()"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->buildContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "returnCode"

    .line 107
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "PaySdkResult"

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "payResult"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setMyResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setMyResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :goto_0
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->finish()V

    return-void

    .line 96
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "WebViewActivity"

    const-string v1, "onPause()"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "WebViewActivity"

    const-string v1, "onResume()"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "WebViewActivity"

    const-string v1, "onStart()"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "WebViewActivity"

    const-string v1, "onStop()"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMyResult(ILandroid/content/Intent;)V
    .locals 3

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "wvResult"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "dataSchema"

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v1, "PaySdkResult"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    const-string v0, "WebViewActivity"

    const-string v1, "showProgressDialog()"

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 365
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 368
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 370
    :cond_0
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/https/WebViewActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    return-void
.end method
