.class Lcom/eogame/model/Useradpter$2;
.super Ljava/lang/Object;
.source "Useradpter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/model/Useradpter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/model/Useradpter;

.field final synthetic val$accountInfo:Lcom/eogame/model/EOAccountEntity;


# direct methods
.method constructor <init>(Lcom/eogame/model/Useradpter;Lcom/eogame/model/EOAccountEntity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/eogame/model/Useradpter$2;->this$0:Lcom/eogame/model/Useradpter;

    iput-object p2, p0, Lcom/eogame/model/Useradpter$2;->val$accountInfo:Lcom/eogame/model/EOAccountEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$702(I)I

    .line 101
    iget-object p1, p0, Lcom/eogame/model/Useradpter$2;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$500(Lcom/eogame/model/Useradpter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/model/Useradpter$2;->val$accountInfo:Lcom/eogame/model/EOAccountEntity;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p0, Lcom/eogame/model/Useradpter$2;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$300(Lcom/eogame/model/Useradpter;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/model/Useradpter$2;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v0}, Lcom/eogame/model/Useradpter;->access$200(Lcom/eogame/model/Useradpter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/model/Useradpter$2;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v1}, Lcom/eogame/model/Useradpter;->access$200(Lcom/eogame/model/Useradpter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "eo_login_list_down"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p0, Lcom/eogame/model/Useradpter$2;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$400(Lcom/eogame/model/Useradpter;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
