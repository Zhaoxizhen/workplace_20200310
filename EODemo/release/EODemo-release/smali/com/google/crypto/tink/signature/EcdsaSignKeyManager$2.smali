.class Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;
.super Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.source "EcdsaSignKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;->keyFactory()Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/EcdsaKeyFormat;",
        "Lcom/google/crypto/tink/proto/EcdsaPrivateKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;Ljava/lang/Class;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;->this$0:Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/EcdsaKeyFormat;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaKeyFormat;->getParams()Lcom/google/crypto/tink/proto/EcdsaParams;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaParams;->getCurve()Lcom/google/crypto/tink/proto/EllipticCurveType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/signature/SigUtil;->toCurveType(Lcom/google/crypto/tink/proto/EllipticCurveType;)Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/KeyPair;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 115
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 116
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPublicKey;->newBuilder()Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;->this$0:Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;

    .line 121
    invoke-virtual {v3}, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->setParams(Lcom/google/crypto/tink/proto/EcdsaParams;)Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->setX(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->setY(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaPublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPublicKey;

    .line 128
    invoke-static {}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;->this$0:Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;

    .line 129
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    move-result-object v1

    .line 130
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/EcdsaPublicKey;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    move-result-object p1

    .line 131
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;->setKeyValue(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaPrivateKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    return-object p1
.end method

.method public bridge synthetic createKey(Lcom/google/protobuf/MessageLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;->createKey(Lcom/google/crypto/tink/proto/EcdsaKeyFormat;)Lcom/google/crypto/tink/proto/EcdsaPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaKeyFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 106
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/EcdsaKeyFormat;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EcdsaKeyFormat;

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

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;->parseKeyFormat(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/EcdsaKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/EcdsaKeyFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EcdsaKeyFormat;->getParams()Lcom/google/crypto/tink/proto/EcdsaParams;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/signature/SigUtil;->validateEcdsaParams(Lcom/google/crypto/tink/proto/EcdsaParams;)V

    return-void
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    check-cast p1, Lcom/google/crypto/tink/proto/EcdsaKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/signature/EcdsaSignKeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/EcdsaKeyFormat;)V

    return-void
.end method