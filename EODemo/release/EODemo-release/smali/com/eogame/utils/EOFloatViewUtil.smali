.class public Lcom/eogame/utils/EOFloatViewUtil;
.super Ljava/lang/Object;
.source "EOFloatViewUtil.java"


# instance fields
.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/eogame/utils/EOFloatViewUtil$1;

    invoke-direct {v0, p0}, Lcom/eogame/utils/EOFloatViewUtil$1;-><init>(Lcom/eogame/utils/EOFloatViewUtil;)V

    iput-object v0, p0, Lcom/eogame/utils/EOFloatViewUtil;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public destory(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public hideFloatView()V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    return-void
.end method

.method public setNewMessageTip()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showFloatView()V
    .locals 0

    return-void
.end method
