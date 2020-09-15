.class final Lcom/appsflyer/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/m$a;
    }
.end annotation


# instance fields
.field private advertisingId:Ljava/lang/String;

.field private limitAdTracking:Z

.field private type:Lcom/appsflyer/m$a;


# direct methods
.method constructor <init>(Lcom/appsflyer/m$a;Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/appsflyer/m;->type:Lcom/appsflyer/m$a;

    .line 19
    iput-object p2, p0, Lcom/appsflyer/m;->advertisingId:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/appsflyer/m;->limitAdTracking:Z

    return-void
.end method


# virtual methods
.method final getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/appsflyer/m;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method final isLimitAdTracking()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/appsflyer/m;->limitAdTracking:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 61
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/appsflyer/m;->advertisingId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/appsflyer/m;->limitAdTracking:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s,%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
