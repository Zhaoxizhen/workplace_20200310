.class Lcom/eogame/facebook/FacebookHelper$4;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/facebook/FacebookHelper;->getFacebookUserInfo(Lcom/facebook/AccessToken;Lcom/eogame/listener/FacebookLoginApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/facebook/FacebookHelper;

.field final synthetic val$callback:Lcom/eogame/listener/FacebookLoginApi;


# direct methods
.method constructor <init>(Lcom/eogame/facebook/FacebookHelper;Lcom/eogame/listener/FacebookLoginApi;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/eogame/facebook/FacebookHelper$4;->this$0:Lcom/eogame/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/eogame/facebook/FacebookHelper$4;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    .line 195
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$4;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/eogame/listener/FacebookLoginApi;->loginFail(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$4;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "picture"

    .line 203
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-interface {v0, v1, v2, p1}, Lcom/eogame/listener/FacebookLoginApi;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    iget-object p1, p0, Lcom/eogame/facebook/FacebookHelper$4;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    const-string v0, "result data has error"

    invoke-interface {p1, v0}, Lcom/eogame/listener/FacebookLoginApi;->loginFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
