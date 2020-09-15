.class Lcom/kochava/base/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/o;


# direct methods
.method constructor <init>(Lcom/kochava/base/o;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/o$1;->a:Lcom/kochava/base/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/o$1;->a:Lcom/kochava/base/o;

    iget-object v0, v0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->e:Lcom/kochava/base/ConsentStatusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/o$1;->a:Lcom/kochava/base/o;

    iget-object v0, v0, Lcom/kochava/base/o;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->e:Lcom/kochava/base/ConsentStatusChangeListener;

    invoke-interface {v0}, Lcom/kochava/base/ConsentStatusChangeListener;->onConsentStatusChange()V
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

    const-string v0, "TIN"

    const-string v3, "run"

    invoke-static {v1, v0, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
