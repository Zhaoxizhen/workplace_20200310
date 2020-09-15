.class Lcom/eogame/presenter/EOSDKPresenter$1;
.super Lcom/eogame/utils/EOThread;
.source "EOSDKPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOSDKPresenter;->update(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOSDKPresenter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter;Landroid/content/Context;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    iput-object p2, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOSDKPresenter;->access$000(Lcom/eogame/presenter/EOSDKPresenter;)Z

    move-result v0

    const-string v1, "\u78ba\u5b9a"

    const-string v2, "\u662f\u5426\u5f00\u59cb\u4e0b\u8f7d\u65b0\u7248\u672c\uff1f"

    const-string v3, "\u53d1\u73b0\u65b0\u7248\u672c!"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 130
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/eogame/presenter/EOSDKPresenter$1$1;

    invoke-direct {v2, p0}, Lcom/eogame/presenter/EOSDKPresenter$1$1;-><init>(Lcom/eogame/presenter/EOSDKPresenter$1;)V

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 142
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    .line 145
    :cond_0
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/web/EOWebApiImpl;->checkUpdate()Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/eogame/presenter/EOSDKPresenter$1;->isDestory()Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 152
    :cond_1
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v4

    const/16 v5, 0x2710

    if-ne v4, v5, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v4, "apkUrl"

    .line 155
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "title"

    .line 156
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "desc"

    .line 157
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v6, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/eogame/utils/EOPackageUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 159
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 160
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/eogame/presenter/EOSDKPresenter$1$2;

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/eogame/presenter/EOSDKPresenter$1$2;-><init>(Lcom/eogame/presenter/EOSDKPresenter$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 168
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "\u672a\u53d1\u73b0\u66f4\u65b0"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    :cond_3
    :goto_0
    return-void
.end method
