.class Lcom/eogame/mdwsw/PageDemo$5$2;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/mdwsw/PageDemo$5;->getFriendsSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eogame/mdwsw/PageDemo$5;

.field final synthetic val$f:Lcom/eogame/model/EOFacebookFriendsEntity;


# direct methods
.method constructor <init>(Lcom/eogame/mdwsw/PageDemo$5;Lcom/eogame/model/EOFacebookFriendsEntity;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/eogame/mdwsw/PageDemo$5$2;->this$1:Lcom/eogame/mdwsw/PageDemo$5;

    iput-object p2, p0, Lcom/eogame/mdwsw/PageDemo$5$2;->val$f:Lcom/eogame/model/EOFacebookFriendsEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$5$2;->this$1:Lcom/eogame/mdwsw/PageDemo$5;

    iget-object v0, v0, Lcom/eogame/mdwsw/PageDemo$5;->this$0:Lcom/eogame/mdwsw/PageDemo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u597d\u53cb\u6210\u529f,userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/mdwsw/PageDemo$5$2;->val$f:Lcom/eogame/model/EOFacebookFriendsEntity;

    iget-object v2, v2, Lcom/eogame/model/EOFacebookFriendsEntity;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
