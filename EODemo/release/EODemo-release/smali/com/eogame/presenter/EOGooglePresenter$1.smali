.class Lcom/eogame/presenter/EOGooglePresenter$1;
.super Ljava/lang/Object;
.source "EOGooglePresenter.java"

# interfaces
.implements Lcom/eogame/google/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOGooglePresenter;->initIabHelper()V
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

    .line 49
    iput-object p1, p0, Lcom/eogame/presenter/EOGooglePresenter$1;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/eogame/google/IabResult;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/eogame/presenter/EOGooglePresenter$1;->this$0:Lcom/eogame/presenter/EOGooglePresenter;

    invoke-virtual {p1}, Lcom/eogame/google/IabResult;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x2779

    invoke-static {v0, p1, v1}, Lcom/eogame/presenter/EOGooglePresenter;->access$000(Lcom/eogame/presenter/EOGooglePresenter;Ljava/lang/Object;I)V

    return-void
.end method
