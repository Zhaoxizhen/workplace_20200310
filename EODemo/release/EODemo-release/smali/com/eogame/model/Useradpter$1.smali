.class Lcom/eogame/model/Useradpter$1;
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


# direct methods
.method constructor <init>(Lcom/eogame/model/Useradpter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v0}, Lcom/eogame/model/Useradpter;->access$100(Lcom/eogame/model/Useradpter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOAccountEntity;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v1}, Lcom/eogame/model/Useradpter;->access$100(Lcom/eogame/model/Useradpter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove index == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "eo"

    invoke-virtual {v1, v2, p1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-virtual {p1}, Lcom/eogame/model/Useradpter;->notifyDataSetChanged()V

    .line 84
    invoke-static {}, Lcom/eogame/model/UserSession;->getInstance()Lcom/eogame/model/UserSession;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/eogame/model/UserSession;->deleteAccount(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$100(Lcom/eogame/model/Useradpter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$300(Lcom/eogame/model/Useradpter;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v0}, Lcom/eogame/model/Useradpter;->access$200(Lcom/eogame/model/Useradpter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v1}, Lcom/eogame/model/Useradpter;->access$200(Lcom/eogame/model/Useradpter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "eo_login_list_down"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$400(Lcom/eogame/model/Useradpter;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 88
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$500(Lcom/eogame/model/Useradpter;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$600(Lcom/eogame/model/Useradpter;)Lcom/eogame/utils/EOAccountViewContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/eogame/utils/EOAccountViewContainer;->showFirstLogin()V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {p1}, Lcom/eogame/model/Useradpter;->access$500(Lcom/eogame/model/Useradpter;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/eogame/model/Useradpter$1;->this$0:Lcom/eogame/model/Useradpter;

    invoke-static {v0}, Lcom/eogame/model/Useradpter;->access$100(Lcom/eogame/model/Useradpter;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOAccountEntity;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
