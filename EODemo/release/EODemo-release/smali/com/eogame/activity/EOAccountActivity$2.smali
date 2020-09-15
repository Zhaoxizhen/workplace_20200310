.class Lcom/eogame/activity/EOAccountActivity$2;
.super Ljava/lang/Object;
.source "EOAccountActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 192
    iput-object p1, p0, Lcom/eogame/activity/EOAccountActivity$2;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 197
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity$2;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOAccountActivity;->access$100(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 p2, 0x90

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOAccountActivity$2;->this$0:Lcom/eogame/activity/EOAccountActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOAccountActivity;->access$100(Lcom/eogame/activity/EOAccountActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/16 p2, 0x81

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method
