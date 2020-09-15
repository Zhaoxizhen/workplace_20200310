.class public Lcom/eogame/db/EOSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EOSQLiteHelper.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x3

.field public static DB_NAME:Ljava/lang/String; = "EOAccount.db"

.field private static TABLENAME:Ljava/lang/String; = "Account"

.field private static final TAG:Ljava/lang/String; = "EOSQLiteHelper"

.field private static TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static TOKEN:Ljava/lang/String; = "token"

.field private static TRACK_TABLENAME:Ljava/lang/String; = "Track"

.field private static UID:Ljava/lang/String; = "uid"

.field private static USERNAME:Ljava/lang/String; = "username"

.field private static USERTYPE:Ljava/lang/String; = "usertype"


# instance fields
.field private CREATE_DATABASE:Ljava/lang/String;

.field private CREATE_DATA_TRACK_DATABASE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/eogame/db/EOSQLiteHelper;->DB_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/eogame/db/EOSQLiteHelper;->TABLENAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(_id INTEGER PRIMARY KEY AUTOINCREMENT, uid VARCHAR(15), username VARCHAR(50), token VARCHAR(50), usertype VARCHAR(50),timestamp VARCHAR(15))"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATABASE:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/eogame/db/EOSQLiteHelper;->TRACK_TABLENAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventType INTEGER, view VARCHAR(50), timestamp VARCHAR(15),netWorkType VARCHAR(20), uid VARCHAR(20),status INTEGER, duration INTEGER,reson VARCHAR(50),pageNo INTEGER,sdkVersion VARCHAR(15),packageVersion VARCHAR(20),os VARCHAR(10),appID VARCHAR(20),device VARCHAR(20),guid VARCHAR(50),osVersion VARCHAR(10))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATA_TRACK_DATABASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/eogame/db/EOSQLiteHelper;->TABLENAME:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "(_id INTEGER PRIMARY KEY AUTOINCREMENT, uid VARCHAR(15), username VARCHAR(50), token VARCHAR(50), usertype VARCHAR(50),timestamp VARCHAR(15))"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATABASE:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/eogame/db/EOSQLiteHelper;->TRACK_TABLENAME:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(_id INTEGER PRIMARY KEY AUTOINCREMENT,eventType INTEGER, view VARCHAR(50), timestamp VARCHAR(15),netWorkType VARCHAR(20), uid VARCHAR(20),status INTEGER, duration INTEGER,reson VARCHAR(50),pageNo INTEGER,sdkVersion VARCHAR(15),packageVersion VARCHAR(20),os VARCHAR(10),appID VARCHAR(20),device VARCHAR(20),guid VARCHAR(50),osVersion VARCHAR(10))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATA_TRACK_DATABASE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATABASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATA_TRACK_DATABASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8

    const-string p2, "EOSQLiteHelper"

    .line 61
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 64
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    :try_start_0
    sget-object v1, Lcom/eogame/db/EOSQLiteHelper;->TABLENAME:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    new-instance v1, Lcom/eogame/model/EOAccountEntity;

    invoke-direct {v1}, Lcom/eogame/model/EOAccountEntity;-><init>()V

    .line 70
    sget-object v2, Lcom/eogame/db/EOSQLiteHelper;->USERNAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eogame/model/EOAccountEntity;->setUsername(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v2

    sget-object v3, Lcom/eogame/db/EOSQLiteHelper;->TOKEN:Ljava/lang/String;

    .line 71
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eogame/model/EOAccountEntity;->setToken(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v2

    sget-object v3, Lcom/eogame/db/EOSQLiteHelper;->TIMESTAMP:Ljava/lang/String;

    .line 72
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eogame/model/EOAccountEntity;->setTimestamp(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v2

    sget-object v3, Lcom/eogame/db/EOSQLiteHelper;->USERTYPE:Ljava/lang/String;

    .line 73
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eogame/model/EOAccountEntity;->setUserType(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    move-result-object v2

    sget-object v3, Lcom/eogame/db/EOSQLiteHelper;->UID:Ljava/lang/String;

    .line 74
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eogame/model/EOAccountEntity;->setUserId(Ljava/lang/String;)Lcom/eogame/model/EOAccountEntity;

    .line 75
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/eogame/db/EOSQLiteHelper;->TABLENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATABASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/eogame/db/EOSQLiteHelper;->CREATE_DATA_TRACK_DATABASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOAccountEntity;

    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    sget-object v2, Lcom/eogame/db/EOSQLiteHelper;->USERNAME:Ljava/lang/String;

    iget-object v3, v0, Lcom/eogame/model/EOAccountEntity;->username:Ljava/lang/String;

    sget-object v4, Lcom/eogame/db/EOSQLiteHelper;->USERNAME:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v2, Lcom/eogame/db/EOSQLiteHelper;->TOKEN:Ljava/lang/String;

    iget-object v3, v0, Lcom/eogame/model/EOAccountEntity;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v2, Lcom/eogame/db/EOSQLiteHelper;->TIMESTAMP:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    sget-object v2, Lcom/eogame/db/EOSQLiteHelper;->USERTYPE:Ljava/lang/String;

    iget-object v3, v0, Lcom/eogame/model/EOAccountEntity;->userType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v2, Lcom/eogame/db/EOSQLiteHelper;->UID:Ljava/lang/String;

    iget-object v0, v0, Lcom/eogame/model/EOAccountEntity;->userId:Ljava/lang/String;

    sget-object v3, Lcom/eogame/db/EOSQLiteHelper;->UID:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/eogame/crypto/DES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/eogame/db/EOSQLiteHelper;->TABLENAME:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string p3, "\u5347\u7ea7\u6570\u636e\u5e93\u6210\u529f\uff01"

    .line 95
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 97
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p3

    const-string v0, "\u6570\u636e\u5e93\u5347\u7ea7\u5931\u8d25"

    invoke-virtual {p3, p2, v0}, Lcom/eogame/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method
