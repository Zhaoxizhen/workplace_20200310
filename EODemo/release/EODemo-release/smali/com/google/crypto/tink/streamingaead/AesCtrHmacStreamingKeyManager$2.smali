.class Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "AesCtrHmacStreamingKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;Ljava/lang/Class;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;->this$0:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;->newBuilder()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->getKeySize()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;->setKeyValue(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;->setParams(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;->this$0:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;

    .line 125
    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;

    return-object p1
.end method

.method public bridge synthetic createKey(Lcom/google/protobuf/MessageLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 115
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;

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

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;->parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->getKeySize()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager;->access$000(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingParams;)V

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key_size must be at least 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    check-cast p1, Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/AesCtrHmacStreamingKeyFormat;)V

    return-void
.end method
