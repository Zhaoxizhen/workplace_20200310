.class public Lcom/eogame/model/Useradpter;
.super Landroid/widget/BaseAdapter;
.source "Useradpter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/model/Useradpter$ViewHolder;
    }
.end annotation


# static fields
.field private static currentUserIndex:I


# instance fields
.field private cx:Landroid/content/Context;

.field private mContainer:Lcom/eogame/utils/EOAccountViewContainer;

.field private mLoginRecordListBt:Landroid/widget/ImageView;

.field private mPopWindow:Landroid/widget/PopupWindow;

.field private mUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOAccountEntity;",
            ">;"
        }
    .end annotation
.end field

.field private tvUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/PopupWindow;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/eogame/utils/EOAccountViewContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOAccountEntity;",
            ">;",
            "Landroid/widget/PopupWindow;",
            "Landroid/widget/TextView;",
            "Landroid/widget/ImageView;",
            "Lcom/eogame/utils/EOAccountViewContainer;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/eogame/model/Useradpter;->mUserList:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/eogame/model/Useradpter;->cx:Landroid/content/Context;

    .line 35
    iput-object p4, p0, Lcom/eogame/model/Useradpter;->tvUsername:Landroid/widget/TextView;

    .line 36
    iput-object p3, p0, Lcom/eogame/model/Useradpter;->mPopWindow:Landroid/widget/PopupWindow;

    .line 37
    iput-object p5, p0, Lcom/eogame/model/Useradpter;->mLoginRecordListBt:Landroid/widget/ImageView;

    .line 38
    iput-object p6, p0, Lcom/eogame/model/Useradpter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    const/4 p1, 0x0

    .line 39
    sput p1, Lcom/eogame/model/Useradpter;->currentUserIndex:I

    return-void
.end method

.method static synthetic access$100(Lcom/eogame/model/Useradpter;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eogame/model/Useradpter;->mUserList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/model/Useradpter;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eogame/model/Useradpter;->cx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/model/Useradpter;)Landroid/widget/ImageView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eogame/model/Useradpter;->mLoginRecordListBt:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/eogame/model/Useradpter;)Landroid/widget/PopupWindow;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eogame/model/Useradpter;->mPopWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$500(Lcom/eogame/model/Useradpter;)Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eogame/model/Useradpter;->tvUsername:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/eogame/model/Useradpter;)Lcom/eogame/utils/EOAccountViewContainer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eogame/model/Useradpter;->mContainer:Lcom/eogame/utils/EOAccountViewContainer;

    return-object p0
.end method

.method static synthetic access$702(I)I
    .locals 0

    .line 19
    sput p0, Lcom/eogame/model/Useradpter;->currentUserIndex:I

    return p0
.end method

.method public static getCurrentUserIndex()I
    .locals 1

    .line 113
    sget v0, Lcom/eogame/model/Useradpter;->currentUserIndex:I

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eogame/model/Useradpter;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eogame/model/Useradpter;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 61
    iget-object p2, p0, Lcom/eogame/model/Useradpter;->cx:Landroid/content/Context;

    const-string p3, "eo_item_accountselect"

    invoke-static {p2, p3}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance p3, Lcom/eogame/model/Useradpter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/eogame/model/Useradpter$ViewHolder;-><init>(Lcom/eogame/model/Useradpter;Lcom/eogame/model/Useradpter$1;)V

    .line 63
    iget-object v0, p0, Lcom/eogame/model/Useradpter;->cx:Landroid/content/Context;

    const-string v1, "eo_tv_username_accountlist"

    invoke-static {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/eogame/model/Useradpter$ViewHolder;->tvUsername:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/eogame/model/Useradpter;->cx:Landroid/content/Context;

    const-string v1, "eo_iv_delete_accountlist"

    invoke-static {v0, v1}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/eogame/model/Useradpter$ViewHolder;->btnDelete:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/eogame/model/Useradpter$ViewHolder;

    .line 70
    :goto_0
    iget-object v0, p3, Lcom/eogame/model/Useradpter$ViewHolder;->tvUsername:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/eogame/model/Useradpter;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eogame/model/EOAccountEntity;

    iget-object v1, v1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p3, Lcom/eogame/model/Useradpter$ViewHolder;->tvUsername:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p3, Lcom/eogame/model/Useradpter$ViewHolder;->btnDelete:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/eogame/model/Useradpter;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eogame/model/EOAccountEntity;

    .line 75
    iget-object v0, p3, Lcom/eogame/model/Useradpter$ViewHolder;->btnDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/eogame/model/Useradpter$1;

    invoke-direct {v1, p0}, Lcom/eogame/model/Useradpter$1;-><init>(Lcom/eogame/model/Useradpter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p3, p3, Lcom/eogame/model/Useradpter$ViewHolder;->tvUsername:Landroid/widget/TextView;

    new-instance v0, Lcom/eogame/model/Useradpter$2;

    invoke-direct {v0, p0, p1}, Lcom/eogame/model/Useradpter$2;-><init>(Lcom/eogame/model/Useradpter;Lcom/eogame/model/EOAccountEntity;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
