.class Lcom/eogame/presenter/EOLoginPresenter$6;
.super Ljava/lang/Object;
.source "EOLoginPresenter.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/presenter/EOLoginPresenter;->showUserList(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/presenter/EOLoginPresenter;

.field final synthetic val$mLoginRecordListBt:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/eogame/presenter/EOLoginPresenter;Landroid/widget/ImageView;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/eogame/presenter/EOLoginPresenter$6;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    iput-object p2, p0, Lcom/eogame/presenter/EOLoginPresenter$6;->val$mLoginRecordListBt:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/eogame/presenter/EOLoginPresenter$6;->val$mLoginRecordListBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/eogame/presenter/EOLoginPresenter$6;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v1}, Lcom/eogame/presenter/EOLoginPresenter;->access$1200(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/presenter/EOLoginPresenter$6;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v2}, Lcom/eogame/presenter/EOLoginPresenter;->access$1000(Lcom/eogame/presenter/EOLoginPresenter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/eogame/presenter/EOLoginPresenter$6;->this$0:Lcom/eogame/presenter/EOLoginPresenter;

    invoke-static {v3}, Lcom/eogame/presenter/EOLoginPresenter;->access$1100(Lcom/eogame/presenter/EOLoginPresenter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eogame/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
