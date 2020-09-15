.class Lcom/eogame/utils/AnimationUtil$1$1;
.super Landroid/os/CountDownTimer;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AnimationUtil$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/utils/AnimationUtil$1;


# direct methods
.method constructor <init>(Lcom/eogame/utils/AnimationUtil$1;JJ)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/eogame/utils/AnimationUtil$1$1;->this$0:Lcom/eogame/utils/AnimationUtil$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 10

    .line 58
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xc8

    .line 60
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {v9, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 62
    iget-object v0, p0, Lcom/eogame/utils/AnimationUtil$1$1;->this$0:Lcom/eogame/utils/AnimationUtil$1;

    iget-object v0, v0, Lcom/eogame/utils/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
