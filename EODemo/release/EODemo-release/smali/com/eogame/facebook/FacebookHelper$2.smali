.class Lcom/eogame/facebook/FacebookHelper$2;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Lcom/eogame/listener/FacebookLoginApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/facebook/FacebookHelper;->getFacebookFriendsInfo(Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/facebook/FacebookHelper;

.field final synthetic val$callback:Lcom/eogame/listener/FacebookFriendsApi;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/eogame/facebook/FacebookHelper;Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/eogame/facebook/FacebookHelper$2;->this$0:Lcom/eogame/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginCancel()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 149
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    const-string v1, "user cancel"

    invoke-interface {v0, v1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    return-void
.end method

.method public loginFail(Ljava/lang/String;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 143
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$callback:Lcom/eogame/listener/FacebookFriendsApi;

    invoke-interface {v0, p1}, Lcom/eogame/listener/FacebookFriendsApi;->getFriendsFail(Ljava/lang/String;)V

    return-void
.end method

.method public loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$2;->val$context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v1, Lcom/eogame/model/EOFacebookFriendsEntity;

    invoke-direct {v1, p1, p2, p3}, Lcom/eogame/model/EOFacebookFriendsEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance p1, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    sget-object p3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const-string v1, "me/friends?fields=id,name,picture"

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v2, p3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 111
    new-instance p2, Lcom/eogame/facebook/FacebookHelper$2$1;

    invoke-direct {p2, p0, v0}, Lcom/eogame/facebook/FacebookHelper$2$1;-><init>(Lcom/eogame/facebook/FacebookHelper$2;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 137
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method
