.class Lcom/google/crypto/tink/daead/AesSivKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "AesSivKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/daead/AesSivKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/AesSivKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesSivKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/daead/AesSivKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/daead/AesSivKeyManager;Ljava/lang/Class;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/crypto/tink/daead/AesSivKeyManager$2;->this$0:Lcom/google/crypto/tink/daead/AesSivKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/AesSivKeyFormat;)Lcom/google/crypto/tink/proto/AesSivKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/proto/AesSivKey;->newBuilder()Lcom/google/crypto/tink/proto/AesSivKey$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesSivKeyFormat;->getKeySize()I

    move-result p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesSivKey$Builder;->setKeyValue(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesSivKey$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKeyManager$2;->this$0:Lcom/google/crypto/tink/daead/AesSivKeyManager;

    .line 101
    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/AesSivKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesSivKey$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesSivKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesSivKey;

    return-object p1
.end method

.method public bridge synthetic createKey(Lcom/google/protobuf/MessageLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/google/crypto/tink/proto/AesSivKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/daead/AesSivKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/AesSivKeyFormat;)Lcom/google/crypto/tink/proto/AesSivKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesSivKeyFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 94
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesSivKeyFormat;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesSivKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/daead/AesSivKeyManager$2;->parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesSivKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/AesSivKeyFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesSivKeyFormat;->getKeySize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesSivKeyFormat;->getKeySize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/google/crypto/tink/proto/AesSivKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/daead/AesSivKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/AesSivKeyFormat;)V

    return-void
.end method
