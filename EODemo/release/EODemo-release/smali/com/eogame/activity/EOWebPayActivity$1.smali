.class Lcom/eogame/activity/EOWebPayActivity$1;
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

    .line 91
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

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

    const/4 p1, 0x0

    .line 95
    new-array p2, p1, [Ljava/lang/String;

    const/4 p4, 0x1

    if-eq p3, p4, :cond_4

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    const/4 p1, 0x4

    if-eq p3, p1, :cond_1

    const/4 p4, 0x5

    if-eq p3, p4, :cond_0

    goto/16 :goto_0

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p2}, Lcom/eogame/activity/EOWebPayActivity;->access$100(Lcom/eogame/activity/EOWebPayActivity;)[Ljava/lang/String;

    move-result-object p3

    aget-object p1, p3, p1

    invoke-static {p2, p1}, Lcom/eogame/activity/EOWebPayActivity;->access$002(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/eo/games/sdk/R$array;->eo_pay_channel_Indonesia:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$100(Lcom/eogame/activity/EOWebPayActivity;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p4

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$002(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/eo/games/sdk/R$array;->eo_pay_channel_Malaysia:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 107
    :cond_2
    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p2}, Lcom/eogame/activity/EOWebPayActivity;->access$100(Lcom/eogame/activity/EOWebPayActivity;)[Ljava/lang/String;

    move-result-object p3

    aget-object p1, p3, p1

    invoke-static {p2, p1}, Lcom/eogame/activity/EOWebPayActivity;->access$002(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/eo/games/sdk/R$array;->eo_pay_channel_Singapore:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$100(Lcom/eogame/activity/EOWebPayActivity;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p4

    invoke-static {p1, p2}, Lcom/eogame/activity/EOWebPayActivity;->access$002(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/eo/games/sdk/R$array;->eo_pay_channel_Taiwan:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 99
    :cond_4
    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p2}, Lcom/eogame/activity/EOWebPayActivity;->access$100(Lcom/eogame/activity/EOWebPayActivity;)[Ljava/lang/String;

    move-result-object p3

    aget-object p1, p3, p1

    invoke-static {p2, p1}, Lcom/eogame/activity/EOWebPayActivity;->access$002(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-virtual {p1}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/eo/games/sdk/R$array;->eo_pay_channel_Hongkong:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 118
    :goto_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object p3, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object p3, p3, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    sget p4, Lcom/eo/games/sdk/R$layout;->eo_pay_list_item:I

    invoke-direct {p1, p3, p4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p2}, Lcom/eogame/activity/EOWebPayActivity;->access$200(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Spinner;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$1;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$300(Lcom/eogame/activity/EOWebPayActivity;)V

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
