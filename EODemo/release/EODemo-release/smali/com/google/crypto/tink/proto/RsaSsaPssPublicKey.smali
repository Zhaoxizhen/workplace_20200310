.class public final Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RsaSsaPssPublicKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/RsaSsaPssPublicKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;",
        "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

.field public static final E_FIELD_NUMBER:I = 0x4

.field public static final N_FIELD_NUMBER:I = 0x3

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private e_:Lcom/google/protobuf/ByteString;

.field private n_:Lcom/google/protobuf/ByteString;

.field private params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;-><init>()V

    .line 568
    sput-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    .line 569
    const-class v1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/protobuf/ByteString;

    .line 20
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->mergeParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearParams()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setN(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearN()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->setE(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->clearE()V

    return-void
.end method

.method private clearE()V
    .locals 1

    .line 207
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getE()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearN()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getN()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1

    .line 574
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    .line 109
    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssParams;->newBuilder(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/RsaSsaPssParams$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    goto :goto_0

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;
    .locals 1

    .line 285
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;
    .locals 1

    .line 288
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;",
            ">;"
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setE(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setN(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setParams(Lcom/google/crypto/tink/proto/RsaSsaPssParams;)V
    .locals 0

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    iput-object p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    return-void
.end method

.method private setVersion(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 513
    sget-object p2, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 558
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 552
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 537
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 539
    const-class p2, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    monitor-enter p2

    .line 540
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 542
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 545
    sput-object p1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 547
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 534
    :pswitch_3
    sget-object p1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    .line 521
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "version_"

    aput-object v0, p1, p3

    const-string p3, "params_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "n_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "e_"

    aput-object p3, p1, p2

    .line 530
    sget-object p2, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    invoke-static {p2, p3, p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 518
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$Builder;-><init>(Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey$1;)V

    return-object p1

    .line 515
    :pswitch_6
    new-instance p1, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getE()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->e_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getN()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->n_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/RsaSsaPssParams;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPssParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPssPublicKey;->params_:Lcom/google/crypto/tink/proto/RsaSsaPssParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
