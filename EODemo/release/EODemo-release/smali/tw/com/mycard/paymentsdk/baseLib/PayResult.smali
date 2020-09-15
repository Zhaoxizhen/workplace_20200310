.class public Ltw/com/mycard/paymentsdk/baseLib/PayResult;
.super Ljava/lang/Object;
.source "PayResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3db5e373b2cbe7d9L


# instance fields
.field private ErrorCode:Ljava/lang/String;

.field private HttpStatus:I

.field private TokenID:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Ltw/com/mycard/paymentsdk/baseLib/PayResult;->HttpStatus:I

    .line 13
    iput-object p2, p0, Ltw/com/mycard/paymentsdk/baseLib/PayResult;->ErrorCode:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Ltw/com/mycard/paymentsdk/baseLib/PayResult;->TokenID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/PayResult;->ErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatus()I
    .locals 1

    .line 18
    iget v0, p0, Ltw/com/mycard/paymentsdk/baseLib/PayResult;->HttpStatus:I

    return v0
.end method

.method public getTokenID()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Ltw/com/mycard/paymentsdk/baseLib/PayResult;->TokenID:Ljava/lang/String;

    return-object v0
.end method
