.class public Lcom/eogame/google/SkuDetails;
.super Ljava/lang/Object;
.source "SkuDetails.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mItemType:Ljava/lang/String;

.field private final mJson:Ljava/lang/String;

.field private final mPrice:Ljava/lang/String;

.field private final mPriceAmountMicros:J

.field private final mPriceCurrencyCode:Ljava/lang/String;

.field private final mSku:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "inapp"

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/eogame/google/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/eogame/google/SkuDetails;->mItemType:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/eogame/google/SkuDetails;->mJson:Ljava/lang/String;

    .line 42
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/eogame/google/SkuDetails;->mJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "productId"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eogame/google/SkuDetails;->mSku:Ljava/lang/String;

    const-string p2, "type"

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eogame/google/SkuDetails;->mType:Ljava/lang/String;

    const-string p2, "price"

    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eogame/google/SkuDetails;->mPrice:Ljava/lang/String;

    const-string p2, "price_amount_micros"

    .line 46
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eogame/google/SkuDetails;->mPriceAmountMicros:J

    const-string p2, "price_currency_code"

    .line 47
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eogame/google/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    const-string p2, "title"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/eogame/google/SkuDetails;->mTitle:Ljava/lang/String;

    const-string p2, "description"

    .line 49
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/google/SkuDetails;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eogame/google/SkuDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/eogame/google/SkuDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceAmountMicros()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/eogame/google/SkuDetails;->mPriceAmountMicros:J

    return-wide v0
.end method

.method public getPriceCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/eogame/google/SkuDetails;->mPriceCurrencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/eogame/google/SkuDetails;->mSku:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eogame/google/SkuDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/eogame/google/SkuDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/google/SkuDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
