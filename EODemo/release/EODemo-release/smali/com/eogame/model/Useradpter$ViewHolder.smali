.class Lcom/eogame/model/Useradpter$ViewHolder;
.super Ljava/lang/Object;
.source "Useradpter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/model/Useradpter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field btnDelete:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/eogame/model/Useradpter;

.field tvUsername:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/eogame/model/Useradpter;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/eogame/model/Useradpter$ViewHolder;->this$0:Lcom/eogame/model/Useradpter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eogame/model/Useradpter;Lcom/eogame/model/Useradpter$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/eogame/model/Useradpter$ViewHolder;-><init>(Lcom/eogame/model/Useradpter;)V

    return-void
.end method
