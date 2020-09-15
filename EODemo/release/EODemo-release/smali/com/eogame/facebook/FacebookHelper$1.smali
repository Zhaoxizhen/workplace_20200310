.class Lcom/eogame/facebook/FacebookHelper$1;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/facebook/FacebookHelper;->loginFacebook(Landroid/app/Activity;ZLcom/eogame/listener/FacebookLoginApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/facebook/FacebookHelper;

.field final synthetic val$callback:Lcom/eogame/listener/FacebookLoginApi;


# direct methods
.method constructor <init>(Lcom/eogame/facebook/FacebookHelper;Lcom/eogame/listener/FacebookLoginApi;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/eogame/facebook/FacebookHelper$1;->this$0:Lcom/eogame/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/eogame/facebook/FacebookHelper$1;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$1;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    invoke-interface {v0}, Lcom/eogame/listener/FacebookLoginApi;->loginCancel()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$1;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/eogame/listener/FacebookLoginApi;->loginFail(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$1;->this$0:Lcom/eogame/facebook/FacebookHelper;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    iget-object v1, p0, Lcom/eogame/facebook/FacebookHelper$1;->val$callback:Lcom/eogame/listener/FacebookLoginApi;

    invoke-static {v0, p1, v1}, Lcom/eogame/facebook/FacebookHelper;->access$000(Lcom/eogame/facebook/FacebookHelper;Lcom/facebook/AccessToken;Lcom/eogame/listener/FacebookLoginApi;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/eogame/facebook/FacebookHelper$1;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
