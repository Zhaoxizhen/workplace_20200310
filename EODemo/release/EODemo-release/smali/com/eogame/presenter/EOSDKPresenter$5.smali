.class Lcom/eogame/presenter/EOSDKPresenter$5;
.super Lcom/eogame/utils/EOThread;
.source "EOSDKPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOSDKPresenter;->initServiceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOSDKPresenter;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$5;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 449
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/web/EOWebApiImpl;->init()Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 450
    invoke-virtual {p0}, Lcom/eogame/presenter/EOSDKPresenter$5;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_1

    .line 454
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "fu"

    .line 456
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/eogame/constants/EOCommon;->serviceFbFans:Ljava/lang/String;

    const-string v1, "csemail"

    .line 457
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/EOCommon;->serviceEmail:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
