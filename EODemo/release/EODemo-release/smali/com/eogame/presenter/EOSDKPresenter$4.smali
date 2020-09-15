.class Lcom/eogame/presenter/EOSDKPresenter$4;
.super Ljava/lang/Object;
.source "EOSDKPresenter.java"

# interfaces
.implements Lcom/eogame/listener/EOPayEvent$PayEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOSDKPresenter;->pay(Landroid/content/Context;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;Lcom/eogame/listener/PayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOSDKPresenter;

.field final synthetic val$payCallback:Lcom/eogame/listener/PayCallback;

.field final synthetic val$payInfo:Lcom/eogame/model/EOPayInfo;

.field final synthetic val$roleInfo:Lcom/eogame/model/EORoleInfo;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter;Lcom/eogame/model/EOPayInfo;Lcom/eogame/model/EORoleInfo;Lcom/eogame/listener/PayCallback;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->this$0:Lcom/eogame/presenter/EOSDKPresenter;

    iput-object p2, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payInfo:Lcom/eogame/model/EOPayInfo;

    iput-object p3, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$roleInfo:Lcom/eogame/model/EORoleInfo;

    iput-object p4, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payCallback:Lcom/eogame/listener/PayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancle()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payCallback:Lcom/eogame/listener/PayCallback;

    invoke-interface {v0}, Lcom/eogame/listener/PayCallback;->onCancle()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payCallback:Lcom/eogame/listener/PayCallback;

    invoke-interface {v0, p1}, Lcom/eogame/listener/PayCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    .line 353
    new-instance v0, Lcom/kochava/base/Tracker$Event;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/kochava/base/Tracker$Event;-><init>(I)V

    iget-object v1, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payInfo:Lcom/eogame/model/EOPayInfo;

    .line 354
    invoke-virtual {v1}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/Tracker$Event;->setPrice(D)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payInfo:Lcom/eogame/model/EOPayInfo;

    .line 355
    invoke-virtual {v1}, Lcom/eogame/model/EOPayInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/Tracker$Event;->setName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$roleInfo:Lcom/eogame/model/EORoleInfo;

    .line 356
    invoke-virtual {v1}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/Tracker$Event;->setUserId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payInfo:Lcom/eogame/model/EOPayInfo;

    .line 357
    invoke-virtual {v1}, Lcom/eogame/model/EOPayInfo;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/Tracker$Event;->setCurrency(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payInfo:Lcom/eogame/model/EOPayInfo;

    .line 358
    invoke-virtual {v1}, Lcom/eogame/model/EOPayInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kochava/base/Tracker$Event;->setContentId(Ljava/lang/String;)Lcom/kochava/base/Tracker$Event;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/kochava/base/Tracker;->sendEvent(Lcom/kochava/base/Tracker$Event;)V

    .line 359
    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$4;->val$payCallback:Lcom/eogame/listener/PayCallback;

    invoke-interface {v0, p1}, Lcom/eogame/listener/PayCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
