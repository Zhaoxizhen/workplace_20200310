.class Lcom/eogame/google/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/google/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/google/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$moreSubsSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/eogame/google/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/eogame/google/IabHelper$2;->this$0:Lcom/eogame/google/IabHelper;

    iput-boolean p2, p0, Lcom/eogame/google/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/eogame/google/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/eogame/google/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/eogame/google/IabHelper$2;->val$listener:Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/eogame/google/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 694
    new-instance v0, Lcom/eogame/google/IabResult;

    const/4 v1, 0x0

    const-string v2, "Inventory refresh successful."

    invoke-direct {v0, v1, v2}, Lcom/eogame/google/IabResult;-><init>(ILjava/lang/String;)V

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/eogame/google/IabHelper$2;->this$0:Lcom/eogame/google/IabHelper;

    iget-boolean v2, p0, Lcom/eogame/google/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Lcom/eogame/google/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v4, p0, Lcom/eogame/google/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/eogame/google/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/eogame/google/Inventory;

    move-result-object v1
    :try_end_0
    .catch Lcom/eogame/google/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 700
    invoke-virtual {v0}, Lcom/eogame/google/IabException;->getResult()Lcom/eogame/google/IabResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 703
    :goto_0
    iget-object v2, p0, Lcom/eogame/google/IabHelper$2;->this$0:Lcom/eogame/google/IabHelper;

    invoke-virtual {v2}, Lcom/eogame/google/IabHelper;->flagEndAsync()V

    .line 707
    iget-object v2, p0, Lcom/eogame/google/IabHelper$2;->this$0:Lcom/eogame/google/IabHelper;

    iget-boolean v2, v2, Lcom/eogame/google/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/eogame/google/IabHelper$2;->val$listener:Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/eogame/google/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/eogame/google/IabHelper$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/eogame/google/IabHelper$2$1;-><init>(Lcom/eogame/google/IabHelper$2;Lcom/eogame/google/IabResult;Lcom/eogame/google/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
