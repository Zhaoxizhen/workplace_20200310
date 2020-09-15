.class Lcom/eogame/sdk/EOSDK$1$1;
.super Lcom/eogame/utils/EOThread;
.source "EOSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/sdk/EOSDK$1;->getFriendsSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/sdk/EOSDK$1;

.field final synthetic val$friends:Ljava/util/List;

.field final synthetic val$jsonArray:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/sdk/EOSDK$1;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iput-object p2, p0, Lcom/eogame/sdk/EOSDK$1$1;->val$jsonArray:Ljava/lang/String;

    iput-object p3, p0, Lcom/eogame/sdk/EOSDK$1$1;->val$friends:Ljava/util/List;

    invoke-direct {p0}, Lcom/eogame/utils/EOThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v1, v0, Lcom/eogame/sdk/EOSDK$1;->val$context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v0, v0, Lcom/eogame/sdk/EOSDK$1;->val$context:Landroid/app/Activity;

    const-string v2, "eo_loading"

    invoke-static {v0, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V

    .line 197
    invoke-static {}, Lcom/eogame/web/EOWebApiImpl;->instance()Lcom/eogame/web/EOWebApiImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/sdk/EOSDK$1$1;->val$jsonArray:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/web/EOWebApiImpl;->getUserIdsForFacebookIds(Ljava/lang/String;)Lcom/eogame/model/HttpResult;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v1, v1, Lcom/eogame/sdk/EOSDK$1;->val$context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 199
    invoke-virtual {p0}, Lcom/eogame/sdk/EOSDK$1$1;->isDestory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getCode()I

    move-result v1

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_5

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :try_start_0
    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getmJsonData()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 209
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 210
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "fid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/eogame/sdk/EOSDK$1$1;->val$friends:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/eogame/model/EOFacebookFriendsEntity;

    .line 212
    iget-object v7, v6, Lcom/eogame/model/EOFacebookFriendsEntity;->userId:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    iget-object v4, p0, Lcom/eogame/sdk/EOSDK$1$1;->val$friends:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/eogame/model/EOFacebookFriendsEntity;->userId:Ljava/lang/String;

    .line 215
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v0, v0, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-interface {v0, v1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsSuccess(Ljava/util/List;)V

    goto :goto_1

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v0, v0, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    const-string v1, "no friends in game"

    invoke-interface {v0, v1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 227
    iget-object v0, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v0, v0, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    const-string v1, "data error"

    invoke-interface {v0, v1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :cond_5
    iget-object v1, p0, Lcom/eogame/sdk/EOSDK$1$1;->this$1:Lcom/eogame/sdk/EOSDK$1;

    iget-object v1, v1, Lcom/eogame/sdk/EOSDK$1;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-virtual {v0}, Lcom/eogame/model/HttpResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
