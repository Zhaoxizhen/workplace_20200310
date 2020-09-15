.class final Lcom/appsflyer/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final advertisingId:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/appsflyer/j;->advertisingId:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/appsflyer/j;->limitAdTrackingEnabled:Z

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/appsflyer/j;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method final isLimitAdTrackingEnabled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/appsflyer/j;->limitAdTrackingEnabled:Z

    return v0
.end method
