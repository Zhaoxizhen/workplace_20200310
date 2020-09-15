.class Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;
.super Ljava/lang/Object;
.source "EOWebPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;I)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iput p2, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 327
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 328
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    iget-object v1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v1, v1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v1, v1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_MyCard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "uid"

    const-string v2, "payInfo"

    const-string v3, "roleInfo"

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$moneyArray:[Ljava/lang/String;

    iget v5, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setPrice(F)V

    .line 330
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productCodeArray:[Ljava/lang/String;

    iget v5, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setProductId(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productNameArray:[Ljava/lang/String;

    iget v5, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setProductName(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 333
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 334
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    sget-object v0, Lcom/eogame/constants/Data;->URL_MYCARD_PAYSTART:Ljava/lang/String;

    const-string v1, "web_pay_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/eogame/activity/EOWebViewActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 337
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 338
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v4}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Razer_Pin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "razerPayUrl"

    const-string v5, "currencyCode"

    const-string v6, "channelId"

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$moneyArray:[Ljava/lang/String;

    iget v8, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/eogame/model/EOPayInfo;->setPrice(F)V

    .line 342
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productCodeArray:[Ljava/lang/String;

    iget v8, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/eogame/model/EOPayInfo;->setProductId(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productNameArray:[Ljava/lang/String;

    iget v8, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/eogame/model/EOPayInfo;->setProductName(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 345
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 346
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v0}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Razer_Pin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    sget-object v0, Lcom/eogame/constants/Data;->URL_RAZER_PAYSTART:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 351
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 352
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v7}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Razer_Wallet:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$moneyArray:[Ljava/lang/String;

    iget v8, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/eogame/model/EOPayInfo;->setPrice(F)V

    .line 356
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productCodeArray:[Ljava/lang/String;

    iget v8, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/eogame/model/EOPayInfo;->setProductId(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v7, v7, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productNameArray:[Ljava/lang/String;

    iget v8, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Lcom/eogame/model/EOPayInfo;->setProductName(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 359
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 360
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v0}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Razer_Wallet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    sget-object v0, Lcom/eogame/constants/Data;->URL_RAZER_PAYSTART:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 366
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v4}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Xsolla:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$moneyArray:[Ljava/lang/String;

    iget v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setPrice(F)V

    .line 369
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productCodeArray:[Ljava/lang/String;

    iget v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setProductId(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productNameArray:[Ljava/lang/String;

    iget v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setProductName(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 372
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v0}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Xsolla:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    sget-object v0, Lcom/eogame/constants/Data;->URL_XSOLLA_PAYSTART:Ljava/lang/String;

    const-string v1, "XsollaPayUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 378
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 379
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v4}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Codapay:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$moneyArray:[Ljava/lang/String;

    iget v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setPrice(F)V

    .line 382
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productCodeArray:[Ljava/lang/String;

    iget v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setProductId(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v4, v4, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productNameArray:[Ljava/lang/String;

    iget v7, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->val$position:I

    aget-object v4, v4, v7

    invoke-virtual {v0, v4}, Lcom/eogame/model/EOPayInfo;->setProductName(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 385
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 386
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {v0}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Codapay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    sget-object v0, Lcom/eogame/constants/Data;->URL_CODAPAY_PAYSTART:Ljava/lang/String;

    const-string v1, "CodapayUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    const-class v1, Lcom/eogame/activity/EOWebBrowserActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 391
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 392
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;->this$2:Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method
