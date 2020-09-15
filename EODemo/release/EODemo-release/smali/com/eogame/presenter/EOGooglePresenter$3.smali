.class Lcom/eogame/presenter/EOGooglePresenter$3;
.super Ljava/lang/Object;
.source "EOGooglePresenter.java"

# interfaces
.implements Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;


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

    .line 148
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/eogame/google/IabResult;Lcom/eogame/google/Inventory;)V
    .locals 2

    .line 151
    invoke-virtual {p1}, Lcom/eogame/google/IabResult;->isFailure()Z

    move-result v0

    const/16 v1, 0x277b

    if-eqz v0, :cond_0

    .line 152
    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Lcom/eogame/google/IabResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    return-void

    .line 156
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOGooglePresenter;->access$200(Lcom/eogame/presenter/EOGooglePresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/eogame/google/Inventory;->getPurchase(Ljava/lang/String;)Lcom/eogame/google/Purchase;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/presenter/EOGooglePresenter;->access$102(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;)Lcom/eogame/google/Purchase;

    .line 157
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-static {p1}, Lcom/eogame/presenter/EOGooglePresenter;->access$100(Lcom/eogame/presenter/EOGooglePresenter;)Lcom/eogame/google/Purchase;

    move-result-object p1

    if-nez p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    const-string p2, "no have purchase to re pay!"

    invoke-static {p1, p2, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-static {p2}, Lcom/eogame/presenter/EOGooglePresenter;->access$100(Lcom/eogame/presenter/EOGooglePresenter;)Lcom/eogame/google/Purchase;

    move-result-object p2

    const/16 v0, 0x277a

    invoke-static {p1, p2, v0}, Lcom/eogame/presenter/EOGooglePresenter;->access$300(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    iget-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter$3;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method
