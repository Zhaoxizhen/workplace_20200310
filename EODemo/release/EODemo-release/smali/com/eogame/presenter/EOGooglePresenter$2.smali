.class Lcom/eogame/presenter/EOGooglePresenter$2;
.super Ljava/lang/Object;
.source "EOGooglePresenter.java"

# interfaces
.implements Lcom/eogame/google/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOGooglePresenter;->consumePurchase()V
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

    .line 92
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$2;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/eogame/google/Purchase;Lcom/eogame/google/IabResult;)V
    .locals 2

    .line 95
    invoke-virtual {p2}, Lcom/eogame/google/IabResult;->isFailure()Z

    move-result v0

    const/16 v1, 0x2782

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$2;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p2}, Lcom/eogame/google/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    goto :goto_0

    .line 99
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$2;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Lcom/eogame/google/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p1

    const-string v0, "order_id"

    invoke-static {p1, v0}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2781

    invoke-static {p2, p1, v0}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    .line 100
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$2;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/eogame/presenter/EOGooglePresenter;->access$102(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;)Lcom/eogame/google/Purchase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$2;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method
