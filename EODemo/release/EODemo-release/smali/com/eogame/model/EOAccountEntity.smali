.class public Lcom/eogame/model/EOAccountEntity;
.super Lcom/eogame/model/EOBaseObject;
.source "EOAccountEntity.java"


# static fields
.field public static ACCOUNT_EMPTY:Ljava/lang/String; = ""

.field public static ACCOUNT_SPACE:Ljava/lang/String; = " "

.field public static ACCOUNT_TAB:Ljava/lang/String; = "\t"

.field public static EO_TYPE:Ljava/lang/String; = "eo"

.field public static FB_TYPE:Ljava/lang/String; = "fb"

.field public static GUEST_TYPE:Ljava/lang/String; = "guest"


# instance fields
.field public timestamp:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public userType:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/eogame/model/EOBaseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/eogame/model/EOBaseObject;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    return-void
.end method

.method public static getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;
    .locals 3

    .line 58
    new-instance v0, Lcom/eogame/model/EOAccountEntity;

    invoke-direct {v0}, Lcom/eogame/model/EOAccountEntity;-><init>()V

    const-string v1, "uid"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/EOAccountEntity;->setUserId(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    :cond_0
    const-string v1, "tk"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/EOAccountEntity;->setToken(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    :cond_1
    const-string v1, "ln"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/EOAccountEntity;->setUsername(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    :cond_2
    const-string v1, "ut"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/eogame/model/EOAccountEntity;->setUserType(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    :cond_3
    return-object v0
.end method

.method public static getEntityFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/eogame/model/EOAccountEntity;->getEntityFromJson(Lorg/json/JSONObject;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTimestamp(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eogame/model/EOAccountEntity;->timestamp:Ljava/lang/String;

    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserType(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EOAccountEntity [username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOAccountEntity;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usertype ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
