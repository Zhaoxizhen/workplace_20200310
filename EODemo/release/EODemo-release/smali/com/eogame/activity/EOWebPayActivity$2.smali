.class Lcom/eogame/activity/EOWebPayActivity$2;
.super Ljava/lang/Object;
.source "EOWebPayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebPayActivity;->initSpinnerData()V
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

    .line 132
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 135
    check-cast p2, Landroid/widget/TextView;

    .line 136
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_name_Google:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Google:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_name_MyCard:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_MyCard:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_name_Razer_Pin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Razer_Pin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_name_Razer_Wallet:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Razer_Wallet:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_name_Xsolla:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 146
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Xsolla:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p2}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_name_Codapay:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 148
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/eo/games/sdk/R$string;->eo_payChannel_code_Codapay:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$300(Lcom/eogame/activity/EOWebPayActivity;)V

    .line 160
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    new-instance p2, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p4}, Lcom/eogame/activity/EOWebPayActivity;->access$000(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p4}, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;-><init>(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$502(Lcom/eogame/activity/EOWebPayActivity;Lcom/eogame/activity/EOWebPayActivity$GetItemTask;)Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    .line 161
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$2;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$500(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
