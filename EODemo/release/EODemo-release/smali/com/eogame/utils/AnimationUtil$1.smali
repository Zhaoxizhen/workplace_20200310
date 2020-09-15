.class final Lcom/eogame/utils/AnimationUtil$1;
.super Ljava/lang/Object;
.source "AnimationUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AnimationUtil;->startWelcomeAnimation(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/eogame/utils/AnimationUtil$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .line 51
    new-instance p1, Lcom/eogame/utils/AnimationUtil$1$1;

    const-wide/16 v2, 0x5dc

    const-wide/16 v4, 0x5dc

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eogame/utils/AnimationUtil$1$1;-><init>(Lcom/eogame/utils/AnimationUtil$1;JJ)V

    .line 64
    invoke-virtual {p1}, Lcom/eogame/utils/AnimationUtil$1$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
