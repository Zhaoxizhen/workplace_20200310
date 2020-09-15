.class public Lcom/eogame/widgets/EOTipsDialog;
.super Landroid/app/Dialog;
.source "EOTipsDialog.java"


# instance fields
.field private mCancelBt:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mContinueBt:Landroid/widget/Button;

.field private mDivisionbtnVw:Landroid/view/View;

.field private mLineVw:Landroid/view/View;

.field private mTipsListener:Lcom/eogame/widgets/EOTipsListener;

.field private mTipsTv:Landroid/widget/TextView;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "EO_CustomDialog"

    .line 34
    invoke-static {p1, v0}, Lcom/eogame/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/eogame/widgets/EOTipsDialog;->initView()V

    .line 37
    invoke-direct {p0}, Lcom/eogame/widgets/EOTipsDialog;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/widgets/EOTipsDialog;)Lcom/eogame/widgets/EOTipsListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/eogame/widgets/EOTipsDialog;->mTipsListener:Lcom/eogame/widgets/EOTipsListener;

    return-object p0
.end method

.method private initListener()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mContinueBt:Landroid/widget/Button;

    new-instance v1, Lcom/eogame/widgets/EOTipsDialog$1;

    invoke-direct {v1, p0}, Lcom/eogame/widgets/EOTipsDialog$1;-><init>(Lcom/eogame/widgets/EOTipsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    new-instance v1, Lcom/eogame/widgets/EOTipsDialog$2;

    invoke-direct {v1, p0}, Lcom/eogame/widgets/EOTipsDialog$2;-><init>(Lcom/eogame/widgets/EOTipsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/eogame/widgets/EOTipsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_layout_tip"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_tips_continue_bt"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContinueBt:Landroid/widget/Button;

    .line 44
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_tips_cancel_bt"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_layout_tips_titile"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mTitleTv:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_tips_tipbody_tv"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mTipsTv:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_layout_tips_line"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mLineVw:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mContext:Landroid/content/Context;

    const-string v2, "eo_tips_divisionbtn_vw"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eogame/widgets/EOTipsDialog;->mDivisionbtnVw:Landroid/view/View;

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1}, Lcom/eogame/widgets/EOTipsDialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hideCancelBtn()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setCancelBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setCancelContent(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCancelTextColor(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mCancelBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setContinueBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mContinueBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mContinueBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setContinueContent(Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mContinueBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContinueTextColor(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mContinueBt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setDivisionLineVisiblity(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mDivisionbtnVw:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setEOTipsListener(Lcom/eogame/widgets/EOTipsListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/eogame/widgets/EOTipsDialog;->mTipsListener:Lcom/eogame/widgets/EOTipsListener;

    return-void
.end method

.method public setLineColor(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mLineVw:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setTipsContent(Landroid/text/Spanned;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mTipsTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/eogame/widgets/EOTipsDialog;->mTipsTv:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method public setTipsContent(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mTipsTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eogame/widgets/EOTipsDialog;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
