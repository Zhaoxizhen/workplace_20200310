.class public final Ltw/com/mycard/paymentsdk/baseLib/Constants$HandlerMsg;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/com/mycard/paymentsdk/baseLib/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerMsg"
.end annotation


# static fields
.field public static final MSG_DOWNING:I = 0x0

.field public static final MSG_FAILURE:I = 0x2

.field public static final MSG_FINISH:I = 0x1

.field public static final MSG_UNDOWN:I = -0x1

.field public static final MSG_UPDATE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
