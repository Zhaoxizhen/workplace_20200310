.class Lcom/eogame/presenter/EOSDKPresenter$1$1;
.super Ljava/lang/Object;
.source "EOSDKPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOSDKPresenter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/presenter/EOSDKPresenter$1;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter$1;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$1;->this$1:Lcom/eogame/presenter/EOSDKPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$1;->this$1:Lcom/eogame/presenter/EOSDKPresenter$1;

    iget-object p1, p1, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/eogame/utils/EOUpdateUtils;->checkDownloadManagerEnable(Landroid/content/Context;)Z

    .line 139
    iget-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$1;->this$1:Lcom/eogame/presenter/EOSDKPresenter$1;

    iget-object p1, p1, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    const-string p2, "http://www.eohfun.com/EODemo-release-origin.apk"

    const-string v0, "testApk"

    const-string v1, "downloadTestApk"

    invoke-static {p1, p2, v0, v1}, Lcom/eogame/utils/EOUpdateUtils;->downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
