.class Lcom/eogame/activity/EOWebPayActivity$Item;
.super Ljava/lang/Object;
.source "EOWebPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field money:Ljava/lang/String;

.field productCode:Ljava/lang/String;

.field productName:Ljava/lang/String;

.field final synthetic this$0:Lcom/eogame/activity/EOWebPayActivity;


# direct methods
.method public constructor <init>(Lcom/eogame/activity/EOWebPayActivity;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$Item;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
