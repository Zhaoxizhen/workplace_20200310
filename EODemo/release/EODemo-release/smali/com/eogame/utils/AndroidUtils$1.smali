.class final Lcom/eogame/utils/AndroidUtils$1;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cancelable:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/eogame/utils/AndroidUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/eogame/utils/AndroidUtils$1;->val$message:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/eogame/utils/AndroidUtils$1;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    :try_start_0
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/widgets/EOProgressDialog;->dismiss()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/eogame/utils/AndroidUtils$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/widgets/EOProgressDialog;->createDialog(Landroid/content/Context;)Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->access$002(Lcom/eogame/widgets/EOProgressDialog;)Lcom/eogame/widgets/EOProgressDialog;

    .line 48
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$1;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOProgressDialog;->setMessage(Ljava/lang/String;)Lcom/eogame/widgets/EOProgressDialog;

    .line 49
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eogame/utils/AndroidUtils$1;->val$cancelable:Z

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOProgressDialog;->setCancelable(Z)V

    .line 50
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/widgets/EOProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
