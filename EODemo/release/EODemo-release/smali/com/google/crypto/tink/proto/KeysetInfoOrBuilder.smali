.class public interface abstract Lcom/google/crypto/tink/proto/KeysetInfoOrBuilder;
.super Ljava/lang/Object;
.source "KeysetInfoOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getKeyInfo(I)Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;
.end method

.method public abstract getKeyInfoCount()I
.end method

.method public abstract getKeyInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/proto/KeysetInfo$KeyInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryKeyId()I
.end method
