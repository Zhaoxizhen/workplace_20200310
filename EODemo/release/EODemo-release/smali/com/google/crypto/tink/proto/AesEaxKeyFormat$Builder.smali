.class public final Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AesEaxKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/AesEaxKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/AesEaxKeyFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/AesEaxKeyFormat;",
        "Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/AesEaxKeyFormatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$000()Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/AesEaxKeyFormat$1;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKeySize()Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->copyOnWrite()V

    .line 254
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$500(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;)V

    return-object p0
.end method

.method public clearParams()Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->copyOnWrite()V

    .line 226
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$300(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;)V

    return-object p0
.end method

.method public getKeySize()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getKeySize()I

    move-result v0

    return v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/AesEaxParams;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->getParams()Lcom/google/crypto/tink/proto/AesEaxParams;

    move-result-object v0

    return-object v0
.end method

.method public hasParams()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->hasParams()Z

    move-result v0

    return v0
.end method

.method public mergeParams(Lcom/google/crypto/tink/proto/AesEaxParams;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->copyOnWrite()V

    .line 219
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$200(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;Lcom/google/crypto/tink/proto/AesEaxParams;)V

    return-object p0
.end method

.method public setKeySize(I)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->copyOnWrite()V

    .line 245
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$400(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;I)V

    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/AesEaxParams$Builder;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->copyOnWrite()V

    .line 211
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/AesEaxParams$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/AesEaxParams;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$100(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;Lcom/google/crypto/tink/proto/AesEaxParams;)V

    return-object p0
.end method

.method public setParams(Lcom/google/crypto/tink/proto/AesEaxParams;)Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->copyOnWrite()V

    .line 202
    iget-object v0, p0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/AesEaxKeyFormat;->access$100(Lcom/google/crypto/tink/proto/AesEaxKeyFormat;Lcom/google/crypto/tink/proto/AesEaxParams;)V

    return-object p0
.end method