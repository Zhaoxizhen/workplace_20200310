.class Lcom/eogame/activity/EOAccountActivity$1;
.super Ljava/lang/Object;
.source "EOAccountActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/activity/EOAccountActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/activity/EOAccountActivity;


# direct methods
.method constructor <init>(Lcom/eogame/activity/EOAccountActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/eogame/activity/EOAccountActivity$1;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity$1;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOAccountActivity;->access$200(Lcom/eogame/activity/EOAccountActivity;)Lcom/eogame/presenter/EOLoginPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOAccountActivity$1;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-static {p2}, Lcom/eogame/activity/EOAccountActivity;->access$000(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;

    move-result-object p2

    iget-object p3, p0, Lcom/eogame/activity/EOAccountActivity$1;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-static {p3}, Lcom/eogame/activity/EOAccountActivity;->access$100(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/eogame/presenter/EOLoginPresenter;->login(Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
