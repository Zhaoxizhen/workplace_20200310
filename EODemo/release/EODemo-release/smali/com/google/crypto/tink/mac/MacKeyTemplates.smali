.class public final Lcom/google/crypto/tink/mac/MacKeyTemplates;
.super Ljava/lang/Object;
.source "MacKeyTemplates.java"


# static fields
.field public static final AES_CMAC:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final HMAC_SHA256_128BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final HMAC_SHA256_256BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final HMAC_SHA512_256BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

.field public static final HMAC_SHA512_512BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    sget-object v0, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    const/16 v1, 0x10

    const/16 v2, 0x20

    .line 55
    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/mac/MacKeyTemplates;->createHmacKeyTemplate(IILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/MacKeyTemplates;->HMAC_SHA256_128BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 68
    sget-object v0, Lcom/google/crypto/tink/proto/HashType;->SHA256:Lcom/google/crypto/tink/proto/HashType;

    .line 69
    invoke-static {v2, v2, v0}, Lcom/google/crypto/tink/mac/MacKeyTemplates;->createHmacKeyTemplate(IILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/MacKeyTemplates;->HMAC_SHA256_256BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 82
    sget-object v0, Lcom/google/crypto/tink/proto/HashType;->SHA512:Lcom/google/crypto/tink/proto/HashType;

    const/16 v3, 0x40

    .line 83
    invoke-static {v3, v2, v0}, Lcom/google/crypto/tink/mac/MacKeyTemplates;->createHmacKeyTemplate(IILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/MacKeyTemplates;->HMAC_SHA512_256BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 96
    sget-object v0, Lcom/google/crypto/tink/proto/HashType;->SHA512:Lcom/google/crypto/tink/proto/HashType;

    .line 97
    invoke-static {v3, v3, v0}, Lcom/google/crypto/tink/mac/MacKeyTemplates;->createHmacKeyTemplate(IILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/MacKeyTemplates;->HMAC_SHA512_512BITTAG:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 110
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v2}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    move-result-object v2

    .line 114
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCmacParams;->newBuilder()Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->setTagSize(I)Lcom/google/crypto/tink/proto/AesCmacParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCmacParams$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesCmacParams;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/AesCmacParams;)Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/AesCmacKeyFormat;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/mac/AesCmacKeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/mac/AesCmacKeyManager;-><init>()V

    .line 116
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/AesCmacKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 117
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    sput-object v0, Lcom/google/crypto/tink/mac/MacKeyTemplates;->AES_CMAC:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHmacKeyTemplate(IILcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1

    .line 125
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacParams;->newBuilder()Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setHash(Lcom/google/crypto/tink/proto/HashType;)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object p2

    .line 127
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->setTagSize(I)Lcom/google/crypto/tink/proto/HmacParams$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HmacParams$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/HmacParams;

    .line 129
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/HmacParams;)Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->setKeySize(I)Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacKeyFormat$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HmacKeyFormat;

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HmacKeyFormat;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    new-instance p1, Lcom/google/crypto/tink/mac/HmacKeyManager;

    invoke-direct {p1}, Lcom/google/crypto/tink/mac/HmacKeyManager;-><init>()V

    .line 135
    invoke-virtual {p1}, Lcom/google/crypto/tink/mac/HmacKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    sget-object p1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p0
.end method
