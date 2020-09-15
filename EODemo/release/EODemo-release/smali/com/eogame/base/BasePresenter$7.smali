.class Lcom/eogame/base/BasePresenter$7;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/base/BasePresenter;->removeSpaceOnNoFocus(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/base/BasePresenter;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/eogame/base/BasePresenter;Landroid/widget/EditText;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/eogame/base/BasePresenter$7;->this$0:Lcom/eogame/base/BasePresenter;

    iput-object p2, p0, Lcom/eogame/base/BasePresenter$7;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 249
    iget-object p1, p0, Lcom/eogame/base/BasePresenter$7;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/eogame/model/EOAccountEntity;->ACCOUNT_SPACE:Ljava/lang/String;

    sget-object v1, Lcom/eogame/model/EOAccountEntity;->ACCOUNT_EMPTY:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
