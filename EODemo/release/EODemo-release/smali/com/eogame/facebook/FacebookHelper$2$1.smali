.class Lcom/eogame/facebook/FacebookHelper$2$1;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/facebook/FacebookHelper$2;->loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/facebook/FacebookHelper$2;

.field final synthetic val$friendsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/eogame/facebook/FacebookHelper$2;Ljava/util/List;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->this$1:Lcom/eogame/facebook/FacebookHelper$2;

    iput-object p2, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->val$friendsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 8

    const-string v0, "data"

    .line 115
    iget-object v1, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->this$1:Lcom/eogame/facebook/FacebookHelper$2;

    iget-object v1, v1, Lcom/eogame/facebook/FacebookHelper$2;->val$context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->this$1:Lcom/eogame/facebook/FacebookHelper$2;

    iget-object v0, v0, Lcom/eogame/facebook/FacebookHelper$2;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 122
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->val$friendsList:Ljava/util/List;

    new-instance v4, Lcom/eogame/model/EOFacebookFriendsEntity;

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    .line 126
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "picture"

    .line 127
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "url"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v6, v2}, Lcom/eogame/model/EOFacebookFriendsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 130
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->this$1:Lcom/eogame/facebook/FacebookHelper$2;

    iget-object p1, p1, Lcom/eogame/facebook/FacebookHelper$2;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->val$friendsList:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsSuccess(Ljava/util/List;)V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->this$1:Lcom/eogame/facebook/FacebookHelper$2;

    iget-object v0, v0, Lcom/eogame/facebook/FacebookHelper$2;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    iget-object v1, p0, Lcom/eogame/facebook/FacebookHelper$2$1;->val$friendsList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsSuccess(Ljava/util/List;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
