.class Lcom/kochava/base/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/v;


# direct methods
.method constructor <init>(Lcom/kochava/base/v;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/v$1;->a:Lcom/kochava/base/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/v$1;->a:Lcom/kochava/base/v;

    new-instance v1, Lcom/kochava/base/Deeplink;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/kochava/base/v$1;->a:Lcom/kochava/base/v;

    invoke-static {v3}, Lcom/kochava/base/v;->a(Lcom/kochava/base/v;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/kochava/base/Deeplink;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kochava/base/v;->a(Lcom/kochava/base/v;Lcom/kochava/base/Deeplink;)V

    return-void
.end method
