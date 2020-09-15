.class Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;
.super Ljava/lang/Object;
.source "WVJBWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/model/WVJBWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WVJBMessage"
.end annotation


# instance fields
.field callbackId:Ljava/lang/String;

.field data:Ljava/lang/Object;

.field handlerName:Ljava/lang/String;

.field responseData:Ljava/lang/Object;

.field responseId:Ljava/lang/String;

.field final synthetic this$0:Lcom/eogame/model/WVJBWebViewClient;


# direct methods
.method private constructor <init>(Lcom/eogame/model/WVJBWebViewClient;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 331
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->data:Ljava/lang/Object;

    .line 332
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    .line 333
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    .line 335
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$1;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;-><init>(Lcom/eogame/model/WVJBWebViewClient;)V

    return-void
.end method
