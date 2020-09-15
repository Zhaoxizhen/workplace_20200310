.class Lcom/eogame/activity/EOWebPayActivity$3;
.super Ljava/lang/Object;
.source "EOWebPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebPayActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOWebPayActivity;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebPayActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 197
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 198
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$600(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;

    move-result-object v0

    const-string v1, "roleInfo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    const-string v1, "payInfo"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 203
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$3;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
