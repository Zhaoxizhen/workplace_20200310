.class public Lcom/eogame/db/EOAccountDBManager;
.super Ljava/lang/Object;
.source "EOAccountDBManager.java"


# static fields
.field private static final KEY_PASSWORD:Ljava/lang/String; = "eo___pwd"

.field private static final KEY_UID:Ljava/lang/String; = "user__id"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static MAX_NUM:I = 0x4

.field private static TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static TIMESTAMP_DESC:Ljava/lang/String; = "timestamp DESC"

.field private static TOKEN:Ljava/lang/String; = "token"

.field private static UID:Ljava/lang/String; = "uid"

.field private static USERNAME:Ljava/lang/String; = "username"

.field private static USERTYPE:Ljava/lang/String; = "usertype"

.field private static db:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static dbManager:Lcom/eogame/db/EOAccountDBManager; = null

.field private static tableName:Ljava/lang/String; = "Account"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 4

    .line 221
    :try_start_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    const-string v1, "eo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete user -> userId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 224
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private encryptEntity(Lcom/eogame/model/EOAccountEntity;)V
    .locals 2

    .line 349
    :try_start_0
    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    const-string v1, "user__id"

    invoke-static {v0, v1}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    .line 350
    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    const-string v1, "username"

    invoke-static {v0, v1}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getCurrentTime()J
    .locals 4

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getEncryptUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "user__id"

    .line 369
    invoke-static {p1, v0}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private getEncryptUsername(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "username"

    .line 359
    invoke-static {p1, v0}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/eogame/db/EOAccountDBManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->dbManager:Lcom/eogame/db/EOAccountDBManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/eogame/db/EOAccountDBManager;

    invoke-direct {v0}, Lcom/eogame/db/EOAccountDBManager;-><init>()V

    sput-object v0, Lcom/eogame/db/EOAccountDBManager;->dbManager:Lcom/eogame/db/EOAccountDBManager;

    .line 44
    new-instance v0, Lcom/eogame/db/EOSQLiteHelper;

    invoke-direct {v0, p0}, Lcom/eogame/db/EOSQLiteHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/eogame/db/EOSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    :cond_0
    sget-object p0, Lcom/eogame/db/EOAccountDBManager;->dbManager:Lcom/eogame/db/EOAccountDBManager;

    return-object p0
.end method

.method private search(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 10

    .line 166
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    .line 167
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    .line 168
    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 169
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/eogame/model/EOAccountEntity;

    invoke-direct {v0}, Lcom/eogame/model/EOAccountEntity;-><init>()V

    .line 171
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->USERNAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-static {v1, v2}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/EOAccountEntity;->setUsername(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->TOKEN:Ljava/lang/String;

    .line 172
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setToken(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP:Ljava/lang/String;

    .line 173
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setTimestamp(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->USERTYPE:Ljava/lang/String;

    .line 174
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setUserType(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    .line 175
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "user__id"

    invoke-static {p1, v2}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/eogame/model/EOAccountEntity;->setUserId(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 180
    :goto_0
    throw p1
.end method


# virtual methods
.method public addAccount(Lcom/eogame/model/EOAccountEntity;)V
    .locals 4

    .line 53
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    iget-object v1, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/eogame/db/EOAccountDBManager;->search(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    :try_start_0
    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->encryptEntity(Lcom/eogame/model/EOAccountEntity;)V

    .line 59
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->USERNAME:Ljava/lang/String;

    iget-object v2, p1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->TOKEN:Ljava/lang/String;

    iget-object v2, p1, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eogame/db/EOAccountDBManager;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->USERTYPE:Ljava/lang/String;

    iget-object v2, p1, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    iget-object p1, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 65
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 72
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->encryptEntity(Lcom/eogame/model/EOAccountEntity;)V

    .line 73
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->TOKEN:Ljava/lang/String;

    iget-object v2, p1, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->USERTYPE:Ljava/lang/String;

    iget-object v2, p1, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eogame/db/EOAccountDBManager;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 77
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    aput-object p1, v2, v3

    .line 78
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :goto_0
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public changeVisitorToAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 302
    sget-object p2, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 304
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 305
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 306
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 307
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 309
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :goto_0
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    sget-object p2, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public deleteAccount(Ljava/lang/String;)V
    .locals 3

    .line 235
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 237
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 238
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 239
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 240
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 242
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :goto_0
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public query()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/EOAccountEntity;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    :try_start_0
    sget-object v8, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP_DESC:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 134
    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 135
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    sget v3, Lcom/eogame/db/EOAccountDBManager;->MAX_NUM:I

    if-gt v2, v3, :cond_0

    .line 137
    new-instance v2, Lcom/eogame/model/EOAccountEntity;

    invoke-direct {v2}, Lcom/eogame/model/EOAccountEntity;-><init>()V

    .line 138
    sget-object v3, Lcom/eogame/db/EOAccountDBManager;->USERNAME:Ljava/lang/String;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "username"

    invoke-static {v3, v4}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eogame/model/EOAccountEntity;->setUsername(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v3

    sget-object v4, Lcom/eogame/db/EOAccountDBManager;->TOKEN:Ljava/lang/String;

    .line 139
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eogame/model/EOAccountEntity;->setToken(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v3

    sget-object v4, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP:Ljava/lang/String;

    .line 140
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eogame/model/EOAccountEntity;->setTimestamp(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v3

    sget-object v4, Lcom/eogame/db/EOAccountDBManager;->USERTYPE:Ljava/lang/String;

    .line 141
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eogame/model/EOAccountEntity;->setUserType(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v3

    sget-object v4, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    .line 142
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user__id"

    invoke-static {v4, v5}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eogame/model/EOAccountEntity;->setUserId(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    .line 144
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_0
    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eogame/db/EOAccountDBManager;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    :cond_1
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public searchAccount(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;
    .locals 10

    .line 191
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 193
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    .line 194
    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    .line 195
    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 196
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/eogame/model/EOAccountEntity;

    invoke-direct {v0}, Lcom/eogame/model/EOAccountEntity;-><init>()V

    .line 198
    sget-object v1, Lcom/eogame/db/EOAccountDBManager;->USERNAME:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "username"

    invoke-static {v1, v2}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eogame/model/EOAccountEntity;->setUsername(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->TOKEN:Ljava/lang/String;

    .line 199
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setToken(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP:Ljava/lang/String;

    .line 200
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setTimestamp(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->USERTYPE:Ljava/lang/String;

    .line 201
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setUserType(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v1

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    .line 202
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "user__id"

    invoke-static {p1, v2}, Lcom/eogame/crypto/DES;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/eogame/model/EOAccountEntity;->setUserId(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    .line 203
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    .line 206
    :cond_0
    :try_start_1
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 208
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    :goto_0
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x0

    return-object p1

    :goto_1
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method

.method public updateTime(Lcom/eogame/model/EOAccountEntity;)V
    .locals 4

    .line 324
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 330
    :try_start_0
    iget-object v0, p1, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 332
    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->USERNAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->USERTYPE:Ljava/lang/String;

    iget-object v2, p1, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->TIMESTAMP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/eogame/db/EOAccountDBManager;->getCurrentTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/eogame/db/EOAccountDBManager;->UID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 337
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/eogame/db/EOAccountDBManager;->getEncryptUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 338
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/eogame/db/EOAccountDBManager;->tableName:Ljava/lang/String;

    invoke-virtual {p1, v3, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 339
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 341
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :goto_0
    sget-object p1, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    sget-object v0, Lcom/eogame/db/EOAccountDBManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method
