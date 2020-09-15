.class Lcom/eogame/facebook/FacebookHelper$3;
.super Ljava/lang/Object;
.source "FacebookHelper.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/facebook/FacebookHelper;->facebookShare(Landroid/app/Activity;Lcom/eogame/listener/FacebookShareApi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/facebook/FacebookHelper;

.field final synthetic val$callback:Lcom/eogame/listener/FacebookShareApi;


# direct methods
.method constructor <init>(Lcom/eogame/facebook/FacebookHelper;Lcom/eogame/listener/FacebookShareApi;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/eogame/facebook/FacebookHelper$3;->this$0:Lcom/eogame/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/eogame/facebook/FacebookHelper$3;->val$callback:Lcom/eogame/listener/FacebookShareApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/eogame/facebook/FacebookHelper$3;->val$callback:Lcom/eogame/listener/FacebookShareApi;

    invoke-interface {v0}, Lcom/eogame/listener/FacebookShareApi;->shareCancel()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 0

    .line 170
    iget-object p1, p0, Lcom/eogame/facebook/FacebookHelper$3;->val$callback:Lcom/eogame/listener/FacebookShareApi;

    invoke-interface {p1}, Lcom/eogame/listener/FacebookShareApi;->shareFail()V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/eogame/facebook/FacebookHelper$3;->val$callback:Lcom/eogame/listener/FacebookShareApi;

    invoke-interface {p1}, Lcom/eogame/listener/FacebookShareApi;->shareSuccess()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/eogame/facebook/FacebookHelper$3;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
