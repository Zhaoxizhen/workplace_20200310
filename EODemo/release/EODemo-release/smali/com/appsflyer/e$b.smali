.class final Lcom/appsflyer/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final mCarrierName:Ljava/lang/String;

.field private final mNetworkType:Ljava/lang/String;

.field private final mSimOperator:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/appsflyer/e$b;->mNetworkType:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/appsflyer/e$b;->mCarrierName:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/appsflyer/e$b;->mSimOperator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final getCarrierName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/appsflyer/e$b;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/appsflyer/e$b;->mNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method final getSimOperator()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/appsflyer/e$b;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method
