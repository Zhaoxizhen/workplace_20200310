.class Lcom/eogame/mdwsw/PageDemo$5;
.super Ljava/lang/Object;
.source "PageDemo.java"

# interfaces
.implements Lcom/eogame/listener/FacebookFriendsApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/mdwsw/PageDemo;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/mdwsw/PageDemo;


# direct methods
.method constructor <init>(Lcom/eogame/mdwsw/PageDemo;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/eogame/mdwsw/PageDemo$5;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriendsFail(Ljava/lang/String;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$5;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-static {v0}, Lcom/eogame/mdwsw/PageDemo;->access$000(Lcom/eogame/mdwsw/PageDemo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/eogame/mdwsw/PageDemo$5$1;

    invoke-direct {v1, p0, p1}, Lcom/eogame/mdwsw/PageDemo$5$1;-><init>(Lcom/eogame/mdwsw/PageDemo$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFriendsSuccess(Ljava/util/List;)V
    .locals 2

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 326
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eogame/model/EOFacebookFriendsEntity;

    .line 327
    iget-object v0, p0, Lcom/eogame/mdwsw/PageDemo$5;->this$0:Lcom/eogame/mdwsw/PageDemo;

    invoke-static {v0}, Lcom/eogame/mdwsw/PageDemo;->access$000(Lcom/eogame/mdwsw/PageDemo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/eogame/mdwsw/PageDemo$5$2;

    invoke-direct {v1, p0, p1}, Lcom/eogame/mdwsw/PageDemo$5$2;-><init>(Lcom/eogame/mdwsw/PageDemo$5;Lcom/eogame/model/EOFacebookFriendsEntity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
