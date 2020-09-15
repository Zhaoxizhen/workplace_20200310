.class Lcom/eogame/presenter/EOSDKPresenter$3$2;
.super Ljava/lang/Object;
.source "EOSDKPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOSDKPresenter$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/presenter/EOSDKPresenter$3;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter$3;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$3$2;->this$1:Lcom/eogame/presenter/EOSDKPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 315
    iget-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$3$2;->this$1:Lcom/eogame/presenter/EOSDKPresenter$3;

    iget-object p1, p1, Lcom/eogame/presenter/EOSDKPresenter$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/eogame/utils/PageUtil;->jump2Login(Landroid/content/Context;)V

    return-void
.end method
