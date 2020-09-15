.class Lcom/kochava/base/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final d:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kochava/base/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/kochava/base/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/kochava/base/a$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/kochava/base/a$a;->d:Lorg/json/JSONObject;

    iput-object p5, p0, Lcom/kochava/base/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a(Lcom/kochava/base/i;)V
    .locals 7
    .param p1    # Lcom/kochava/base/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v1, p0, Lcom/kochava/base/a$a;->a:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-virtual {v0, v2, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a$a;->b:Ljava/lang/String;

    const-string v1, "kochava_app_id"

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v2, p0, Lcom/kochava/base/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/kochava/base/a$a;->c:Ljava/lang/String;

    const-string v1, "partner_name"

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v2, p0, Lcom/kochava/base/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/kochava/base/a$a;->d:Lorg/json/JSONObject;

    const-string v1, "custom"

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v2, p0, Lcom/kochava/base/a$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/kochava/base/a$a;->e:Ljava/lang/String;

    const-string v1, "ext_date"

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    iget-object v2, p0, Lcom/kochava/base/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->a(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "first_launch_time"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "kochava_device_id"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    const-string v2, "3.7.3"

    const-string v3, "."

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KA"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "t"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "initial_needs_sent"

    invoke-virtual {p1, v1, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
