.class Lcom/eogame/presenter/EOLoginPresenter$2;
.super Ljava/lang/Object;
.source "EOLoginPresenter.java"

# interfaces
.implements Lcom/eogame/widgets/EOTipsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLoginPresenter;->guestLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOLoginPresenter;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOLoginPresenter;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$2;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick()V
    .locals 0

    return-void
.end method

.method public onContinueClick()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$2;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOLoginPresenter;->access$300(Lcom/eogame/presenter/EOLoginPresenter;)V

    return-void
.end method
