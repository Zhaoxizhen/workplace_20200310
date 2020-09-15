.class Lcom/eogame/presenter/EOGooglePresenter$4;
.super Ljava/lang/Object;
.source "EOGooglePresenter.java"

# interfaces
.implements Lcom/eogame/google/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/presenter/EOGooglePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOGooglePresenter;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOGooglePresenter;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$4;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/eogame/google/IabResult;Lcom/eogame/google/Purchase;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/eogame/google/IabResult;->isFailure()Z

    move-result v0

    const/16 v1, 0x277f

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/eogame/google/IabResult;->getResponse()I

    move-result p2

    const/16 v0, -0x3ed

    if-ne p2, v0, :cond_0

    .line 176
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$4;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    const/4 p2, 0x0

    const/16 v0, 0x2780

    invoke-static {p1, p2, v0}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$4;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Lcom/eogame/google/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$4;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-static {p1, p2}, Lcom/eogame/presenter/EOGooglePresenter;->access$102(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;)Lcom/eogame/google/Purchase;

    .line 184
    :try_start_0
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$4;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    const/16 v0, 0x277e

    invoke-static {p1, p2, v0}, Lcom/eogame/presenter/EOGooglePresenter;->access$300(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$4;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method
