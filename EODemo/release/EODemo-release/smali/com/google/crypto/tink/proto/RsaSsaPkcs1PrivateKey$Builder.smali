.class public final Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RsaSsaPkcs1PrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 498
    invoke-static {}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$000()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$1;)V
    .locals 0

    .line 491
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCrt()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 887
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 888
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1700(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearD()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 655
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$700(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearDp()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 795
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 796
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1300(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearDq()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1500(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearP()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$900(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearPublicKey()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$500(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearQ()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1100(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public clearVersion()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$200(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;)V

    return-object p0
.end method

.method public getCrt()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getCrt()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getD()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getD()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDp()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getDp()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDq()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getDq()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getP()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getP()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getQ()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getQ()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public mergePublicKey(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$400(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)V

    return-object p0
.end method

.method public setCrt(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 873
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1600(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setD(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 639
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 640
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$600(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDp(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1200(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDq(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 826
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1400(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setP(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 688
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$800(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey$Builder;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$300(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)V

    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 572
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 573
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$300(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/proto/RsaSsaPkcs1PublicKey;)V

    return-object p0
.end method

.method public setQ(Lcom/google/protobuf/ByteString;)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$1000(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVersion(I)Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->copyOnWrite()V

    .line 525
    iget-object v0, p0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;->access$100(Lcom/google/crypto/tink/proto/RsaSsaPkcs1PrivateKey;I)V

    return-object p0
.end method
