.class final Lcom/eogame/utils/AndroidUtils$3;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AndroidUtils;->closeProgress(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    :try_start_0
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/eogame/utils/AndroidUtils;->access$000()Lcom/eogame/widgets/EOProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eogame/widgets/EOProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Lcom/eogame/utils/AndroidUtils;->access$002(Lcom/eogame/widgets/EOProgressDialog;)Lcom/eogame/widgets/EOProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
