.class Lcom/eogame/sdk/EOSDK$1;
.super Ljava/lang/Object;
.source "EOSDK.java"

# interfaces
.implements Lcom/eogame/listener/FacebookFriendsApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/sdk/EOSDK;->getFacebookFriends(Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/sdk/EOSDK;

.field final synthetic val$callback:Lcom/eogame/listener/FacebookFriendsApi;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/eogame/sdk/EOSDK;Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/eogame/sdk/EOSDK$1;->this$0:Lcom/eogame/sdk/EOSDK;

    iput-object p2, p0, Lcom/eogame/sdk/EOSDK$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendsFail(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-interface {v0, p1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    return-void
.end method

.method public getFriendsSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/eogame/model/EOFacebookFriendsEntity;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1;->val$context:Landroid/app/Activity;

    const-string v1, "eo_loading"

    invoke-static {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 184
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eogame/model/EOFacebookFriendsEntity;

    .line 187
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"fid\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/eogame/model/EOFacebookFriendsEntity;->userId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 193
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/eogame/sdk/EOSDK$1$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/eogame/sdk/EOSDK$1$1;-><init>(Lcom/eogame/sdk/EOSDK$1;Ljava/lang/String;Ljava/util/List;)V

    .line 235
    invoke-virtual {v1}, Lcom/eogame/utils/EOThread;->start()V

    goto :goto_1

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    const-string v0, "no have friends"

    invoke-interface {p1, v0}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
