.class Lcom/eogame/presenter/EOBindPresenter$2;
.super Ljava/lang/Object;
.source "EOBindPresenter.java"

# interfaces
.implements Lcom/eogame/listener/FacebookLoginApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOBindPresenter;->bindFacebookAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOBindPresenter;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOBindPresenter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginCancel()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOBindPresenter;->access$900(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    return-void
.end method

.method public loginFail(Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOBindPresenter;->access$700(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 101
    iget-object v0, p0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {v0}, Lcom/eogame/presenter/EOBindPresenter;->access$800(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public loginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 82
    iget-object p3, p0, Lcom/eogame/presenter/EOBindPresenter$2;->this$0:Lcom/eogame/presenter/EOBindPresenter;

    invoke-static {p3}, Lcom/eogame/presenter/EOBindPresenter;->access$300(Lcom/eogame/presenter/EOBindPresenter;)Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V

    .line 83
    new-instance p3, Lcom/eogame/presenter/EOBindPresenter$2$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/eogame/presenter/EOBindPresenter$2$1;-><init>(Lcom/eogame/presenter/EOBindPresenter$2;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p3}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method
