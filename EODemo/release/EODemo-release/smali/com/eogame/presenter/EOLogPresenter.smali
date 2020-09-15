.class public Lcom/eogame/presenter/EOLogPresenter;
.super Ljava/lang/Object;
.source "EOLogPresenter.java"


# static fields
.field public static final BIND_EO:I = 0x6

.field public static final CREATE_ORDER:I = 0x8

.field public static final CREATE_ROLE:I = 0x7

.field public static final ENTRY_GAME:I = 0x2

.field public static final LOGIN_EO:I = 0x4

.field public static final PAY_FAIL:I = 0xa

.field public static final PAY_SUCCESS:I = 0x9

.field private static final PRICE:Ljava/lang/String; = "menoey"

.field public static final QUEIT_GAME:I = 0x5

.field public static final RE_PAY_FAIL:I = 0xc

.field public static final RE_PAY_SUCCESS:I = 0xb

.field private static final ROLE_ID:Ljava/lang/String; = "rid"

.field private static final ROLE_LEVEL:Ljava/lang/String; = "gl"

.field private static final ROLE_NAME:Ljava/lang/String; = "rn"

.field private static final SERVER_ID:Ljava/lang/String; = "sc"

.field public static final SIGN_UP_ACCOUNT:I = 0x3

.field public static final START_GAME:I = 0x1

.field private static final UID:Ljava/lang/String; = "uid"

.field private static instance:Lcom/eogame/presenter/EOLogPresenter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/eogame/presenter/EOLogPresenter;
    .locals 1

    .line 49
    sget-object v0, Lcom/eogame/presenter/EOLogPresenter;->instance:Lcom/eogame/presenter/EOLogPresenter;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/eogame/presenter/EOLogPresenter;

    invoke-direct {v0}, Lcom/eogame/presenter/EOLogPresenter;-><init>()V

    sput-object v0, Lcom/eogame/presenter/EOLogPresenter;->instance:Lcom/eogame/presenter/EOLogPresenter;

    .line 52
    :cond_0
    sget-object v0, Lcom/eogame/presenter/EOLogPresenter;->instance:Lcom/eogame/presenter/EOLogPresenter;

    return-object v0
.end method

.method private sendLog(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/eogame/presenter/EOLogPresenter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/eogame/presenter/EOLogPresenter$1;-><init>(Lcom/eogame/presenter/EOLogPresenter;ILjava/util/Map;)V

    .line 179
    invoke-virtual {v0}, Lcom/eogame/utils/EOThread;->start()V

    return-void
.end method


# virtual methods
.method public sendBind(Ljava/lang/String;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 103
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x6

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendBuyFail(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 133
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "menoey"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendBuySuccess(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 121
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "menoey"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendCreateOrder(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V
    .locals 2

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 109
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "menoey"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x8

    .line 116
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendCreateRole(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 57
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gl"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x7

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendEntryGame(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;)V
    .locals 2

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 67
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gl"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x2

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendInit()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendLogin(Ljava/lang/String;)V
    .locals 2

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 87
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendQuitGame(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 93
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gl"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x5

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendRePayFail(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V
    .locals 2

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 157
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "menoey"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendRePaySuccess(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 145
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "rn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/eogame/model/EOPayInfo;->getPrice()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "menoey"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xb

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method

.method public sendSignUp(Ljava/lang/String;)V
    .locals 2

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 81
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/eogame/presenter/EOLogPresenter;->sendLog(ILjava/util/Map;)V

    return-void
.end method
