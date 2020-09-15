.class public Lcom/eogame/model/UserSession;
.super Ljava/lang/Object;
.source "UserSession.java"


# static fields
.field private static instance:Lcom/eogame/model/UserSession;


# instance fields
.field public accountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOAccountEntity;",
            ">;"
        }
    .end annotation
.end field

.field private currentToken:Ljava/lang/String;

.field private currentUserId:Ljava/lang/String;

.field private currentUserType:Ljava/lang/String;

.field public currentUsername:Ljava/lang/String;

.field private db:Lcom/eogame/db/EOAccountDBManager;

.field private roleInfo:Lcom/eogame/model/EORoleInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/eogame/model/EORoleInfo;

    invoke-direct {v0}, Lcom/eogame/model/EORoleInfo;-><init>()V

    iput-object v0, p0, Lcom/eogame/model/UserSession;->roleInfo:Lcom/eogame/model/EORoleInfo;

    return-void
.end method

.method public static getInstance()Lcom/eogame/model/UserSession;
    .locals 1

    .line 31
    sget-object v0, Lcom/eogame/model/UserSession;->instance:Lcom/eogame/model/UserSession;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/eogame/model/UserSession;

    invoke-direct {v0}, Lcom/eogame/model/UserSession;-><init>()V

    sput-object v0, Lcom/eogame/model/UserSession;->instance:Lcom/eogame/model/UserSession;

    .line 34
    :cond_0
    sget-object v0, Lcom/eogame/model/UserSession;->instance:Lcom/eogame/model/UserSession;

    return-object v0
.end method

.method private setCurrentAccount(Lcom/eogame/model/EOAccountEntity;)V
    .locals 1

    .line 154
    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentToken:Ljava/lang/String;

    .line 156
    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentUserId:Ljava/lang/String;

    .line 157
    iget-object p1, p1, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    iput-object p1, p0, Lcom/eogame/model/UserSession;->currentUserType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAccount(Lcom/eogame/model/EOAccountEntity;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Lcom/eogame/model/UserSession;->setCurrentAccount(Lcom/eogame/model/EOAccountEntity;)V

    .line 88
    iget-object v0, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    invoke-virtual {v0, p1}, Lcom/eogame/db/EOAccountDBManager;->addAccount(Lcom/eogame/model/EOAccountEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EODBManager is null.Please call buildAccountInfos first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildAccountInfos(Landroid/app/Application;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOAccountEntity;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Lcom/eogame/db/EOAccountDBManager;->getInstance(Landroid/content/Context;)Lcom/eogame/db/EOAccountDBManager;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    .line 73
    iget-object p1, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    invoke-virtual {p1}, Lcom/eogame/db/EOAccountDBManager;->query()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/model/UserSession;->accountList:Ljava/util/ArrayList;

    .line 74
    iget-object p1, p0, Lcom/eogame/model/UserSession;->accountList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public cleanCurrent()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentToken:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentUserId:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/eogame/model/UserSession;->currentUserType:Ljava/lang/String;

    return-void
.end method

.method public deleteAccount(Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/eogame/db/EOAccountDBManager;->deleteAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "EODBManager is null.Please call buildAccountInfos first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentToken()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/eogame/model/UserSession;->currentToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/eogame/model/UserSession;->currentUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserInfo()Lcom/eogame/model/EOAccountEntity;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Lcom/eogame/model/EOAccountEntity;

    invoke-direct {v0}, Lcom/eogame/model/EOAccountEntity;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    iput-object v1, v0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentUserId:Ljava/lang/String;

    iput-object v1, v0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentUserType:Ljava/lang/String;

    iput-object v1, v0, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EODBManager is null.Please call buildAccountInfos first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentUserName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserType()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/eogame/model/UserSession;->currentUserType:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleInfo()Lcom/eogame/model/EORoleInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/eogame/model/UserSession;->roleInfo:Lcom/eogame/model/EORoleInfo;

    return-object v0
.end method

.method public queryAccount(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    invoke-virtual {v0, p1}, Lcom/eogame/db/EOAccountDBManager;->searchAccount(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentToken(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/eogame/model/UserSession;->currentToken:Ljava/lang/String;

    return-void
.end method

.method public setCurrentUserId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/eogame/model/UserSession;->currentUserId:Ljava/lang/String;

    return-void
.end method

.method public setRoleInfo(Lcom/eogame/model/EORoleInfo;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/eogame/model/UserSession;->roleInfo:Lcom/eogame/model/EORoleInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSession [db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roleInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/UserSession;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/eogame/model/UserSession;->currentUserType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTime(Lcom/eogame/model/EOAccountEntity;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/eogame/model/UserSession;->db:Lcom/eogame/db/EOAccountDBManager;

    invoke-virtual {v0, p1}, Lcom/eogame/db/EOAccountDBManager;->updateTime(Lcom/eogame/model/EOAccountEntity;)V

    .line 171
    iget-object p1, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/model/UserSession;->queryAccount(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Lcom/eogame/model/UserSession;->setCurrentAccount(Lcom/eogame/model/EOAccountEntity;)V

    return-void
.end method
