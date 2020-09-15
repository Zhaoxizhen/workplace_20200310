.class public interface abstract Lcom/eogame/listener/EOPayEvent$PayEventListener;
.super Ljava/lang/Object;
.source "EOPayEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/listener/EOPayEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PayEventListener"
.end annotation


# virtual methods
.method public abstract onCancle()V
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;)V
.end method
