.class Lcom/eogame/presenter/EOSDKPresenter$1$2;
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

.field final synthetic val$apkUrl:Ljava/lang/String;

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOSDKPresenter$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->this$1:Lcom/eogame/presenter/EOSDKPresenter$1;

    iput-object p2, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->val$apkUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->val$desc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 164
    iget-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->this$1:Lcom/eogame/presenter/EOSDKPresenter$1;

    iget-object p1, p1, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/eogame/utils/EOUpdateUtils;->checkDownloadManagerEnable(Landroid/content/Context;)Z

    .line 165
    iget-object p1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->this$1:Lcom/eogame/presenter/EOSDKPresenter$1;

    iget-object p1, p1, Lcom/eogame/presenter/EOSDKPresenter$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->val$apkUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->val$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/eogame/presenter/EOSDKPresenter$1$2;->val$desc:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/eogame/utils/EOUpdateUtils;->downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method
