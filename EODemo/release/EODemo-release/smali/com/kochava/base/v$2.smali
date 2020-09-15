.class Lcom/kochava/base/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/v;->a(Lcom/kochava/base/Deeplink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/Deeplink;

.field final synthetic b:Lcom/kochava/base/v;


# direct methods
.method constructor <init>(Lcom/kochava/base/v;Lcom/kochava/base/Deeplink;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/v$2;->b:Lcom/kochava/base/v;

    iput-object p2, p0, Lcom/kochava/base/v$2;->a:Lcom/kochava/base/Deeplink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/v$2;->b:Lcom/kochava/base/v;

    invoke-static {v0}, Lcom/kochava/base/v;->b(Lcom/kochava/base/v;)Lcom/kochava/base/DeeplinkProcessedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kochava/base/v$2;->a:Lcom/kochava/base/Deeplink;

    invoke-interface {v0, v1}, Lcom/kochava/base/DeeplinkProcessedListener;->onDeeplinkProcessed(Lcom/kochava/base/Deeplink;)V
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

    const-string v0, "TSL"

    const-string v3, "callback"

    invoke-static {v1, v0, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
