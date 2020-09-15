.class Lcom/eogame/base/BasePresenter$5;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/base/BasePresenter;->bindBtn2EtContent(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/base/BasePresenter;

.field final synthetic val$bt:Landroid/widget/Button;

.field final synthetic val$editText1:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/eogame/base/BasePresenter;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/eogame/base/BasePresenter$5;->this$0:Lcom/eogame/base/BasePresenter;

    iput-object p2, p0, Lcom/eogame/base/BasePresenter$5;->val$bt:Landroid/widget/Button;

    iput-object p3, p0, Lcom/eogame/base/BasePresenter$5;->val$editText1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/eogame/base/BasePresenter$5;->val$bt:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/eogame/base/BasePresenter$5;->val$editText1:Landroid/widget/EditText;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/eogame/base/BasePresenter$5;->val$bt:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/eogame/base/BasePresenter$5;->val$bt:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object p1, p0, Lcom/eogame/base/BasePresenter$5;->val$bt:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
