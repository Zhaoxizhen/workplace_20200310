.class Lcom/eogame/presenter/EOSDKPresenter$2;
.super Ljava/lang/Object;
.source "EOSDKPresenter.java"

# interfaces
.implements Lcom/eogame/listener/EOLoginEvent$LoginEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOSDKPresenter;->login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOSDKPresenter;

.field final synthetic val$loginCallback:Lcom/eogame/listener/LoginCallback;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter;Lcom/eogame/listener/LoginCallback;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    iput-object p2, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->val$loginCallback:Lcom/eogame/listener/LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eogame/presenter/EOSDKPresenter;->access$202(Lcom/eogame/presenter/EOSDKPresenter;Z)Z

    .line 265
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->val$loginCallback:Lcom/eogame/listener/LoginCallback;

    invoke-interface {v0}, Lcom/eogame/listener/LoginCallback;->onCancle()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eogame/presenter/EOSDKPresenter;->access$202(Lcom/eogame/presenter/EOSDKPresenter;Z)Z

    .line 271
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->val$loginCallback:Lcom/eogame/listener/LoginCallback;

    invoke-interface {v0, p1}, Lcom/eogame/listener/LoginCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onLogout()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eogame/presenter/EOSDKPresenter;->access$102(Lcom/eogame/presenter/EOSDKPresenter;Z)Z

    .line 277
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->val$loginCallback:Lcom/eogame/listener/LoginCallback;

    invoke-interface {v0}, Lcom/eogame/listener/LoginCallback;->onLogout()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eogame/presenter/EOSDKPresenter;->access$102(Lcom/eogame/presenter/EOSDKPresenter;Z)Z

    .line 258
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/eogame/presenter/EOSDKPresenter;->access$202(Lcom/eogame/presenter/EOSDKPresenter;Z)Z

    .line 259
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$2;->val$loginCallback:Lcom/eogame/listener/LoginCallback;

    invoke-interface {v0, p1}, Lcom/eogame/listener/LoginCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
