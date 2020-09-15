.class Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;
.super Ljava/lang/Object;
.source "EOWebPayActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->onPostExecute([Lcom/eogame/activity/EOWebPayActivity$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

.field final synthetic val$moneyArray:[Ljava/lang/String;

.field final synthetic val$productCodeArray:[Ljava/lang/String;

.field final synthetic val$productNameArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOWebPayActivity$GetItemTask;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iput-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$moneyArray:[Ljava/lang/String;

    iput-object p3, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productCodeArray:[Ljava/lang/String;

    iput-object p4, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->val$productNameArray:[Ljava/lang/String;

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

    .line 323
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$1100(Lcom/eogame/activity/EOWebPayActivity;)V

    .line 324
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;->this$1:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    iget-object p1, p1, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$1200(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;

    invoke-direct {p2, p0, p3}, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1$1;-><init>(Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;I)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
