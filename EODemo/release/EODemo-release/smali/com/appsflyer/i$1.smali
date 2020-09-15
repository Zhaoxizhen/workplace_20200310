.class final Lcom/appsflyer/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/i;

.field final synthetic val$validateParamsForWH:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/appsflyer/i;Ljava/util/Map;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/appsflyer/i$1;->this$0:Lcom/appsflyer/i;

    iput-object p2, p0, Lcom/appsflyer/i$1;->val$validateParamsForWH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/appsflyer/i$1;->this$0:Lcom/appsflyer/i;

    iget-object v1, p0, Lcom/appsflyer/i$1;->val$validateParamsForWH:Ljava/util/Map;

    invoke-static {v0}, Lcom/appsflyer/i;->access$000(Lcom/appsflyer/i;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/appsflyer/i;->access$100(Lcom/appsflyer/i;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V

    return-void
.end method
