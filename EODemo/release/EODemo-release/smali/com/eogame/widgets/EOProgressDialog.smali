.class public Lcom/eogame/widgets/EOProgressDialog;
.super Landroid/app/Dialog;
.source "EOProgressDialog.java"


# static fields
.field private static mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/eogame/widgets/EOProgressDialog;->context:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/eogame/widgets/EOProgressDialog;->context:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 22
    iput-object p2, p0, Lcom/eogame/widgets/EOProgressDialog;->context:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/eogame/widgets/EOProgressDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcom/eogame/widgets/EOProgressDialog;
    .locals 2

    .line 36
    new-instance v0, Lcom/eogame/widgets/EOProgressDialog;

    const-string v1, "EO_CustomProgressDialog"

    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/eogame/widgets/EOProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    .line 37
    sget-object v0, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    const-string v1, "eo_layout_loading"

    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/eogame/widgets/EOProgressDialog;->setContentView(I)V

    .line 38
    sget-object p0, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    invoke-virtual {p0}, Lcom/eogame/widgets/EOProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v0, 0x11

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 39
    sget-object p0, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    return-object p0
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 8

    .line 43
    sget-object p1, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/eogame/widgets/EOProgressDialog;->context:Landroid/content/Context;

    const-string v1, "eo_loading_img"

    invoke-static {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/eogame/widgets/EOProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 47
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x5dc

    .line 48
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 v0, -0x1

    .line 49
    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 51
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    .line 52
    invoke-virtual {v7, v0}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 53
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)Lcom/eogame/widgets/EOProgressDialog;
    .locals 3

    .line 65
    sget-object v0, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/eogame/widgets/EOProgressDialog;->context:Landroid/content/Context;

    const-string v2, "af_loading_tv"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eogame/widgets/EOProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    sget-object p1, Lcom/eogame/widgets/EOProgressDialog;->mCustomProgressDialog:Lcom/eogame/widgets/EOProgressDialog;

    return-object p1
.end method
