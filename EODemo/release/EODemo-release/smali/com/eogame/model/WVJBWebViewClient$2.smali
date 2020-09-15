.class Lcom/eogame/model/WVJBWebViewClient$2;
.super Ljava/lang/Object;
.source "WVJBWebViewClient.java"

# interfaces
.implements Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/model/WVJBWebViewClient;->processQueueMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/model/WVJBWebViewClient;

.field final synthetic val$callbackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/model/WVJBWebViewClient;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$2;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    iput-object p2, p0, Lcom/eogame/model/WVJBWebViewClient$2;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Object;)V
    .locals 3

    .line 234
    new-instance v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;

    iget-object v1, p0, Lcom/eogame/model/WVJBWebViewClient$2;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;-><init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$1;)V

    .line 235
    iget-object v1, p0, Lcom/eogame/model/WVJBWebViewClient$2;->val$callbackId:Ljava/lang/String;

    iput-object v1, v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    .line 236
    iput-object p1, v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseData:Ljava/lang/Object;

    .line 237
    iget-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$2;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    invoke-static {p1, v0}, Lcom/eogame/model/WVJBWebViewClient;->access$300(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V

    return-void
.end method
