.class Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "ChaCha20Poly1305KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;",
        "Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;Ljava/lang/Class;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$2;->this$0:Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;->newBuilder()Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$2;->this$0:Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;

    .line 98
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;

    move-result-object p1

    const/16 v0, 0x20

    .line 99
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;->setKeyValue(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

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
    check-cast p1, Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$2;->createKey(Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305Key;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;

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
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$2;->parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    check-cast p1, Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/ChaCha20Poly1305KeyFormat;)V

    return-void
.end method
