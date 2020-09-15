.class public Lcom/eogame/listener/EOLoginEvent;
.super Ljava/lang/Object;
.source "EOLoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/listener/EOLoginEvent$LoginEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EOLoginEvent"

.field private static mContext:Landroid/content/Context;

.field private static mLoginEventListener:Lcom/eogame/listener/EOLoginEvent$LoginEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onLoginCancle()V
    .locals 1

    .line 37
    sget-object v0, Lcom/eogame/listener/EOLoginEvent;->mLoginEventListener:Lcom/eogame/listener/EOLoginEvent$LoginEventListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/eogame/listener/EOLoginEvent$LoginEventListener;->onCancle()V

    :cond_0
    return-void
.end method

.method public static onLoginError(Ljava/lang/String;)V
    .locals 1

    .line 44
    sget-object v0, Lcom/eogame/listener/EOLoginEvent;->mLoginEventListener:Lcom/eogame/listener/EOLoginEvent$LoginEventListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0}, Lcom/eogame/listener/EOLoginEvent$LoginEventListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    sget-object p2, Lcom/eogame/listener/EOLoginEvent;->mLoginEventListener:Lcom/eogame/listener/EOLoginEvent$LoginEventListener;

    if-eqz p2, :cond_0

    .line 30
    invoke-interface {p2, p1}, Lcom/eogame/listener/EOLoginEvent$LoginEventListener;->onSuccess(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/eogame/presenter/EOLogPresenter;->getInstance()Lcom/eogame/presenter/EOLogPresenter;

    move-result-object p1

    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/eogame/presenter/EOLogPresenter;->sendLogin(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/eogame/utils/AppflyerUtil;->getInstance()Lcom/eogame/utils/AppflyerUtil;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/eogame/utils/AppflyerUtil;->login(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onLogout()V
    .locals 1

    .line 51
    sget-object v0, Lcom/eogame/listener/EOLoginEvent;->mLoginEventListener:Lcom/eogame/listener/EOLoginEvent$LoginEventListener;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0}, Lcom/eogame/listener/EOLoginEvent$LoginEventListener;->onLogout()V

    :cond_0
    return-void
.end method

.method public static setListener(Landroid/content/Context;Lcom/eogame/listener/EOLoginEvent$LoginEventListener;)V
    .locals 0

    .line 24
    sput-object p1, Lcom/eogame/listener/EOLoginEvent;->mLoginEventListener:Lcom/eogame/listener/EOLoginEvent$LoginEventListener;

    .line 25
    sput-object p0, Lcom/eogame/listener/EOLoginEvent;->mContext:Landroid/content/Context;

    return-void
.end method
