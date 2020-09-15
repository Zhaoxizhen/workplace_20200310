.class public Lcom/kochava/base/Tracker$IdentityLink;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IdentityLink"
.end annotation


# instance fields
.field final a:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/String;)Lcom/kochava/base/Tracker$IdentityLink;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;Z)V

    return-object p0
.end method

.method public final add(Ljava/util/Map;)Lcom/kochava/base/Tracker$IdentityLink;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kochava/base/Tracker$IdentityLink;"
        }
    .end annotation

    invoke-static {p1}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    iget-object v1, p0, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    invoke-static {v1, p1, v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid Input"

    aput-object v2, v1, v0

    const-string v0, "IDL"

    const-string v2, "add"

    invoke-static {p1, v0, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method
