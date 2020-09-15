.class final Lcom/appsflyer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final mCharging:Ljava/lang/String;

.field private final mLevel:F


# direct methods
.method constructor <init>(FLjava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/appsflyer/a$a;->mLevel:F

    .line 85
    iput-object p2, p0, Lcom/appsflyer/a$a;->mCharging:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final getCharging()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/appsflyer/a$a;->mCharging:Ljava/lang/String;

    return-object v0
.end method

.method final getLevel()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/appsflyer/a$a;->mLevel:F

    return v0
.end method
