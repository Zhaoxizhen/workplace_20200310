.class public final Lcom/google/crypto/tink/proto/Empty$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Empty.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/EmptyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/Empty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/Empty;",
        "Lcom/google/crypto/tink/proto/Empty$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/EmptyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/proto/Empty;->access$000()Lcom/google/crypto/tink/proto/Empty;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/Empty$1;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/Empty$Builder;-><init>()V

    return-void
.end method
