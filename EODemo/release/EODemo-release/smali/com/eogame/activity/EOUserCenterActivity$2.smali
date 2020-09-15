.class Lcom/eogame/activity/EOUserCenterActivity$2;
.super Ljava/lang/Object;
.source "EOUserCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOUserCenterActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOUserCenterActivity;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOUserCenterActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity$2;->this$0:Lcom/eogame/activity/EOUserCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 178
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity$2;->this$0:Lcom/eogame/activity/EOUserCenterActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOUserCenterActivity;->access$300(Lcom/eogame/activity/EOUserCenterActivity;)Lcom/eogame/presenter/EOBindPresenter;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity$2;->this$0:Lcom/eogame/activity/EOUserCenterActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOUserCenterActivity;->access$000(Lcom/eogame/activity/EOUserCenterActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity$2;->this$0:Lcom/eogame/activity/EOUserCenterActivity;

    invoke-static {v1}, Lcom/eogame/activity/EOUserCenterActivity;->access$100(Lcom/eogame/activity/EOUserCenterActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/activity/EOUserCenterActivity$2;->this$0:Lcom/eogame/activity/EOUserCenterActivity;

    invoke-static {v2}, Lcom/eogame/activity/EOUserCenterActivity;->access$200(Lcom/eogame/activity/EOUserCenterActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/eogame/presenter/EOBindPresenter;->bindEOAccount(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method
