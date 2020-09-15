.class Lcom/kochava/base/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/m;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/kochava/base/m;


# direct methods
.method constructor <init>(Lcom/kochava/base/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/m$1;->b:Lcom/kochava/base/m;

    iput-object p2, p0, Lcom/kochava/base/m$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/m$1;->b:Lcom/kochava/base/m;

    invoke-static {v0}, Lcom/kochava/base/m;->a(Lcom/kochava/base/m;)Lcom/kochava/base/AttributionUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/m$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kochava/base/AttributionUpdateListener;->onAttributionUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Exception in Host App"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "TGA"

    const-string v3, "notifyCallbac"

    invoke-static {v1, v0, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
