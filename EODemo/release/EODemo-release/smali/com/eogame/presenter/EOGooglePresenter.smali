.class public Lcom/eogame/presenter/EOGooglePresenter;
.super Ljava/lang/Object;
.source "EOGooglePresenter.java"


# static fields
.field private static final CODE_GOOGEL_PLAY:I = 0x5b78

.field private static final KEY_OREDER_ID:Ljava/lang/String; = "order_id"


# instance fields
.field private currentPurchase:Lcom/eogame/google/Purchase;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/app/Activity;

.field private mGetInventoryListener:Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;

.field private mIabHelper:Lcom/eogame/google/IabHelper;

.field private mPurchaseFinishedListener:Lcom/eogame/google/IabHelper$OnIabPurchaseFinishedListener;

.field private skuID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/eogame/presenter/EOGooglePresenter$3;

    invoke-direct {v0, p0}, Lcom/eogame/presenter/EOGooglePresenter$3;-><init>(Lcom/eogame/presenter/EOGooglePresenter;)V

    iput-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mGetInventoryListener:Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;

    .line 171
    new-instance v0, Lcom/eogame/presenter/EOGooglePresenter$4;

    invoke-direct {v0, p0}, Lcom/eogame/presenter/EOGooglePresenter$4;-><init>(Lcom/eogame/presenter/EOGooglePresenter;)V

    iput-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mPurchaseFinishedListener:Lcom/eogame/google/IabHelper$OnIabPurchaseFinishedListener;

    .line 39
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter;->mContext:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter;->handler:Landroid/os/Handler;

    .line 41
    new-instance p2, Lcom/eogame/google/IabHelper;

    invoke-direct {p2, p1}, Lcom/eogame/google/IabHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/eogame/presenter/EOGooglePresenter;->sendMsg(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/eogame/presenter/EOGooglePresenter;)Lcom/eogame/google/Purchase;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/eogame/presenter/EOGooglePresenter;->currentPurchase:Lcom/eogame/google/Purchase;

    return-object p0
.end method

.method static synthetic access$102(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;)Lcom/eogame/google/Purchase;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter;->currentPurchase:Lcom/eogame/google/Purchase;

    return-object p1
.end method

.method static synthetic access$200(Lcom/eogame/presenter/EOGooglePresenter;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/eogame/presenter/EOGooglePresenter;->skuID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/presenter/EOGooglePresenter;Lcom/eogame/google/Purchase;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/eogame/presenter/EOGooglePresenter;->sendPurchase(Lcom/eogame/google/Purchase;I)V

    return-void
.end method

.method private sendMsg(Ljava/lang/Object;I)V
    .locals 1

    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 141
    iput p2, v0, Landroid/os/Message;->what:I

    .line 142
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private sendPurchase(Lcom/eogame/google/Purchase;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcom/eogame/google/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/crypto/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "repate_data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p1}, Lcom/eogame/google/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/eogame/crypto/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign_data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Lcom/eogame/google/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p1

    const-string v1, "order_id"

    invoke-static {p1, v1}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/eogame/crypto/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct {p0, v0, p2}, Lcom/eogame/presenter/EOGooglePresenter;->sendMsg(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public buyPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->currentPurchase:Lcom/eogame/google/Purchase;

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    iget-object v2, p0, Lcom/eogame/presenter/EOGooglePresenter;->mContext:Landroid/app/Activity;

    const/16 v4, 0x5b78

    iget-object v5, p0, Lcom/eogame/presenter/EOGooglePresenter;->mPurchaseFinishedListener:Lcom/eogame/google/IabHelper$OnIabPurchaseFinishedListener;

    const-string v0, "order_id"

    invoke-static {p2, v0}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/eogame/google/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/eogame/google/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x277f

    invoke-direct {p0, p1, p2}, Lcom/eogame/presenter/EOGooglePresenter;->sendMsg(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public consumePurchase()V
    .locals 3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    iget-object v1, p0, Lcom/eogame/presenter/EOGooglePresenter;->currentPurchase:Lcom/eogame/google/Purchase;

    new-instance v2, Lcom/eogame/presenter/EOGooglePresenter$2;

    invoke-direct {v2, p0}, Lcom/eogame/presenter/EOGooglePresenter$2;-><init>(Lcom/eogame/presenter/EOGooglePresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/eogame/google/IabHelper;->consumeAsync(Lcom/eogame/google/Purchase;Lcom/eogame/google/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Lcom/eogame/google/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Lcom/eogame/google/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    .line 109
    invoke-virtual {v0}, Lcom/eogame/google/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2782

    invoke-direct {p0, v0, v1}, Lcom/eogame/presenter/EOGooglePresenter;->sendMsg(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public initIabHelper()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    sget-boolean v1, Lcom/eogame/constants/EOCommon;->debug:Z

    invoke-virtual {v0, v1}, Lcom/eogame/google/IabHelper;->enableDebugLogging(Z)V

    .line 49
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    new-instance v1, Lcom/eogame/presenter/EOGooglePresenter$1;

    invoke-direct {v1, p0}, Lcom/eogame/presenter/EOGooglePresenter$1;-><init>(Lcom/eogame/presenter/EOGooglePresenter;)V

    invoke-virtual {v0, v1}, Lcom/eogame/google/IabHelper;->startSetup(Lcom/eogame/google/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/google/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {v0}, Lcom/eogame/google/IabHelper;->dispose()V
    :try_end_0
    .catch Lcom/eogame/google/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Lcom/eogame/google/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    return-void
.end method

.method public queryInventory(Ljava/lang/String;)V
    .locals 2

    .line 62
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter;->skuID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter;->currentPurchase:Lcom/eogame/google/Purchase;

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter;->mIabHelper:Lcom/eogame/google/IabHelper;

    iget-object v1, p0, Lcom/eogame/presenter/EOGooglePresenter;->mGetInventoryListener:Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/eogame/google/IabHelper;->queryInventoryAsync(Lcom/eogame/google/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Lcom/eogame/google/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Lcom/eogame/google/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    const/16 v0, 0x277b

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOGooglePresenter;->sendMsg(Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method
