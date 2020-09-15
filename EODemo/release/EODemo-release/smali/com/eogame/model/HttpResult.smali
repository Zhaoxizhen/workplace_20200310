.class public Lcom/eogame/model/HttpResult;
.super Lcom/eogame/model/EOBaseObject;
.source "HttpResult.java"


# static fields
.field public static final CODE_REPAY_SUCCESS:I = 0x15f98

.field public static final CODE_SUCCESS:I = 0x2710

.field public static final CODE_TOKEN_TIME_OUT:I = 0x15fb6

.field public static final RESULT_ADDRESS_NOT_EXIST:I = 0x6

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_JSON_ERROR:I = 0x5

.field public static final RESULT_NET_ERROR:I = 0x4

.field public static final RESULT_OK:I = 0x1

.field public static final RESULT_SERVER_ERROR:I = 0x3

.field public static final RESULT_SERVER_RESULT_ERROR:I = 0x7

.field public static final RESULT_TRACK_SHOULD_STOP_ERROR:I = 0x33


# instance fields
.field private mCode:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOBaseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOBaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private mErrors:Ljava/lang/String;

.field private mJsonData:Lorg/json/JSONObject;

.field private mMessage:Ljava/lang/String;

.field private mObj:Lcom/eogame/model/EOBaseObject;

.field private mResult:I

.field private number:I

.field private orderid:Ljava/lang/String;

.field private prepayId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/eogame/model/EOBaseObject;-><init>()V

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 41
    iput-object v0, p0, Lcom/eogame/model/HttpResult;->mMessage:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/eogame/model/HttpResult;->mErrors:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/eogame/model/HttpResult;->url:Ljava/lang/String;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/eogame/model/HttpResult;->mCode:I

    .line 79
    iput v0, p0, Lcom/eogame/model/HttpResult;->mResult:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/eogame/model/EOBaseObject;-><init>()V

    const-string v0, "\u672a\u77e5\u9519\u8bef"

    .line 41
    iput-object v0, p0, Lcom/eogame/model/HttpResult;->mMessage:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/eogame/model/HttpResult;->mErrors:Ljava/lang/String;

    const-string v0, ""

    .line 48
    iput-object v0, p0, Lcom/eogame/model/HttpResult;->url:Ljava/lang/String;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/eogame/model/HttpResult;->mCode:I

    .line 79
    iput v0, p0, Lcom/eogame/model/HttpResult;->mResult:I

    .line 54
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->url:Ljava/lang/String;

    return-void
.end method

.method public static setCommon(Lcom/eogame/model/HttpResult;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "code"

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eogame/model/HttpResult;->setCode(I)V

    const-string v0, "msg"

    .line 149
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eogame/model/HttpResult;->setMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCode()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/eogame/model/HttpResult;->mCode:I

    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOBaseObject;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eogame/model/HttpResult;->mData:Ljava/util/ArrayList;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOBaseObject;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eogame/model/HttpResult;->mDataList:Ljava/util/ArrayList;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getErrors()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mErrors:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/eogame/model/HttpResult;->number:I

    return v0
.end method

.method public getObj()Lcom/eogame/model/EOBaseObject;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mObj:Lcom/eogame/model/EOBaseObject;

    return-object v0
.end method

.method public getOrderid()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->orderid:Ljava/lang/String;

    return-object v0
.end method

.method public getPrepareId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->prepayId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/eogame/model/HttpResult;->mResult:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getmJsonData()Lorg/json/JSONObject;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eogame/model/HttpResult;->mJsonData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/eogame/model/HttpResult;->mCode:I

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOBaseObject;",
            ">;>;)V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->mData:Ljava/util/ArrayList;

    return-void
.end method

.method public setDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOBaseObject;",
            ">;)V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setErrors(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->mErrors:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/eogame/model/HttpResult;->number:I

    return-void
.end method

.method public setObj(Lcom/eogame/model/EOBaseObject;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->mObj:Lcom/eogame/model/EOBaseObject;

    return-void
.end method

.method public setOrderid(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->orderid:Ljava/lang/String;

    return-void
.end method

.method public setPrepareId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->prepayId:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/eogame/model/HttpResult;->mResult:I

    return-void
.end method

.method public setmJsonData(Lorg/json/JSONObject;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/eogame/model/HttpResult;->mJsonData:Lorg/json/JSONObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResult [mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/HttpResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/eogame/model/HttpResult;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", orderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/HttpResult;->orderid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/eogame/model/HttpResult;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/HttpResult;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/HttpResult;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/HttpResult;->mObj:Lcom/eogame/model/EOBaseObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
