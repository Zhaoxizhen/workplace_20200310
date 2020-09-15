.class final Lcom/eogame/utils/AndroidUtils$4;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AndroidUtils;->showEOPermissionTips(Landroid/app/Activity;Lcom/eogame/widgets/EOTipsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$eoTipsListener:Lcom/eogame/widgets/EOTipsListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/eogame/widgets/EOTipsListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/eogame/utils/AndroidUtils$4;->val$eoTipsListener:Lcom/eogame/widgets/EOTipsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    new-instance v0, Lcom/eogame/widgets/EOTipsDialog;

    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;-><init>(Landroid/content/Context;)V

    .line 138
    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$activity:Landroid/app/Activity;

    const-string v2, "eo_tips_permission_title"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setTitle(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$activity:Landroid/app/Activity;

    const-string v2, "eo_tips_permission_cancel"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setCancelContent(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$activity:Landroid/app/Activity;

    const-string v2, "eo_tips_permission_confirm"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setContinueContent(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$activity:Landroid/app/Activity;

    const-string v2, "eo_tips_permission_content"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setTipsContent(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/eogame/utils/AndroidUtils$4;->val$eoTipsListener:Lcom/eogame/widgets/EOTipsListener;

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setEOTipsListener(Lcom/eogame/widgets/EOTipsListener;)V

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setCancelable(Z)V

    .line 144
    invoke-virtual {v0}, Lcom/eogame/widgets/EOTipsDialog;->show()V

    return-void
.end method
