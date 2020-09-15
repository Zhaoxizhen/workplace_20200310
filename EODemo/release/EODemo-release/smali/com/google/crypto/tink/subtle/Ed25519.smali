.class final Lcom/google/crypto/tink/subtle/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;,
        Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$XYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    }
.end annotation


# static fields
.field private static final CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

.field static final GROUP_ORDER:[B

.field private static final NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

.field public static final PUBLIC_KEY_LEN:I = 0x20

.field public static final SECRET_KEY_LEN:I = 0x20

.field public static final SIGNATURE_LEN:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 52
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    const/16 v1, 0xa

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v0, v2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    .line 56
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    new-array v4, v1, [J

    fill-array-data v4, :array_4

    new-array v5, v1, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>([J[J[J)V

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;[J)V

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    const/16 v0, 0x20

    .line 1557
    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->GROUP_ORDER:[B

    return-void

    :array_0
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([J)I
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->getLsb([J)I

    move-result p0

    return p0
.end method

.method static synthetic access$100([J[J)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->pow2252m3([J[J)V

    return-void
.end method

.method static synthetic access$200([J)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->isNonZeroVarTime([J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300([J[J)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->neg([J[J)V

    return-void
.end method

.method private static add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V
    .locals 4

    const/16 v0, 0xa

    .line 385
    new-array v0, v0, [J

    .line 388
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 391
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 394
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 397
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 400
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 403
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 406
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p2, p2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 409
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p2, p2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {p1, p2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 412
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p2, p2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {p1, p2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 415
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {p1, v0, p2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 418
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object p0, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {p1, v0, p0}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    return-void
.end method

.method private static doubleScalarMultVarTime([BLcom/google/crypto/tink/subtle/Ed25519$XYZT;[B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 6

    const/16 v0, 0x8

    .line 694
    new-array v0, v0, [Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    .line 695
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 696
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>()V

    .line 697
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZT(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    .line 698
    new-instance p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {p1, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    const/4 v2, 0x1

    .line 699
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 700
    aget-object v3, v0, v3

    invoke-static {v1, p1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 701
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    new-instance v4, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v4, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    invoke-direct {v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 704
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->slide([B)[B

    move-result-object p0

    .line 705
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Ed25519;->slide([B)[B

    move-result-object p1

    .line 706
    new-instance p2, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    sget-object v1, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {p2, v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 707
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    const/16 v2, 0xff

    :goto_1
    if-ltz v2, :cond_2

    .line 710
    aget-byte v3, p0, v2

    if-nez v3, :cond_2

    aget-byte v3, p1, v2

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ltz v2, :cond_7

    .line 715
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v3, p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 716
    aget-byte v3, p0, v2

    if-lez v3, :cond_3

    .line 717
    invoke-static {v1, p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v3

    aget-byte v4, p0, v2

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v0, v4

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    goto :goto_3

    .line 718
    :cond_3
    aget-byte v3, p0, v2

    if-gez v3, :cond_4

    .line 719
    invoke-static {v1, p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v3

    aget-byte v4, p0, v2

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    aget-object v4, v0, v4

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 721
    :cond_4
    :goto_3
    aget-byte v3, p1, v2

    if-lez v3, :cond_5

    .line 722
    invoke-static {v1, p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-byte v5, p1, v2

    div-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    goto :goto_4

    .line 723
    :cond_5
    aget-byte v3, p1, v2

    if-gez v3, :cond_6

    .line 724
    invoke-static {v1, p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-byte v5, p1, v2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    invoke-static {p2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 728
    :cond_7
    new-instance p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    return-object p0
.end method

.method private static doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V
    .locals 4

    const/16 v0, 0xa

    .line 479
    new-array v0, v0, [J

    .line 482
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 485
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 488
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 491
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 494
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 497
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, p1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 500
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 503
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 506
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {p1, v0, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 509
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object p0, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p0, p0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {p1, v0, p0}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    return-void
.end method

.method private static doubleXYZT(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V
    .locals 0

    .line 516
    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    return-void
.end method

.method private static eq(II)I
    .locals 0

    xor-int/2addr p0, p1

    xor-int/lit8 p0, p0, -0x1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p0, 0x4

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    and-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x1

    and-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x7

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static getHashedScalar([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1508
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "SHA-512"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 1509
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1510
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1513
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    const/16 v0, 0x1f

    .line 1515
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 1517
    aget-byte v1, p0, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-object p0
.end method

.method private static getLsb([J)I
    .locals 1

    .line 753
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isNonZeroVarTime([J)Z
    .locals 5

    .line 737
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 738
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 740
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object p0

    .line 741
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v4, p0, v2

    if-eqz v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private static isSmallerThanGroupOrder([B)Z
    .locals 4

    const/16 v0, 0x1f

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1574
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 1575
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519;->GROUP_ORDER:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static load3([BI)J
    .locals 5

    .line 872
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    .line 873
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x2

    .line 874
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x10

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static load4([BI)J
    .locals 3

    .line 882
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x3

    .line 883
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    const/16 v2, 0x18

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static mulAdd([B[B[B[B)V
    .locals 78

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 1167
    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v3

    const-wide/32 v5, 0x1fffff

    and-long/2addr v3, v5

    const/4 v7, 0x2

    .line 1168
    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v8

    const/4 v10, 0x5

    shr-long/2addr v8, v10

    and-long/2addr v8, v5

    .line 1169
    invoke-static {v0, v10}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v11

    shr-long/2addr v11, v7

    and-long/2addr v11, v5

    const/4 v13, 0x7

    .line 1170
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v14

    shr-long/2addr v14, v13

    and-long/2addr v14, v5

    const/16 v13, 0xa

    .line 1171
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v16

    const/4 v13, 0x4

    shr-long v16, v16, v13

    and-long v16, v16, v5

    const/16 v13, 0xd

    .line 1172
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v18

    const/4 v13, 0x1

    shr-long v18, v18, v13

    and-long v18, v18, v5

    const/16 v13, 0xf

    .line 1173
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v20

    const/4 v13, 0x6

    shr-long v20, v20, v13

    and-long v20, v20, v5

    const/16 v13, 0x12

    .line 1174
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v22

    const/4 v13, 0x3

    shr-long v22, v22, v13

    and-long v22, v22, v5

    const/16 v13, 0x15

    .line 1175
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v24

    and-long v24, v24, v5

    const/16 v13, 0x17

    .line 1176
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v26

    shr-long v26, v26, v10

    and-long v26, v26, v5

    const/16 v13, 0x1a

    .line 1177
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v28

    shr-long v28, v28, v7

    and-long v28, v28, v5

    const/16 v13, 0x1c

    .line 1178
    invoke-static {v0, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v30

    const/4 v0, 0x7

    shr-long v30, v30, v0

    const/4 v13, 0x0

    .line 1179
    invoke-static {v1, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v32

    and-long v32, v32, v5

    .line 1180
    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v34

    shr-long v34, v34, v10

    and-long v34, v34, v5

    .line 1181
    invoke-static {v1, v10}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v36

    shr-long v36, v36, v7

    and-long v36, v36, v5

    .line 1182
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v38

    shr-long v38, v38, v0

    and-long v38, v38, v5

    const/16 v0, 0xa

    .line 1183
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v40

    const/4 v0, 0x4

    shr-long v40, v40, v0

    and-long v40, v40, v5

    const/16 v0, 0xd

    .line 1184
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v42

    const/4 v0, 0x1

    shr-long v42, v42, v0

    and-long v42, v42, v5

    const/16 v0, 0xf

    .line 1185
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v44

    const/4 v0, 0x6

    shr-long v44, v44, v0

    and-long v44, v44, v5

    const/16 v0, 0x12

    .line 1186
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v46

    const/4 v0, 0x3

    shr-long v46, v46, v0

    and-long v46, v46, v5

    const/16 v0, 0x15

    .line 1187
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v48

    and-long v48, v48, v5

    const/16 v0, 0x17

    .line 1188
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v10

    and-long v50, v50, v5

    const/16 v0, 0x1a

    .line 1189
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v52

    shr-long v52, v52, v7

    and-long v52, v52, v5

    const/16 v0, 0x1c

    .line 1190
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v0

    const/4 v13, 0x7

    shr-long/2addr v0, v13

    const/4 v13, 0x0

    .line 1191
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v54

    and-long v54, v54, v5

    .line 1192
    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v10

    and-long v56, v56, v5

    .line 1193
    invoke-static {v2, v10}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v58

    shr-long v58, v58, v7

    and-long v58, v58, v5

    const/4 v13, 0x7

    .line 1194
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v60

    shr-long v60, v60, v13

    and-long v60, v60, v5

    const/16 v13, 0xa

    .line 1195
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v62

    const/4 v13, 0x4

    shr-long v62, v62, v13

    and-long v62, v62, v5

    const/16 v13, 0xd

    .line 1196
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v64

    const/4 v13, 0x1

    shr-long v64, v64, v13

    and-long v64, v64, v5

    const/16 v13, 0xf

    .line 1197
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v66

    const/4 v13, 0x6

    shr-long v66, v66, v13

    and-long v66, v66, v5

    const/16 v13, 0x12

    .line 1198
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v68

    const/4 v13, 0x3

    shr-long v68, v68, v13

    and-long v68, v68, v5

    const/16 v13, 0x15

    .line 1199
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v70

    and-long v70, v70, v5

    const/16 v13, 0x17

    .line 1200
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v72

    shr-long v72, v72, v10

    and-long v72, v72, v5

    const/16 v13, 0x1a

    .line 1201
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v74

    shr-long v74, v74, v7

    and-long v5, v74, v5

    const/16 v13, 0x1c

    .line 1202
    invoke-static {v2, v13}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v74

    const/4 v2, 0x7

    shr-long v74, v74, v2

    mul-long v76, v3, v32

    add-long v54, v54, v76

    mul-long v76, v3, v34

    add-long v56, v56, v76

    mul-long v76, v8, v32

    add-long v56, v56, v76

    mul-long v76, v3, v36

    add-long v58, v58, v76

    mul-long v76, v8, v34

    add-long v58, v58, v76

    mul-long v76, v11, v32

    add-long v58, v58, v76

    mul-long v76, v3, v38

    add-long v60, v60, v76

    mul-long v76, v8, v36

    add-long v60, v60, v76

    mul-long v76, v11, v34

    add-long v60, v60, v76

    mul-long v76, v14, v32

    add-long v60, v60, v76

    mul-long v76, v3, v40

    add-long v62, v62, v76

    mul-long v76, v8, v38

    add-long v62, v62, v76

    mul-long v76, v11, v36

    add-long v62, v62, v76

    mul-long v76, v14, v34

    add-long v62, v62, v76

    mul-long v76, v16, v32

    add-long v62, v62, v76

    mul-long v76, v3, v42

    add-long v64, v64, v76

    mul-long v76, v8, v40

    add-long v64, v64, v76

    mul-long v76, v11, v38

    add-long v64, v64, v76

    mul-long v76, v14, v36

    add-long v64, v64, v76

    mul-long v76, v16, v34

    add-long v64, v64, v76

    mul-long v76, v18, v32

    add-long v64, v64, v76

    mul-long v76, v3, v44

    add-long v66, v66, v76

    mul-long v76, v8, v42

    add-long v66, v66, v76

    mul-long v76, v11, v40

    add-long v66, v66, v76

    mul-long v76, v14, v38

    add-long v66, v66, v76

    mul-long v76, v16, v36

    add-long v66, v66, v76

    mul-long v76, v18, v34

    add-long v66, v66, v76

    mul-long v76, v20, v32

    add-long v66, v66, v76

    mul-long v76, v3, v46

    add-long v68, v68, v76

    mul-long v76, v8, v44

    add-long v68, v68, v76

    mul-long v76, v11, v42

    add-long v68, v68, v76

    mul-long v76, v14, v40

    add-long v68, v68, v76

    mul-long v76, v16, v38

    add-long v68, v68, v76

    mul-long v76, v18, v36

    add-long v68, v68, v76

    mul-long v76, v20, v34

    add-long v68, v68, v76

    mul-long v76, v22, v32

    add-long v68, v68, v76

    mul-long v76, v3, v48

    add-long v70, v70, v76

    mul-long v76, v8, v46

    add-long v70, v70, v76

    mul-long v76, v11, v44

    add-long v70, v70, v76

    mul-long v76, v14, v42

    add-long v70, v70, v76

    mul-long v76, v16, v40

    add-long v70, v70, v76

    mul-long v76, v18, v38

    add-long v70, v70, v76

    mul-long v76, v20, v36

    add-long v70, v70, v76

    mul-long v76, v22, v34

    add-long v70, v70, v76

    mul-long v76, v24, v32

    add-long v70, v70, v76

    mul-long v76, v3, v50

    add-long v72, v72, v76

    mul-long v76, v8, v48

    add-long v72, v72, v76

    mul-long v76, v11, v46

    add-long v72, v72, v76

    mul-long v76, v14, v44

    add-long v72, v72, v76

    mul-long v76, v16, v42

    add-long v72, v72, v76

    mul-long v76, v18, v40

    add-long v72, v72, v76

    mul-long v76, v20, v38

    add-long v72, v72, v76

    mul-long v76, v22, v36

    add-long v72, v72, v76

    mul-long v76, v24, v34

    add-long v72, v72, v76

    mul-long v76, v26, v32

    add-long v72, v72, v76

    mul-long v76, v3, v52

    add-long v5, v5, v76

    mul-long v76, v8, v50

    add-long v5, v5, v76

    mul-long v76, v11, v48

    add-long v5, v5, v76

    mul-long v76, v14, v46

    add-long v5, v5, v76

    mul-long v76, v16, v44

    add-long v5, v5, v76

    mul-long v76, v18, v42

    add-long v5, v5, v76

    mul-long v76, v20, v40

    add-long v5, v5, v76

    mul-long v76, v22, v38

    add-long v5, v5, v76

    mul-long v76, v24, v36

    add-long v5, v5, v76

    mul-long v76, v26, v34

    add-long v5, v5, v76

    mul-long v76, v28, v32

    add-long v5, v5, v76

    mul-long v3, v3, v0

    add-long v74, v74, v3

    mul-long v2, v8, v52

    add-long v74, v74, v2

    mul-long v2, v11, v50

    add-long v74, v74, v2

    mul-long v2, v14, v48

    add-long v74, v74, v2

    mul-long v2, v16, v46

    add-long v74, v74, v2

    mul-long v2, v18, v44

    add-long v74, v74, v2

    mul-long v2, v20, v42

    add-long v74, v74, v2

    mul-long v2, v22, v40

    add-long v74, v74, v2

    mul-long v2, v24, v38

    add-long v74, v74, v2

    mul-long v2, v26, v36

    add-long v74, v74, v2

    mul-long v2, v28, v34

    add-long v74, v74, v2

    mul-long v32, v32, v30

    add-long v74, v74, v32

    mul-long v8, v8, v0

    mul-long v2, v11, v52

    add-long/2addr v8, v2

    mul-long v2, v14, v50

    add-long/2addr v8, v2

    mul-long v2, v16, v48

    add-long/2addr v8, v2

    mul-long v2, v18, v46

    add-long/2addr v8, v2

    mul-long v2, v20, v44

    add-long/2addr v8, v2

    mul-long v2, v22, v42

    add-long/2addr v8, v2

    mul-long v2, v24, v40

    add-long/2addr v8, v2

    mul-long v2, v26, v38

    add-long/2addr v8, v2

    mul-long v2, v28, v36

    add-long/2addr v8, v2

    mul-long v34, v34, v30

    add-long v8, v8, v34

    mul-long v11, v11, v0

    mul-long v2, v14, v52

    add-long/2addr v11, v2

    mul-long v2, v16, v50

    add-long/2addr v11, v2

    mul-long v2, v18, v48

    add-long/2addr v11, v2

    mul-long v2, v20, v46

    add-long/2addr v11, v2

    mul-long v2, v22, v44

    add-long/2addr v11, v2

    mul-long v2, v24, v42

    add-long/2addr v11, v2

    mul-long v2, v26, v40

    add-long/2addr v11, v2

    mul-long v2, v28, v38

    add-long/2addr v11, v2

    mul-long v36, v36, v30

    add-long v11, v11, v36

    mul-long v14, v14, v0

    mul-long v2, v16, v52

    add-long/2addr v14, v2

    mul-long v2, v18, v50

    add-long/2addr v14, v2

    mul-long v2, v20, v48

    add-long/2addr v14, v2

    mul-long v2, v22, v46

    add-long/2addr v14, v2

    mul-long v2, v24, v44

    add-long/2addr v14, v2

    mul-long v2, v26, v42

    add-long/2addr v14, v2

    mul-long v2, v28, v40

    add-long/2addr v14, v2

    mul-long v38, v38, v30

    add-long v14, v14, v38

    mul-long v16, v16, v0

    mul-long v2, v18, v52

    add-long v16, v16, v2

    mul-long v2, v20, v50

    add-long v16, v16, v2

    mul-long v2, v22, v48

    add-long v16, v16, v2

    mul-long v2, v24, v46

    add-long v16, v16, v2

    mul-long v2, v26, v44

    add-long v16, v16, v2

    mul-long v2, v28, v42

    add-long v16, v16, v2

    mul-long v40, v40, v30

    add-long v16, v16, v40

    mul-long v18, v18, v0

    mul-long v2, v20, v52

    add-long v18, v18, v2

    mul-long v2, v22, v50

    add-long v18, v18, v2

    mul-long v2, v24, v48

    add-long v18, v18, v2

    mul-long v2, v26, v46

    add-long v18, v18, v2

    mul-long v2, v28, v44

    add-long v18, v18, v2

    mul-long v42, v42, v30

    add-long v18, v18, v42

    mul-long v20, v20, v0

    mul-long v2, v22, v52

    add-long v20, v20, v2

    mul-long v2, v24, v50

    add-long v20, v20, v2

    mul-long v2, v26, v48

    add-long v20, v20, v2

    mul-long v2, v28, v46

    add-long v20, v20, v2

    mul-long v44, v44, v30

    add-long v20, v20, v44

    mul-long v22, v22, v0

    mul-long v2, v24, v52

    add-long v22, v22, v2

    mul-long v2, v26, v50

    add-long v22, v22, v2

    mul-long v2, v28, v48

    add-long v22, v22, v2

    mul-long v46, v46, v30

    add-long v22, v22, v46

    mul-long v24, v24, v0

    mul-long v2, v26, v52

    add-long v24, v24, v2

    mul-long v2, v28, v50

    add-long v24, v24, v2

    mul-long v48, v48, v30

    add-long v24, v24, v48

    mul-long v26, v26, v0

    mul-long v2, v28, v52

    add-long v26, v26, v2

    mul-long v50, v50, v30

    add-long v26, v26, v50

    mul-long v28, v28, v0

    mul-long v52, v52, v30

    add-long v28, v28, v52

    mul-long v30, v30, v0

    const-wide/32 v0, 0x100000

    add-long v2, v54, v0

    const/16 v4, 0x15

    shr-long/2addr v2, v4

    add-long v56, v56, v2

    shl-long/2addr v2, v4

    sub-long v54, v54, v2

    add-long v2, v58, v0

    shr-long/2addr v2, v4

    add-long v60, v60, v2

    shl-long/2addr v2, v4

    sub-long v58, v58, v2

    add-long v2, v62, v0

    shr-long/2addr v2, v4

    add-long v64, v64, v2

    shl-long/2addr v2, v4

    sub-long v62, v62, v2

    add-long v2, v66, v0

    shr-long/2addr v2, v4

    add-long v68, v68, v2

    shl-long/2addr v2, v4

    sub-long v66, v66, v2

    add-long v2, v70, v0

    shr-long/2addr v2, v4

    add-long v72, v72, v2

    shl-long/2addr v2, v4

    sub-long v70, v70, v2

    add-long v2, v5, v0

    shr-long/2addr v2, v4

    add-long v74, v74, v2

    shl-long/2addr v2, v4

    sub-long/2addr v5, v2

    add-long v2, v8, v0

    shr-long/2addr v2, v4

    add-long/2addr v11, v2

    shl-long/2addr v2, v4

    sub-long/2addr v8, v2

    add-long v2, v14, v0

    shr-long/2addr v2, v4

    add-long v16, v16, v2

    shl-long/2addr v2, v4

    sub-long/2addr v14, v2

    add-long v2, v18, v0

    shr-long/2addr v2, v4

    add-long v20, v20, v2

    shl-long/2addr v2, v4

    sub-long v18, v18, v2

    add-long v2, v22, v0

    shr-long/2addr v2, v4

    add-long v24, v24, v2

    shl-long/2addr v2, v4

    sub-long v22, v22, v2

    add-long v2, v26, v0

    shr-long/2addr v2, v4

    add-long v28, v28, v2

    shl-long/2addr v2, v4

    sub-long v26, v26, v2

    add-long v2, v30, v0

    shr-long/2addr v2, v4

    const-wide/16 v32, 0x0

    add-long v32, v2, v32

    shl-long/2addr v2, v4

    sub-long v30, v30, v2

    add-long v2, v56, v0

    shr-long/2addr v2, v4

    add-long v58, v58, v2

    shl-long/2addr v2, v4

    sub-long v56, v56, v2

    add-long v2, v60, v0

    shr-long/2addr v2, v4

    add-long v62, v62, v2

    shl-long/2addr v2, v4

    sub-long v60, v60, v2

    add-long v2, v64, v0

    shr-long/2addr v2, v4

    add-long v66, v66, v2

    shl-long/2addr v2, v4

    sub-long v64, v64, v2

    add-long v2, v68, v0

    shr-long/2addr v2, v4

    add-long v70, v70, v2

    shl-long/2addr v2, v4

    sub-long v68, v68, v2

    add-long v2, v72, v0

    shr-long/2addr v2, v4

    add-long/2addr v5, v2

    shl-long/2addr v2, v4

    sub-long v72, v72, v2

    add-long v2, v74, v0

    shr-long/2addr v2, v4

    add-long/2addr v8, v2

    shl-long/2addr v2, v4

    sub-long v74, v74, v2

    add-long v2, v11, v0

    shr-long/2addr v2, v4

    add-long/2addr v14, v2

    shl-long/2addr v2, v4

    sub-long/2addr v11, v2

    add-long v2, v16, v0

    shr-long/2addr v2, v4

    add-long v18, v18, v2

    shl-long/2addr v2, v4

    sub-long v16, v16, v2

    add-long v2, v20, v0

    shr-long/2addr v2, v4

    add-long v22, v22, v2

    shl-long/2addr v2, v4

    sub-long v20, v20, v2

    add-long v2, v24, v0

    shr-long/2addr v2, v4

    add-long v26, v26, v2

    shl-long/2addr v2, v4

    sub-long v24, v24, v2

    add-long v2, v28, v0

    shr-long/2addr v2, v4

    add-long v30, v30, v2

    shl-long/2addr v2, v4

    sub-long v28, v28, v2

    const-wide/32 v2, 0xa2c13

    mul-long v34, v32, v2

    add-long v74, v74, v34

    const-wide/32 v34, 0x72d18

    mul-long v36, v32, v34

    add-long v8, v8, v36

    const-wide/32 v36, 0x9fb67

    mul-long v38, v32, v36

    add-long v11, v11, v38

    const-wide/32 v38, 0xf39ad

    mul-long v40, v32, v38

    sub-long v14, v14, v40

    const-wide/32 v40, 0x215d1

    mul-long v42, v32, v40

    add-long v16, v16, v42

    const-wide/32 v42, 0xa6f7d

    mul-long v32, v32, v42

    sub-long v18, v18, v32

    mul-long v32, v30, v2

    add-long v5, v5, v32

    mul-long v32, v30, v34

    add-long v74, v74, v32

    mul-long v32, v30, v36

    add-long v8, v8, v32

    mul-long v32, v30, v38

    sub-long v11, v11, v32

    mul-long v32, v30, v40

    add-long v14, v14, v32

    mul-long v30, v30, v42

    sub-long v16, v16, v30

    mul-long v30, v28, v2

    add-long v72, v72, v30

    mul-long v30, v28, v34

    add-long v5, v5, v30

    mul-long v30, v28, v36

    add-long v74, v74, v30

    mul-long v30, v28, v38

    sub-long v8, v8, v30

    mul-long v30, v28, v40

    add-long v11, v11, v30

    mul-long v28, v28, v42

    sub-long v14, v14, v28

    mul-long v28, v26, v2

    add-long v70, v70, v28

    mul-long v28, v26, v34

    add-long v72, v72, v28

    mul-long v28, v26, v36

    add-long v5, v5, v28

    mul-long v28, v26, v38

    sub-long v74, v74, v28

    mul-long v28, v26, v40

    add-long v8, v8, v28

    mul-long v26, v26, v42

    sub-long v11, v11, v26

    mul-long v26, v24, v2

    add-long v68, v68, v26

    mul-long v26, v24, v34

    add-long v70, v70, v26

    mul-long v26, v24, v36

    add-long v72, v72, v26

    mul-long v26, v24, v38

    sub-long v5, v5, v26

    mul-long v26, v24, v40

    add-long v74, v74, v26

    mul-long v24, v24, v42

    sub-long v8, v8, v24

    mul-long v24, v22, v2

    add-long v66, v66, v24

    mul-long v24, v22, v34

    add-long v68, v68, v24

    mul-long v24, v22, v36

    add-long v70, v70, v24

    mul-long v24, v22, v38

    sub-long v72, v72, v24

    mul-long v24, v22, v40

    add-long v5, v5, v24

    mul-long v22, v22, v42

    sub-long v74, v74, v22

    add-long v22, v66, v0

    const/16 v4, 0x15

    shr-long v22, v22, v4

    add-long v68, v68, v22

    shl-long v22, v22, v4

    sub-long v66, v66, v22

    add-long v22, v70, v0

    shr-long v22, v22, v4

    add-long v72, v72, v22

    shl-long v22, v22, v4

    sub-long v70, v70, v22

    add-long v22, v5, v0

    shr-long v22, v22, v4

    add-long v74, v74, v22

    shl-long v22, v22, v4

    sub-long v5, v5, v22

    add-long v22, v8, v0

    shr-long v22, v22, v4

    add-long v11, v11, v22

    shl-long v22, v22, v4

    sub-long v8, v8, v22

    add-long v22, v14, v0

    shr-long v22, v22, v4

    add-long v16, v16, v22

    shl-long v22, v22, v4

    sub-long v14, v14, v22

    add-long v22, v18, v0

    shr-long v22, v22, v4

    add-long v20, v20, v22

    shl-long v22, v22, v4

    sub-long v18, v18, v22

    add-long v22, v68, v0

    shr-long v22, v22, v4

    add-long v70, v70, v22

    shl-long v22, v22, v4

    sub-long v68, v68, v22

    add-long v22, v72, v0

    shr-long v22, v22, v4

    add-long v5, v5, v22

    shl-long v22, v22, v4

    sub-long v72, v72, v22

    add-long v22, v74, v0

    shr-long v22, v22, v4

    add-long v8, v8, v22

    shl-long v22, v22, v4

    sub-long v74, v74, v22

    add-long v22, v11, v0

    shr-long v22, v22, v4

    add-long v14, v14, v22

    shl-long v22, v22, v4

    sub-long v11, v11, v22

    add-long v22, v16, v0

    shr-long v22, v22, v4

    add-long v18, v18, v22

    shl-long v22, v22, v4

    sub-long v16, v16, v22

    mul-long v22, v20, v2

    add-long v64, v64, v22

    mul-long v22, v20, v34

    add-long v66, v66, v22

    mul-long v22, v20, v36

    add-long v68, v68, v22

    mul-long v22, v20, v38

    sub-long v70, v70, v22

    mul-long v22, v20, v40

    add-long v72, v72, v22

    mul-long v20, v20, v42

    sub-long v5, v5, v20

    mul-long v20, v18, v2

    add-long v62, v62, v20

    mul-long v20, v18, v34

    add-long v64, v64, v20

    mul-long v20, v18, v36

    add-long v66, v66, v20

    mul-long v20, v18, v38

    sub-long v68, v68, v20

    mul-long v20, v18, v40

    add-long v70, v70, v20

    mul-long v18, v18, v42

    sub-long v72, v72, v18

    mul-long v18, v16, v2

    add-long v60, v60, v18

    mul-long v18, v16, v34

    add-long v62, v62, v18

    mul-long v18, v16, v36

    add-long v64, v64, v18

    mul-long v18, v16, v38

    sub-long v66, v66, v18

    mul-long v18, v16, v40

    add-long v68, v68, v18

    mul-long v16, v16, v42

    sub-long v70, v70, v16

    mul-long v16, v14, v2

    add-long v58, v58, v16

    mul-long v16, v14, v34

    add-long v60, v60, v16

    mul-long v16, v14, v36

    add-long v62, v62, v16

    mul-long v16, v14, v38

    sub-long v64, v64, v16

    mul-long v16, v14, v40

    add-long v66, v66, v16

    mul-long v14, v14, v42

    sub-long v68, v68, v14

    mul-long v13, v11, v2

    add-long v56, v56, v13

    mul-long v13, v11, v34

    add-long v58, v58, v13

    mul-long v13, v11, v36

    add-long v60, v60, v13

    mul-long v13, v11, v38

    sub-long v62, v62, v13

    mul-long v13, v11, v40

    add-long v64, v64, v13

    mul-long v11, v11, v42

    sub-long v66, v66, v11

    mul-long v11, v8, v2

    add-long v54, v54, v11

    mul-long v11, v8, v34

    add-long v56, v56, v11

    mul-long v11, v8, v36

    add-long v58, v58, v11

    mul-long v11, v8, v38

    sub-long v60, v60, v11

    mul-long v11, v8, v40

    add-long v62, v62, v11

    mul-long v8, v8, v42

    sub-long v64, v64, v8

    add-long v8, v54, v0

    const/16 v4, 0x15

    shr-long/2addr v8, v4

    add-long v56, v56, v8

    shl-long/2addr v8, v4

    sub-long v54, v54, v8

    add-long v8, v58, v0

    shr-long/2addr v8, v4

    add-long v60, v60, v8

    shl-long/2addr v8, v4

    sub-long v58, v58, v8

    add-long v8, v62, v0

    shr-long/2addr v8, v4

    add-long v64, v64, v8

    shl-long/2addr v8, v4

    sub-long v62, v62, v8

    add-long v8, v66, v0

    shr-long/2addr v8, v4

    add-long v68, v68, v8

    shl-long/2addr v8, v4

    sub-long v66, v66, v8

    add-long v8, v70, v0

    shr-long/2addr v8, v4

    add-long v72, v72, v8

    shl-long/2addr v8, v4

    sub-long v70, v70, v8

    add-long v8, v5, v0

    shr-long/2addr v8, v4

    add-long v74, v74, v8

    shl-long/2addr v8, v4

    sub-long/2addr v5, v8

    add-long v8, v56, v0

    shr-long/2addr v8, v4

    add-long v58, v58, v8

    shl-long/2addr v8, v4

    sub-long v56, v56, v8

    add-long v8, v60, v0

    shr-long/2addr v8, v4

    add-long v62, v62, v8

    shl-long/2addr v8, v4

    sub-long v60, v60, v8

    add-long v8, v64, v0

    shr-long/2addr v8, v4

    add-long v66, v66, v8

    shl-long/2addr v8, v4

    sub-long v64, v64, v8

    add-long v8, v68, v0

    shr-long/2addr v8, v4

    add-long v70, v70, v8

    shl-long/2addr v8, v4

    sub-long v68, v68, v8

    add-long v8, v72, v0

    shr-long/2addr v8, v4

    add-long/2addr v5, v8

    shl-long/2addr v8, v4

    sub-long v72, v72, v8

    add-long v0, v74, v0

    shr-long/2addr v0, v4

    const-wide/16 v8, 0x0

    add-long/2addr v8, v0

    shl-long/2addr v0, v4

    sub-long v74, v74, v0

    mul-long v0, v8, v2

    add-long v54, v54, v0

    mul-long v0, v8, v34

    add-long v56, v56, v0

    mul-long v0, v8, v36

    add-long v58, v58, v0

    mul-long v0, v8, v38

    sub-long v60, v60, v0

    mul-long v0, v8, v40

    add-long v62, v62, v0

    mul-long v8, v8, v42

    sub-long v64, v64, v8

    const/16 v0, 0x15

    shr-long v8, v54, v0

    add-long v56, v56, v8

    shl-long/2addr v8, v0

    sub-long v54, v54, v8

    shr-long v8, v56, v0

    add-long v58, v58, v8

    shl-long/2addr v8, v0

    sub-long v56, v56, v8

    shr-long v8, v58, v0

    add-long v60, v60, v8

    shl-long/2addr v8, v0

    sub-long v58, v58, v8

    shr-long v8, v60, v0

    add-long v62, v62, v8

    shl-long/2addr v8, v0

    sub-long v60, v60, v8

    shr-long v8, v62, v0

    add-long v64, v64, v8

    shl-long/2addr v8, v0

    sub-long v62, v62, v8

    shr-long v8, v64, v0

    add-long v66, v66, v8

    shl-long/2addr v8, v0

    sub-long v64, v64, v8

    shr-long v8, v66, v0

    add-long v68, v68, v8

    shl-long/2addr v8, v0

    sub-long v66, v66, v8

    shr-long v8, v68, v0

    add-long v70, v70, v8

    shl-long/2addr v8, v0

    sub-long v68, v68, v8

    shr-long v8, v70, v0

    add-long v72, v72, v8

    shl-long/2addr v8, v0

    sub-long v70, v70, v8

    shr-long v8, v72, v0

    add-long/2addr v5, v8

    shl-long/2addr v8, v0

    sub-long v72, v72, v8

    shr-long v8, v5, v0

    add-long v74, v74, v8

    shl-long/2addr v8, v0

    sub-long/2addr v5, v8

    shr-long v8, v74, v0

    const-wide/16 v11, 0x0

    add-long/2addr v11, v8

    shl-long/2addr v8, v0

    sub-long v74, v74, v8

    mul-long v2, v2, v11

    add-long v54, v54, v2

    mul-long v34, v34, v11

    add-long v56, v56, v34

    mul-long v36, v36, v11

    add-long v58, v58, v36

    mul-long v38, v38, v11

    sub-long v60, v60, v38

    mul-long v40, v40, v11

    add-long v62, v62, v40

    mul-long v11, v11, v42

    sub-long v64, v64, v11

    const/16 v0, 0x15

    shr-long v1, v54, v0

    add-long v56, v56, v1

    shl-long/2addr v1, v0

    sub-long v1, v54, v1

    shr-long v3, v56, v0

    add-long v58, v58, v3

    shl-long/2addr v3, v0

    sub-long v56, v56, v3

    shr-long v3, v58, v0

    add-long v60, v60, v3

    shl-long/2addr v3, v0

    sub-long v58, v58, v3

    shr-long v3, v60, v0

    add-long v62, v62, v3

    shl-long/2addr v3, v0

    sub-long v60, v60, v3

    shr-long v3, v62, v0

    add-long v64, v64, v3

    shl-long/2addr v3, v0

    sub-long v62, v62, v3

    shr-long v3, v64, v0

    add-long v66, v66, v3

    shl-long/2addr v3, v0

    sub-long v64, v64, v3

    shr-long v3, v66, v0

    add-long v68, v68, v3

    shl-long/2addr v3, v0

    sub-long v66, v66, v3

    shr-long v3, v68, v0

    add-long v70, v70, v3

    shl-long/2addr v3, v0

    sub-long v68, v68, v3

    shr-long v3, v70, v0

    add-long v72, v72, v3

    shl-long/2addr v3, v0

    sub-long v3, v70, v3

    shr-long v8, v72, v0

    add-long/2addr v5, v8

    shl-long/2addr v8, v0

    sub-long v72, v72, v8

    shr-long v8, v5, v0

    add-long v74, v74, v8

    shl-long/2addr v8, v0

    sub-long/2addr v5, v8

    long-to-int v0, v1

    int-to-byte v0, v0

    const/4 v8, 0x0

    .line 1472
    aput-byte v0, p0, v8

    const/16 v0, 0x8

    shr-long v8, v1, v0

    long-to-int v0, v8

    int-to-byte v0, v0

    const/4 v8, 0x1

    .line 1473
    aput-byte v0, p0, v8

    const/16 v0, 0x10

    shr-long v0, v1, v0

    shl-long v8, v56, v10

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1474
    aput-byte v0, p0, v7

    const/4 v0, 0x3

    shr-long v1, v56, v0

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 1475
    aput-byte v1, p0, v0

    const/16 v0, 0xb

    shr-long v0, v56, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/4 v1, 0x4

    .line 1476
    aput-byte v0, p0, v1

    const/16 v0, 0x13

    shr-long v0, v56, v0

    shl-long v8, v58, v7

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1477
    aput-byte v0, p0, v10

    const/4 v0, 0x6

    shr-long v1, v58, v0

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 1478
    aput-byte v1, p0, v0

    const/16 v0, 0xe

    shr-long v0, v58, v0

    const/4 v2, 0x7

    shl-long v8, v60, v2

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 1479
    aput-byte v0, p0, v2

    const/4 v0, 0x1

    shr-long v1, v60, v0

    long-to-int v0, v1

    int-to-byte v0, v0

    const/16 v1, 0x8

    .line 1480
    aput-byte v0, p0, v1

    const/16 v0, 0x9

    shr-long v0, v60, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x9

    .line 1481
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    shr-long v0, v60, v0

    const/4 v2, 0x4

    shl-long v8, v62, v2

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0xa

    .line 1482
    aput-byte v0, p0, v1

    const/4 v0, 0x4

    shr-long v0, v62, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0xb

    .line 1483
    aput-byte v0, p0, v1

    const/16 v0, 0xc

    shr-long v0, v62, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0xc

    .line 1484
    aput-byte v0, p0, v1

    const/16 v0, 0x14

    shr-long v0, v62, v0

    const/4 v2, 0x1

    shl-long v8, v64, v2

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0xd

    .line 1485
    aput-byte v0, p0, v1

    const/4 v0, 0x7

    shr-long v1, v64, v0

    long-to-int v0, v1

    int-to-byte v0, v0

    const/16 v1, 0xe

    .line 1486
    aput-byte v0, p0, v1

    const/16 v0, 0xf

    shr-long v0, v64, v0

    const/4 v2, 0x6

    shl-long v8, v66, v2

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0xf

    .line 1487
    aput-byte v0, p0, v1

    shr-long v0, v66, v7

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x10

    .line 1488
    aput-byte v0, p0, v1

    const/16 v0, 0xa

    shr-long v0, v66, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x11

    .line 1489
    aput-byte v0, p0, v1

    const/16 v0, 0x12

    shr-long v0, v66, v0

    const/4 v2, 0x3

    shl-long v8, v68, v2

    or-long/2addr v0, v8

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x12

    .line 1490
    aput-byte v0, p0, v1

    shr-long v0, v68, v10

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x13

    .line 1491
    aput-byte v0, p0, v1

    const/16 v0, 0xd

    shr-long v0, v68, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x14

    .line 1492
    aput-byte v0, p0, v1

    long-to-int v0, v3

    int-to-byte v0, v0

    const/16 v1, 0x15

    .line 1493
    aput-byte v0, p0, v1

    const/16 v0, 0x8

    shr-long v0, v3, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x16

    .line 1494
    aput-byte v0, p0, v1

    const/16 v0, 0x10

    shr-long v0, v3, v0

    shl-long v2, v72, v10

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x17

    .line 1495
    aput-byte v0, p0, v1

    const/4 v0, 0x3

    shr-long v0, v72, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x18

    .line 1496
    aput-byte v0, p0, v1

    const/16 v0, 0xb

    shr-long v0, v72, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x19

    .line 1497
    aput-byte v0, p0, v1

    const/16 v0, 0x13

    shr-long v0, v72, v0

    shl-long v2, v5, v7

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x1a

    .line 1498
    aput-byte v0, p0, v1

    const/4 v0, 0x6

    shr-long v0, v5, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x1b

    .line 1499
    aput-byte v0, p0, v1

    const/16 v0, 0xe

    shr-long v0, v5, v0

    const/4 v2, 0x7

    shl-long v2, v74, v2

    or-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x1c

    .line 1500
    aput-byte v0, p0, v1

    const/4 v0, 0x1

    shr-long v0, v74, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x1d

    .line 1501
    aput-byte v0, p0, v1

    const/16 v0, 0x9

    shr-long v0, v74, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x1e

    .line 1502
    aput-byte v0, p0, v1

    const/16 v0, 0x11

    shr-long v0, v74, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x1f

    .line 1503
    aput-byte v0, p0, v1

    return-void
.end method

.method private static neg([J[J)V
    .locals 3

    const/4 v0, 0x0

    .line 760
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 761
    aget-wide v1, p1, v0

    neg-long v1, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pow2252m3([J[J)V
    .locals 8

    const/16 v0, 0xa

    .line 769
    new-array v1, v0, [J

    .line 770
    new-array v2, v0, [J

    .line 771
    new-array v3, v0, [J

    .line 774
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 777
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 779
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 783
    :cond_0
    invoke-static {v2, p1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 786
    invoke-static {v1, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 789
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 792
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 795
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v5, 0x1

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    .line 797
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 801
    :cond_1
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 804
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v5, 0x1

    :goto_2
    if-ge v5, v0, :cond_2

    .line 806
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 810
    :cond_2
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 813
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v5, 0x1

    :goto_3
    const/16 v7, 0x14

    if-ge v5, v7, :cond_3

    .line 815
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 819
    :cond_3
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 822
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v0, :cond_4

    .line 824
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 828
    :cond_4
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 831
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v0, 0x1

    :goto_5
    const/16 v5, 0x32

    if-ge v0, v5, :cond_5

    .line 833
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 837
    :cond_5
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 840
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v0, 0x1

    :goto_6
    const/16 v7, 0x64

    if-ge v0, v7, :cond_6

    .line 842
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 846
    :cond_6
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 849
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    const/4 v0, 0x1

    :goto_7
    if-ge v0, v5, :cond_7

    .line 851
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 855
    :cond_7
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 858
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    :goto_8
    if-ge v4, v6, :cond_8

    .line 860
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 864
    :cond_8
    invoke-static {p0, v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    return-void
.end method

.method private static reduce([B)V
    .locals 65

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 904
    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    const/4 v5, 0x2

    .line 905
    invoke-static {v0, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    and-long/2addr v6, v3

    .line 906
    invoke-static {v0, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v9

    shr-long/2addr v9, v5

    and-long/2addr v9, v3

    const/4 v11, 0x7

    .line 907
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v12

    shr-long/2addr v12, v11

    and-long/2addr v12, v3

    const/16 v14, 0xa

    .line 908
    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v14

    const/16 v16, 0x4

    shr-long v14, v14, v16

    and-long/2addr v14, v3

    const/16 v11, 0xd

    .line 909
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v17

    const/4 v11, 0x1

    shr-long v17, v17, v11

    and-long v17, v17, v3

    const/16 v11, 0xf

    .line 910
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v19

    const/4 v11, 0x6

    shr-long v19, v19, v11

    and-long v19, v19, v3

    const/16 v11, 0x12

    .line 911
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v21

    const/4 v11, 0x3

    shr-long v21, v21, v11

    and-long v21, v21, v3

    const/16 v11, 0x15

    .line 912
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v23

    and-long v23, v23, v3

    const/16 v11, 0x17

    .line 913
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v25

    shr-long v25, v25, v8

    and-long v25, v25, v3

    const/16 v11, 0x1a

    .line 914
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v27

    shr-long v27, v27, v5

    and-long v27, v27, v3

    const/16 v11, 0x1c

    .line 915
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v29

    const/4 v11, 0x7

    shr-long v29, v29, v11

    and-long v29, v29, v3

    const/16 v11, 0x1f

    .line 916
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v31

    const/4 v11, 0x4

    shr-long v31, v31, v11

    and-long v31, v31, v3

    const/16 v11, 0x22

    .line 917
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v33

    const/4 v11, 0x1

    shr-long v33, v33, v11

    and-long v33, v33, v3

    const/16 v11, 0x24

    .line 918
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v35

    const/4 v11, 0x6

    shr-long v35, v35, v11

    and-long v35, v35, v3

    const/16 v11, 0x27

    .line 919
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v37

    const/4 v11, 0x3

    shr-long v37, v37, v11

    and-long v37, v37, v3

    const/16 v11, 0x2a

    .line 920
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v39

    and-long v39, v39, v3

    const/16 v11, 0x2c

    .line 921
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v41

    shr-long v41, v41, v8

    and-long v41, v41, v3

    const/16 v11, 0x2f

    .line 922
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v43

    shr-long v43, v43, v5

    and-long v43, v43, v3

    const/16 v11, 0x31

    .line 923
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v45

    const/4 v11, 0x7

    shr-long v45, v45, v11

    and-long v45, v45, v3

    const/16 v11, 0x34

    .line 924
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v47

    const/4 v11, 0x4

    shr-long v47, v47, v11

    and-long v47, v47, v3

    const/16 v11, 0x37

    .line 925
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v49

    const/4 v11, 0x1

    shr-long v49, v49, v11

    and-long v49, v49, v3

    const/16 v11, 0x39

    .line 926
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v51

    const/4 v11, 0x6

    shr-long v51, v51, v11

    and-long v3, v51, v3

    const/16 v11, 0x3c

    .line 927
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v51

    const/4 v11, 0x3

    shr-long v51, v51, v11

    const-wide/32 v53, 0xa2c13

    mul-long v55, v51, v53

    add-long v29, v29, v55

    const-wide/32 v55, 0x72d18

    mul-long v57, v51, v55

    add-long v31, v31, v57

    const-wide/32 v57, 0x9fb67

    mul-long v59, v51, v57

    add-long v33, v33, v59

    const-wide/32 v59, 0xf39ad

    mul-long v61, v51, v59

    sub-long v35, v35, v61

    const-wide/32 v61, 0x215d1

    mul-long v63, v51, v61

    add-long v37, v37, v63

    const-wide/32 v63, 0xa6f7d

    mul-long v51, v51, v63

    sub-long v39, v39, v51

    mul-long v51, v3, v53

    add-long v27, v27, v51

    mul-long v51, v3, v55

    add-long v29, v29, v51

    mul-long v51, v3, v57

    add-long v31, v31, v51

    mul-long v51, v3, v59

    sub-long v33, v33, v51

    mul-long v51, v3, v61

    add-long v35, v35, v51

    mul-long v3, v3, v63

    sub-long v37, v37, v3

    mul-long v3, v49, v53

    add-long v25, v25, v3

    mul-long v3, v49, v55

    add-long v27, v27, v3

    mul-long v3, v49, v57

    add-long v29, v29, v3

    mul-long v3, v49, v59

    sub-long v31, v31, v3

    mul-long v3, v49, v61

    add-long v33, v33, v3

    mul-long v49, v49, v63

    sub-long v35, v35, v49

    mul-long v3, v47, v53

    add-long v23, v23, v3

    mul-long v3, v47, v55

    add-long v25, v25, v3

    mul-long v3, v47, v57

    add-long v27, v27, v3

    mul-long v3, v47, v59

    sub-long v29, v29, v3

    mul-long v3, v47, v61

    add-long v31, v31, v3

    mul-long v47, v47, v63

    sub-long v33, v33, v47

    mul-long v3, v45, v53

    add-long v21, v21, v3

    mul-long v3, v45, v55

    add-long v23, v23, v3

    mul-long v3, v45, v57

    add-long v25, v25, v3

    mul-long v3, v45, v59

    sub-long v27, v27, v3

    mul-long v3, v45, v61

    add-long v29, v29, v3

    mul-long v45, v45, v63

    sub-long v31, v31, v45

    mul-long v3, v43, v53

    add-long v19, v19, v3

    mul-long v3, v43, v55

    add-long v21, v21, v3

    mul-long v3, v43, v57

    add-long v23, v23, v3

    mul-long v3, v43, v59

    sub-long v25, v25, v3

    mul-long v3, v43, v61

    add-long v27, v27, v3

    mul-long v43, v43, v63

    sub-long v29, v29, v43

    const-wide/32 v3, 0x100000

    add-long v43, v19, v3

    const/16 v11, 0x15

    shr-long v43, v43, v11

    add-long v21, v21, v43

    shl-long v43, v43, v11

    sub-long v19, v19, v43

    add-long v43, v23, v3

    shr-long v43, v43, v11

    add-long v25, v25, v43

    shl-long v43, v43, v11

    sub-long v23, v23, v43

    add-long v43, v27, v3

    shr-long v43, v43, v11

    add-long v29, v29, v43

    shl-long v43, v43, v11

    sub-long v27, v27, v43

    add-long v43, v31, v3

    shr-long v43, v43, v11

    add-long v33, v33, v43

    shl-long v43, v43, v11

    sub-long v31, v31, v43

    add-long v43, v35, v3

    shr-long v43, v43, v11

    add-long v37, v37, v43

    shl-long v43, v43, v11

    sub-long v35, v35, v43

    add-long v43, v39, v3

    shr-long v43, v43, v11

    add-long v41, v41, v43

    shl-long v43, v43, v11

    sub-long v39, v39, v43

    add-long v43, v21, v3

    shr-long v43, v43, v11

    add-long v23, v23, v43

    shl-long v43, v43, v11

    sub-long v21, v21, v43

    add-long v43, v25, v3

    shr-long v43, v43, v11

    add-long v27, v27, v43

    shl-long v43, v43, v11

    sub-long v25, v25, v43

    add-long v43, v29, v3

    shr-long v43, v43, v11

    add-long v31, v31, v43

    shl-long v43, v43, v11

    sub-long v29, v29, v43

    add-long v43, v33, v3

    shr-long v43, v43, v11

    add-long v35, v35, v43

    shl-long v43, v43, v11

    sub-long v33, v33, v43

    add-long v43, v37, v3

    shr-long v43, v43, v11

    add-long v39, v39, v43

    shl-long v43, v43, v11

    sub-long v37, v37, v43

    mul-long v43, v41, v53

    add-long v17, v17, v43

    mul-long v43, v41, v55

    add-long v19, v19, v43

    mul-long v43, v41, v57

    add-long v21, v21, v43

    mul-long v43, v41, v59

    sub-long v23, v23, v43

    mul-long v43, v41, v61

    add-long v25, v25, v43

    mul-long v41, v41, v63

    sub-long v27, v27, v41

    mul-long v41, v39, v53

    add-long v14, v14, v41

    mul-long v41, v39, v55

    add-long v17, v17, v41

    mul-long v41, v39, v57

    add-long v19, v19, v41

    mul-long v41, v39, v59

    sub-long v21, v21, v41

    mul-long v41, v39, v61

    add-long v23, v23, v41

    mul-long v39, v39, v63

    sub-long v25, v25, v39

    mul-long v39, v37, v53

    add-long v12, v12, v39

    mul-long v39, v37, v55

    add-long v14, v14, v39

    mul-long v39, v37, v57

    add-long v17, v17, v39

    mul-long v39, v37, v59

    sub-long v19, v19, v39

    mul-long v39, v37, v61

    add-long v21, v21, v39

    mul-long v37, v37, v63

    sub-long v23, v23, v37

    mul-long v37, v35, v53

    add-long v9, v9, v37

    mul-long v37, v35, v55

    add-long v12, v12, v37

    mul-long v37, v35, v57

    add-long v14, v14, v37

    mul-long v37, v35, v59

    sub-long v17, v17, v37

    mul-long v37, v35, v61

    add-long v19, v19, v37

    mul-long v35, v35, v63

    sub-long v21, v21, v35

    mul-long v35, v33, v53

    add-long v6, v6, v35

    mul-long v35, v33, v55

    add-long v9, v9, v35

    mul-long v35, v33, v57

    add-long v12, v12, v35

    mul-long v35, v33, v59

    sub-long v14, v14, v35

    mul-long v35, v33, v61

    add-long v17, v17, v35

    mul-long v33, v33, v63

    sub-long v19, v19, v33

    mul-long v33, v31, v53

    add-long v1, v1, v33

    mul-long v33, v31, v55

    add-long v6, v6, v33

    mul-long v33, v31, v57

    add-long v9, v9, v33

    mul-long v33, v31, v59

    sub-long v12, v12, v33

    mul-long v33, v31, v61

    add-long v14, v14, v33

    mul-long v31, v31, v63

    sub-long v17, v17, v31

    add-long v31, v1, v3

    const/16 v11, 0x15

    shr-long v31, v31, v11

    add-long v6, v6, v31

    shl-long v31, v31, v11

    sub-long v1, v1, v31

    add-long v31, v9, v3

    shr-long v31, v31, v11

    add-long v12, v12, v31

    shl-long v31, v31, v11

    sub-long v9, v9, v31

    add-long v31, v14, v3

    shr-long v31, v31, v11

    add-long v17, v17, v31

    shl-long v31, v31, v11

    sub-long v14, v14, v31

    add-long v31, v19, v3

    shr-long v31, v31, v11

    add-long v21, v21, v31

    shl-long v31, v31, v11

    sub-long v19, v19, v31

    add-long v31, v23, v3

    shr-long v31, v31, v11

    add-long v25, v25, v31

    shl-long v31, v31, v11

    sub-long v23, v23, v31

    add-long v31, v27, v3

    shr-long v31, v31, v11

    add-long v29, v29, v31

    shl-long v31, v31, v11

    sub-long v27, v27, v31

    add-long v31, v6, v3

    shr-long v31, v31, v11

    add-long v9, v9, v31

    shl-long v31, v31, v11

    sub-long v6, v6, v31

    add-long v31, v12, v3

    shr-long v31, v31, v11

    add-long v14, v14, v31

    shl-long v31, v31, v11

    sub-long v12, v12, v31

    add-long v31, v17, v3

    shr-long v31, v31, v11

    add-long v19, v19, v31

    shl-long v31, v31, v11

    sub-long v17, v17, v31

    add-long v31, v21, v3

    shr-long v31, v31, v11

    add-long v23, v23, v31

    shl-long v31, v31, v11

    sub-long v21, v21, v31

    add-long v31, v25, v3

    shr-long v31, v31, v11

    add-long v27, v27, v31

    shl-long v31, v31, v11

    sub-long v25, v25, v31

    add-long v3, v29, v3

    shr-long/2addr v3, v11

    const-wide/16 v31, 0x0

    add-long v31, v3, v31

    shl-long/2addr v3, v11

    sub-long v29, v29, v3

    mul-long v3, v31, v53

    add-long/2addr v1, v3

    mul-long v3, v31, v55

    add-long/2addr v6, v3

    mul-long v3, v31, v57

    add-long/2addr v9, v3

    mul-long v3, v31, v59

    sub-long/2addr v12, v3

    mul-long v3, v31, v61

    add-long/2addr v14, v3

    mul-long v31, v31, v63

    sub-long v17, v17, v31

    const/16 v3, 0x15

    shr-long v31, v1, v3

    add-long v6, v6, v31

    shl-long v31, v31, v3

    sub-long v1, v1, v31

    shr-long v31, v6, v3

    add-long v9, v9, v31

    shl-long v31, v31, v3

    sub-long v6, v6, v31

    shr-long v31, v9, v3

    add-long v12, v12, v31

    shl-long v31, v31, v3

    sub-long v9, v9, v31

    shr-long v31, v12, v3

    add-long v14, v14, v31

    shl-long v31, v31, v3

    sub-long v12, v12, v31

    shr-long v31, v14, v3

    add-long v17, v17, v31

    shl-long v31, v31, v3

    sub-long v14, v14, v31

    shr-long v31, v17, v3

    add-long v19, v19, v31

    shl-long v31, v31, v3

    sub-long v17, v17, v31

    shr-long v31, v19, v3

    add-long v21, v21, v31

    shl-long v31, v31, v3

    sub-long v19, v19, v31

    shr-long v31, v21, v3

    add-long v23, v23, v31

    shl-long v31, v31, v3

    sub-long v21, v21, v31

    shr-long v31, v23, v3

    add-long v25, v25, v31

    shl-long v31, v31, v3

    sub-long v23, v23, v31

    shr-long v31, v25, v3

    add-long v27, v27, v31

    shl-long v31, v31, v3

    sub-long v25, v25, v31

    shr-long v31, v27, v3

    add-long v29, v29, v31

    shl-long v31, v31, v3

    sub-long v27, v27, v31

    shr-long v31, v29, v3

    const-wide/16 v33, 0x0

    add-long v33, v31, v33

    shl-long v31, v31, v3

    sub-long v29, v29, v31

    mul-long v53, v53, v33

    add-long v1, v1, v53

    mul-long v55, v55, v33

    add-long v6, v6, v55

    mul-long v57, v57, v33

    add-long v9, v9, v57

    mul-long v59, v59, v33

    sub-long v12, v12, v59

    mul-long v61, v61, v33

    add-long v14, v14, v61

    mul-long v33, v33, v63

    sub-long v17, v17, v33

    const/16 v3, 0x15

    shr-long v31, v1, v3

    add-long v6, v6, v31

    shl-long v31, v31, v3

    sub-long v1, v1, v31

    shr-long v31, v6, v3

    add-long v9, v9, v31

    shl-long v31, v31, v3

    sub-long v6, v6, v31

    shr-long v31, v9, v3

    add-long v12, v12, v31

    shl-long v31, v31, v3

    sub-long v9, v9, v31

    shr-long v31, v12, v3

    add-long v14, v14, v31

    shl-long v31, v31, v3

    sub-long v12, v12, v31

    shr-long v31, v14, v3

    add-long v17, v17, v31

    shl-long v31, v31, v3

    sub-long v14, v14, v31

    shr-long v31, v17, v3

    add-long v19, v19, v31

    shl-long v31, v31, v3

    sub-long v17, v17, v31

    shr-long v31, v19, v3

    add-long v21, v21, v31

    shl-long v31, v31, v3

    sub-long v19, v19, v31

    shr-long v31, v21, v3

    add-long v23, v23, v31

    shl-long v31, v31, v3

    sub-long v21, v21, v31

    shr-long v31, v23, v3

    add-long v25, v25, v31

    shl-long v31, v31, v3

    move-wide/from16 v33, v6

    sub-long v5, v23, v31

    shr-long v23, v25, v3

    add-long v27, v27, v23

    shl-long v23, v23, v3

    sub-long v25, v25, v23

    shr-long v23, v27, v3

    add-long v29, v29, v23

    shl-long v23, v23, v3

    sub-long v27, v27, v23

    long-to-int v3, v1

    int-to-byte v3, v3

    const/4 v7, 0x0

    .line 1120
    aput-byte v3, v0, v7

    const/16 v3, 0x8

    move-wide/from16 v23, v5

    shr-long v4, v1, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    const/4 v4, 0x1

    .line 1121
    aput-byte v3, v0, v4

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    shl-long v3, v33, v8

    or-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x2

    .line 1122
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    shr-long v2, v33, v1

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 1123
    aput-byte v2, v0, v1

    const/16 v1, 0xb

    shr-long v1, v33, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x4

    .line 1124
    aput-byte v1, v0, v2

    const/16 v1, 0x13

    shr-long v1, v33, v1

    const/4 v3, 0x2

    shl-long v5, v9, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 1125
    aput-byte v1, v0, v8

    const/4 v1, 0x6

    shr-long v2, v9, v1

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 1126
    aput-byte v2, v0, v1

    const/16 v1, 0xe

    shr-long v1, v9, v1

    const/4 v3, 0x7

    shl-long v5, v12, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 1127
    aput-byte v1, v0, v3

    const/4 v1, 0x1

    shr-long v2, v12, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x8

    .line 1128
    aput-byte v1, v0, v2

    const/16 v1, 0x9

    shr-long v1, v12, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x9

    .line 1129
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    shr-long v1, v12, v1

    const/4 v3, 0x4

    shl-long v5, v14, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0xa

    .line 1130
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    shr-long v1, v14, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0xb

    .line 1131
    aput-byte v1, v0, v2

    const/16 v1, 0xc

    shr-long v1, v14, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0xc

    .line 1132
    aput-byte v1, v0, v2

    const/16 v1, 0x14

    shr-long v1, v14, v1

    const/4 v3, 0x1

    shl-long v5, v17, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0xd

    .line 1133
    aput-byte v1, v0, v2

    const/4 v1, 0x7

    shr-long v2, v17, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/16 v2, 0xe

    .line 1134
    aput-byte v1, v0, v2

    const/16 v1, 0xf

    shr-long v1, v17, v1

    const/4 v3, 0x6

    shl-long v5, v19, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0xf

    .line 1135
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    shr-long v2, v19, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x10

    .line 1136
    aput-byte v1, v0, v2

    const/16 v1, 0xa

    shr-long v1, v19, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x11

    .line 1137
    aput-byte v1, v0, v2

    const/16 v1, 0x12

    shr-long v1, v19, v1

    const/4 v3, 0x3

    shl-long v5, v21, v3

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x12

    .line 1138
    aput-byte v1, v0, v2

    shr-long v1, v21, v8

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x13

    .line 1139
    aput-byte v1, v0, v2

    const/16 v1, 0xd

    shr-long v1, v21, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x14

    .line 1140
    aput-byte v1, v0, v2

    move-wide/from16 v1, v23

    long-to-int v3, v1

    int-to-byte v3, v3

    const/16 v5, 0x15

    .line 1141
    aput-byte v3, v0, v5

    const/16 v3, 0x8

    shr-long v5, v1, v3

    long-to-int v3, v5

    int-to-byte v3, v3

    const/16 v5, 0x16

    .line 1142
    aput-byte v3, v0, v5

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    shl-long v5, v25, v8

    or-long/2addr v1, v5

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x17

    .line 1143
    aput-byte v1, v0, v2

    const/4 v1, 0x3

    shr-long v1, v25, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x18

    .line 1144
    aput-byte v1, v0, v2

    const/16 v1, 0xb

    shr-long v1, v25, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x19

    .line 1145
    aput-byte v1, v0, v2

    const/16 v1, 0x13

    shr-long v1, v25, v1

    const/4 v3, 0x2

    shl-long v3, v27, v3

    or-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x1a

    .line 1146
    aput-byte v1, v0, v2

    const/4 v1, 0x6

    shr-long v1, v27, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x1b

    .line 1147
    aput-byte v1, v0, v2

    const/16 v1, 0xe

    shr-long v1, v27, v1

    const/4 v3, 0x7

    shl-long v3, v29, v3

    or-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x1c

    .line 1148
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    shr-long v1, v29, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x1d

    .line 1149
    aput-byte v1, v0, v2

    const/16 v1, 0x9

    shr-long v1, v29, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x1e

    .line 1150
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    shr-long v1, v29, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x1f

    .line 1151
    aput-byte v1, v0, v2

    return-void
.end method

.method private static scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 7

    const/16 v0, 0x40

    .line 578
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v5, v3, 0x0

    .line 580
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shr-int/2addr v6, v1

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/2addr v3, v4

    .line 581
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 590
    :goto_1
    array-length v3, v0

    sub-int/2addr v3, v4

    if-ge p0, v3, :cond_1

    .line 591
    aget-byte v3, v0, p0

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, p0

    .line 592
    aget-byte v2, v0, p0

    add-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x4

    .line 594
    aget-byte v3, v0, p0

    shl-int/lit8 v5, v2, 0x4

    sub-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 596
    :cond_1
    array-length p0, v0

    sub-int/2addr p0, v4

    aget-byte v3, v0, p0

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, p0

    .line 598
    new-instance p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {p0, v2}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 599
    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    .line 604
    :goto_2
    array-length v3, v0

    if-ge v4, v3, :cond_2

    .line 605
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sget-object v5, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 606
    div-int/lit8 v5, v4, 0x2

    aget-byte v6, v0, v4

    invoke-static {v3, v5, v6}, Lcom/google/crypto/tink/subtle/Ed25519;->select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V

    .line 607
    invoke-static {v2, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 612
    :cond_2
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v3}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>()V

    .line 613
    invoke-static {v3, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 614
    invoke-static {v3, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 615
    invoke-static {v3, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 616
    invoke-static {v3, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 619
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 620
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 621
    div-int/lit8 v4, v1, 0x2

    aget-byte v5, v0, v1

    invoke-static {v3, v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V

    .line 622
    invoke-static {v2, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v4

    invoke-static {p0, v4, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 627
    :cond_3
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 628
    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->isOnCurve()Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 629
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "arithmetic error in scalar multiplication"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method static scalarMultWithBaseToBytes([B)[B
    .locals 0

    .line 643
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object p0

    return-object p0
.end method

.method private static select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V
    .locals 5

    and-int/lit16 v0, p2, 0xff

    const/4 v1, 0x7

    shr-int/2addr v0, v1

    neg-int v2, v0

    and-int/2addr v2, p2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    sub-int/2addr p2, v2

    .line 550
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 551
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 552
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x3

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 553
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x4

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 554
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x5

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 555
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    const/4 v3, 0x6

    invoke-static {p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 556
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v2, v2, p1

    aget-object v2, v2, v3

    invoke-static {p2, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 557
    sget-object v2, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object p1, v2, p1

    aget-object p1, p1, v1

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 559
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    const/16 p2, 0xa

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    .line 560
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 561
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p2

    .line 562
    invoke-static {p2, p2}, Lcom/google/crypto/tink/subtle/Ed25519;->neg([J[J)V

    .line 563
    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v2, p1, v1, p2}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    .line 564
    invoke-virtual {p0, v2, v0}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    return-void
.end method

.method static sign([B[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1535
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 1536
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    const/16 v2, 0x20

    .line 1537
    invoke-virtual {v0, p2, v2, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1538
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1539
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 1540
    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1542
    invoke-static {v3}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v4

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 1543
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 1544
    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1545
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1546
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1547
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1548
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1549
    new-array p1, v2, [B

    .line 1550
    invoke-static {p1, p0, p2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->mulAdd([B[B[B[B)V

    const/4 p0, 0x2

    .line 1551
    new-array p0, p0, [[B

    aput-object v4, p0, v1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static slide([B)[B
    .locals 8

    const/16 v0, 0x100

    .line 648
    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x3

    .line 653
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v3, 0x7

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-ge p0, v0, :cond_5

    .line 658
    aget-byte v3, v1, p0

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    const/4 v5, 0x6

    if-gt v3, v5, :cond_4

    add-int v5, p0, v3

    if-ge v5, v0, :cond_4

    .line 660
    aget-byte v6, v1, v5

    if-eqz v6, :cond_3

    .line 661
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    add-int/2addr v6, v7

    const/16 v7, 0xf

    if-gt v6, v7, :cond_1

    .line 662
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, p0

    .line 663
    aput-byte v2, v1, v5

    goto :goto_4

    .line 664
    :cond_1
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    sub-int/2addr v6, v7

    const/16 v7, -0xf

    if-lt v6, v7, :cond_4

    .line 665
    aget-byte v6, v1, p0

    aget-byte v7, v1, v5

    shl-int/2addr v7, v3

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, p0

    :goto_3
    if-ge v5, v0, :cond_3

    .line 667
    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    .line 668
    aput-byte v4, v1, v5

    goto :goto_4

    .line 671
    :cond_2
    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private static sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V
    .locals 4

    const/16 v0, 0xa

    .line 432
    new-array v0, v0, [J

    .line 435
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 438
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 441
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 444
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 447
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 450
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 453
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p2, p2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 456
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p2, p2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {p1, p2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 459
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p2, p2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {p1, p2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 462
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object p1, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object p2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {p1, v0, p2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 465
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object p0, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {p1, v0, p0}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    return-void
.end method

.method static verify([B[B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1592
    array-length v0, p1

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x20

    .line 1595
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1596
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Ed25519;->isSmallerThanGroupOrder([B)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 1599
    :cond_1
    sget-object v3, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v4, "SHA-512"

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 1600
    invoke-virtual {v3, p1, v2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 1601
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 1602
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1603
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 1604
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1606
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$500([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object p2

    .line 1607
    invoke-static {p0, p2, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleScalarMultVarTime([BLcom/google/crypto/tink/subtle/Ed25519$XYZT;[B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object p0

    .line 1608
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_3

    .line 1610
    aget-byte v1, p0, p2

    aget-byte v3, p1, p2

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
