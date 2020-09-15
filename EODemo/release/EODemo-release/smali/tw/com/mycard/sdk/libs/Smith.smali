.class public Ltw/com/mycard/sdk/libs/Smith;
.super Ljava/lang/Object;
.source "Smith.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private fieldName:Ljava/lang/String;

.field private fieldParentLoaderOfOldLoader:Ljava/lang/reflect/Field;

.field private inited:Z

.field private obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 23
    iput-object p1, p0, Ltw/com/mycard/sdk/libs/Smith;->obj:Ljava/lang/Object;

    .line 24
    iput-object p2, p0, Ltw/com/mycard/sdk/libs/Smith;->fieldName:Ljava/lang/String;

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "obj cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private prepare()V
    .locals 3

    .line 28
    iget-boolean v0, p0, Ltw/com/mycard/sdk/libs/Smith;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Ltw/com/mycard/sdk/libs/Smith;->inited:Z

    .line 31
    iget-object v1, p0, Ltw/com/mycard/sdk/libs/Smith;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 38
    :cond_1
    :try_start_0
    iget-object v2, p0, Ltw/com/mycard/sdk/libs/Smith;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    iput-object v2, p0, Ltw/com/mycard/sdk/libs/Smith;->fieldParentLoaderOfOldLoader:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 47
    throw v0

    .line 46
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ltw/com/mycard/sdk/libs/Smith;->prepare()V

    .line 57
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/Smith;->fieldParentLoaderOfOldLoader:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    iget-object v1, p0, Ltw/com/mycard/sdk/libs/Smith;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unable to cast object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ltw/com/mycard/sdk/libs/Smith;->prepare()V

    .line 72
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/Smith;->fieldParentLoaderOfOldLoader:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Ltw/com/mycard/sdk/libs/Smith;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/NoSuchFieldException;

    invoke-direct {p1}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p1
.end method
