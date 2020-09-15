.class public Lcom/eogame/model/EOPayInfo;
.super Ljava/lang/Object;
.source "EOPayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cpOrderId:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private extInfo:Ljava/lang/String;

.field private orderNO:Ljava/lang/String;

.field private price:F

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->orderNO:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->productId:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->productName:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->productDesc:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->cpOrderId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->extInfo:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/eogame/model/EOPayInfo;->currencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->extInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNO()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->orderNO:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/eogame/model/EOPayInfo;->price:F

    return v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eogame/model/EOPayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public setExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->extInfo:Ljava/lang/String;

    return-void
.end method

.method public setOrderNO(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->orderNO:Ljava/lang/String;

    return-void
.end method

.method public setPrice(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/eogame/model/EOPayInfo;->price:F

    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->productDesc:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/eogame/model/EOPayInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EOPayInfo [orderNO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOPayInfo;->orderNO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOPayInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOPayInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOPayInfo;->productDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpOrderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOPayInfo;->cpOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOPayInfo;->extInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/eogame/model/EOPayInfo;->price:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
