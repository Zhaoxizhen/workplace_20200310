.class final Lcom/eogame/utils/AndroidUtils$2;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AndroidUtils;->showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cancelable:Z

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$progressThread:Lcom/eogame/utils/EOThread;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/eogame/utils/EOThread;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/eogame/utils/AndroidUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/eogame/utils/AndroidUtils$2;->val$message:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/eogame/utils/AndroidUtils$2;->val$cancelable:Z

    iput-object p4, p0, Lcom/eogame/utils/AndroidUtils$2;->val$progressThread:Lcom/eogame/utils/EOThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    :try_start_0
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/widgets/EOProgressDialog;->dismiss()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/eogame/utils/AndroidUtils$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eogame/widgets/EOProgressDialog;->createDialog(Landroid/content/Context;)Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->access$002(Lcom/eogame/widgets/EOProgressDialog;)Lcom/eogame/widgets/EOProgressDialog;

    .line 83
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOProgressDialog;->setMessage(Ljava/lang/String;)Lcom/eogame/widgets/EOProgressDialog;

    .line 85
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eogame/utils/AndroidUtils$2;->val$cancelable:Z

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOProgressDialog;->setCancelable(Z)V

    .line 87
    iget-boolean v0, p0, Lcom/eogame/utils/AndroidUtils$2;->val$cancelable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eogame/utils/AndroidUtils$2;->val$progressThread:Lcom/eogame/utils/EOThread;

    if-eqz v0, :cond_1

    .line 88
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/eogame/utils/AndroidUtils$2$1;

    invoke-direct {v1, p0}, Lcom/eogame/utils/AndroidUtils$2$1;-><init>(Lcom/eogame/utils/AndroidUtils$2;)V

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/widgets/EOProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
