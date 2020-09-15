.class Lcom/kochava/base/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/h;


# direct methods
.method constructor <init>(Lcom/kochava/base/h;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/h$1;->a:Lcom/kochava/base/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x4

    const-string v3, "SMO"

    const-string v4, "goInactive"

    invoke-static {v2, v3, v4, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/h$1;->a:Lcom/kochava/base/h;

    invoke-static {v1, v0}, Lcom/kochava/base/h;->a(Lcom/kochava/base/h;Z)Z

    iget-object v1, p0, Lcom/kochava/base/h$1;->a:Lcom/kochava/base/h;

    invoke-static {v1}, Lcom/kochava/base/h;->a(Lcom/kochava/base/h;)Lcom/kochava/base/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kochava/base/g;->f(Z)V

    return-void
.end method
