.class public interface abstract Lcom/eogame/listener/EOLoginEvent$LoginEventListener;
.super Ljava/lang/Object;
.source "EOLoginEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/listener/EOLoginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginEventListener"
.end annotation


# virtual methods
.method public abstract onCancle()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLogout()V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
