.class public Lcom/eogame/listener/EOPayEvent;
.super Ljava/lang/Object;
.source "EOPayEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/listener/EOPayEvent$PayEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EOPayEvent"

.field private static mPayEventListener:Lcom/eogame/listener/EOPayEvent$PayEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPayCancle()V
    .locals 1

    .line 29
    sget-object v0, Lcom/eogame/listener/EOPayEvent;->mPayEventListener:Lcom/eogame/listener/EOPayEvent$PayEventListener;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/eogame/listener/EOPayEvent$PayEventListener;->onCancle()V

    :cond_0
    return-void
.end method

.method public static onPayError(Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/eogame/listener/EOPayEvent;->mPayEventListener:Lcom/eogame/listener/EOPayEvent$PayEventListener;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p0}, Lcom/eogame/listener/EOPayEvent$PayEventListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onPaySuccess(Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-object v0, Lcom/eogame/listener/EOPayEvent;->mPayEventListener:Lcom/eogame/listener/EOPayEvent$PayEventListener;

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p0}, Lcom/eogame/listener/EOPayEvent$PayEventListener;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setListener(Landroid/content/Context;Lcom/eogame/listener/EOPayEvent$PayEventListener;)V
    .locals 0

    .line 19
    sput-object p1, Lcom/eogame/listener/EOPayEvent;->mPayEventListener:Lcom/eogame/listener/EOPayEvent$PayEventListener;

    return-void
.end method
