.class public abstract Lcom/eogame/base/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# instance fields
.field protected mContext:Landroid/app/Activity;

.field protected mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field protected mUserSession:Lcom/eogame/model/UserSession;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/eogame/base/BasePresenter$1;

    invoke-direct {v0, p0}, Lcom/eogame/base/BasePresenter$1;-><init>(Lcom/eogame/base/BasePresenter;)V

    iput-object v0, p0, Lcom/eogame/base/BasePresenter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 45
    iput-object p1, p0, Lcom/eogame/base/BasePresenter;->mContext:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/eogame/base/BasePresenter;->mUserSession:Lcom/eogame/model/UserSession;

    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/eogame/base/BasePresenter;->initData()V

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "userSession is null in BasePresenter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context is null in BasePresenter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bindBtn2EtContent(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 82
    new-instance v0, Lcom/eogame/base/BasePresenter$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/eogame/base/BasePresenter$2;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 112
    new-instance v0, Lcom/eogame/base/BasePresenter$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/eogame/base/BasePresenter$3;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public bindBtn2EtContent(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 149
    new-instance v0, Lcom/eogame/base/BasePresenter$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/eogame/base/BasePresenter$4;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 179
    new-instance v0, Lcom/eogame/base/BasePresenter$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/eogame/base/BasePresenter$5;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 209
    new-instance p2, Lcom/eogame/base/BasePresenter$6;

    invoke-direct {p2, p0, p1, p3}, Lcom/eogame/base/BasePresenter$6;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p4, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    return-void
.end method

.method protected abstract dealMessage(Ljava/lang/Object;I)V
.end method

.method protected getCurrentTime()J
    .locals 4

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected abstract initData()V
.end method

.method public abstract onDestory()V
.end method

.method public relasePaying()V
    .locals 4

    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x27d8

    .line 70
    iput v1, v0, Landroid/os/Message;->what:I

    .line 71
    iget-object v1, p0, Lcom/eogame/base/BasePresenter;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x1388

    .line 72
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public removeSpace(Landroid/widget/EditText;)V
    .locals 3

    .line 268
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eogame/model/EOAccountEntity;->ACCOUNT_SPACE:Ljava/lang/String;

    sget-object v2, Lcom/eogame/model/EOAccountEntity;->ACCOUNT_EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eogame/model/EOAccountEntity;->ACCOUNT_TAB:Ljava/lang/String;

    sget-object v2, Lcom/eogame/model/EOAccountEntity;->ACCOUNT_EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public removeSpaceOnNoFocus(Landroid/widget/EditText;)V
    .locals 1

    .line 245
    new-instance v0, Lcom/eogame/base/BasePresenter$7;

    invoke-direct {v0, p0, p1}, Lcom/eogame/base/BasePresenter$7;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public sendMsg(Lcom/eogame/model/EOBaseObject;I)V
    .locals 1

    .line 54
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 55
    iput p2, v0, Landroid/os/Message;->what:I

    .line 56
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/eogame/base/BasePresenter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public trimOnNoFocus(Landroid/widget/EditText;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/eogame/base/BasePresenter$8;

    invoke-direct {v0, p0, p1}, Lcom/eogame/base/BasePresenter$8;-><init>(Lcom/eogame/base/BasePresenter;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
