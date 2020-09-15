.class final Lcom/kochava/base/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kochava/base/b;
.implements Lcom/kochava/base/g;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/base/a$b;,
        Lcom/kochava/base/a$c;,
        Lcom/kochava/base/a$a;
    }
.end annotation


# instance fields
.field final a:Lcom/kochava/base/i;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Lcom/kochava/base/o;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Lcom/kochava/base/w;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Lcom/kochava/base/p;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final e:Lcom/kochava/base/u;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final f:Lcom/kochava/base/a$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Lcom/kochava/base/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kochava/base/m;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/kochava/base/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final j:Lcom/kochava/base/a$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private k:Lcom/kochava/base/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kochava/base/ConsentStatusChangeListener;Lorg/json/JSONObject;Lorg/json/JSONObject;ZZLjava/lang/String;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/kochava/base/ConsentStatusChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/kochava/base/a;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, v9, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    iput-object v0, v9, Lcom/kochava/base/a;->k:Lcom/kochava/base/e;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v0, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extensionDate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x1

    aput-object v1, v0, v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appGuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partnerName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x3

    aput-object v1, v0, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intelligentConsentManagement: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p9

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "selfManagedConsentRequirements"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p10

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x5

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "consentStatusChangeListener: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const/4 v1, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "custom: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v1

    const-string v15, "Controller"

    const-string v8, "CTR"

    invoke-static {v4, v8, v15, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/kochava/base/a$a;

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v13, v4

    move-object/from16 v4, p8

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kochava/base/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v13, v9, Lcom/kochava/base/a;->j:Lcom/kochava/base/a$a;

    new-instance v13, Lcom/kochava/base/i;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p6

    move/from16 v6, p9

    move/from16 v7, p10

    move-object v14, v8

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Lcom/kochava/base/i;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/kochava/base/b;Lorg/json/JSONObject;Lcom/kochava/base/ConsentStatusChangeListener;ZZLjava/lang/String;)V

    iput-object v13, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    new-instance v0, Lcom/kochava/base/a$c;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1, v9}, Lcom/kochava/base/a$c;-><init>(Lcom/kochava/base/i;Lcom/kochava/base/b;)V

    iput-object v0, v9, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    new-instance v0, Lcom/kochava/base/o;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1}, Lcom/kochava/base/o;-><init>(Lcom/kochava/base/i;)V

    iput-object v0, v9, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    new-instance v0, Lcom/kochava/base/w;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1}, Lcom/kochava/base/w;-><init>(Lcom/kochava/base/i;)V

    iput-object v0, v9, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    new-instance v0, Lcom/kochava/base/p;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1}, Lcom/kochava/base/p;-><init>(Lcom/kochava/base/i;)V

    iput-object v0, v9, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    new-instance v0, Lcom/kochava/base/u;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1}, Lcom/kochava/base/u;-><init>(Lcom/kochava/base/i;)V

    iput-object v0, v9, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    :try_start_0
    const-string v0, "com.kochava.base.location.LocationTracker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lcom/kochava/base/q;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1}, Lcom/kochava/base/q;-><init>(Lcom/kochava/base/i;)V

    iput-object v0, v9, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "LocationTracker module not present"

    aput-object v1, v0, v11

    const/4 v1, 0x3

    invoke-static {v1, v14, v15, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, v10}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/kochava/base/a;->j:Lcom/kochava/base/a$a;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-virtual {v0, v1}, Lcom/kochava/base/a$a;->a(Lcom/kochava/base/i;)V

    new-instance v0, Lcom/kochava/base/h;

    iget-object v1, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->a:Landroid/content/Context;

    iget-object v2, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->h:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v9}, Lcom/kochava/base/h;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/kochava/base/g;)V

    iput-object v0, v9, Lcom/kochava/base/a;->i:Lcom/kochava/base/h;

    iget-object v0, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/kochava/base/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, v12}, Lcom/kochava/base/d;->c(Z)V

    iget-object v0, v9, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v1, "initial_ever_sent"

    invoke-virtual {v0, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    invoke-interface {v0}, Lcom/kochava/base/s;->run()V

    :cond_2
    iget-object v0, v9, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v0, Lcom/kochava/base/i;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, p1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Landroid/net/Uri;ILcom/kochava/base/DeepLinkListener;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/kochava/base/DeepLinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/a;->k:Lcom/kochava/base/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kochava/base/e;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/a;->k:Lcom/kochava/base/e;

    :cond_0
    new-instance v0, Lcom/kochava/base/e;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/kochava/base/e;-><init>(Landroid/net/Uri;ILcom/kochava/base/i;Lcom/kochava/base/DeepLinkListener;)V

    iput-object v0, p0, Lcom/kochava/base/a;->k:Lcom/kochava/base/e;

    return-void
.end method

.method public final a(Lcom/kochava/base/AttributionUpdateListener;Z)V
    .locals 2
    .param p1    # Lcom/kochava/base/AttributionUpdateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Lcom/kochava/base/m;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-direct {v0, v1, p1, p2}, Lcom/kochava/base/m;-><init>(Lcom/kochava/base/i;Lcom/kochava/base/AttributionUpdateListener;Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method final a(Lcom/kochava/base/Tracker$IdentityLink;)V
    .locals 3
    .param p1    # Lcom/kochava/base/Tracker$IdentityLink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, p1, Lcom/kochava/base/Tracker$IdentityLink;->a:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "identityLink"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    new-instance v1, Lcom/kochava/base/a$b;

    const-string v2, "setIdentityLink"

    invoke-direct {v1, v2, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method final a(Ljava/lang/String;JLcom/kochava/base/DeeplinkProcessedListener;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/kochava/base/DeeplinkProcessedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, Lcom/kochava/base/v;

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    move-object v0, v6

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kochava/base/v;-><init>(Lcom/kochava/base/i;Ljava/lang/String;JLcom/kochava/base/DeeplinkProcessedListener;)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    const/4 p2, 0x1

    invoke-virtual {p1, v6, p2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
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
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "sendEvent"

    const/4 v2, 0x5

    const-string v3, "CTR"

    invoke-static {v2, v3, v1, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "eventName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "eventData"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "receiptJson"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "receiptSignature"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    new-instance p2, Lcom/kochava/base/a$b;

    invoke-direct {p2, v1, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method final a(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "enable"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    new-instance p2, Lcom/kochava/base/a$b;

    const-string v1, "setPushToken"

    invoke-direct {p2, v1, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/kochava/base/s;->b(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/kochava/base/i;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_4
    iget-object v0, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v2, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/h;

    invoke-virtual {v0, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/h;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->b()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kochava/base/d;->b(Z)V

    :cond_6
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0}, Lcom/kochava/base/d;->a()V

    :cond_7
    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/kochava/base/s;->a(Z)V

    iput-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    :cond_8
    iget-object p1, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method final a()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->r:Z

    return v0
.end method

.method final b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v0, p1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method final b(Z)V
    .locals 7

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->r:Z

    const/4 v1, 0x0

    const-string v2, "setSleep"

    const-string v3, "CTR"

    const/4 v4, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    const-string v4, "Rejecting same as current"

    aput-object v4, v0, v1

    invoke-static {p1, v3, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v3, v2, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iput-boolean p1, v0, Lcom/kochava/base/i;->r:Z

    iget-boolean p1, v0, Lcom/kochava/base/i;->r:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, p1, Lcom/kochava/base/i;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method

.method final b()Z
    .locals 5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Consent system disabled: Requirements Unknown"

    aput-object v3, v2, v1

    const-string v3, "CTR"

    const-string v4, "isConsentRequ"

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->n:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method final c()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const-string v1, ""

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Consent system disabled: Ignoring"

    aput-object v4, v2, v3

    const-string v3, "CTR"

    const-string v4, "getConsentDes"

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "description"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final c(Z)V
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "appLimitAdTracking"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    new-instance v1, Lcom/kochava/base/a$b;

    const-string v2, "setAppLimitAdTracking"

    invoke-direct {v1, v2, v0}, Lcom/kochava/base/a$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Lcom/kochava/base/a$c;->a(Lcom/kochava/base/a$b;)V

    return-void
.end method

.method public final d(Z)V
    .locals 6

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x3

    const-string v2, "setConsentReq"

    const-string v3, "CTR"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "Consent system disabled: Ignoring"

    aput-object v0, p1, v4

    invoke-static {v1, v3, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->n:Z

    if-nez v0, :cond_1

    new-array p1, v5, [Ljava/lang/Object;

    const-string v0, "Consent is Kochava Managed not Self Managed. Cannot set required."

    aput-object v0, p1, v4

    invoke-static {v1, v3, v2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/kochava/base/a;->d()Z

    move-result v0

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Consent required did not change: Ignoring"

    aput-object v1, v0, v4

    invoke-static {p1, v3, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "required"

    invoke-static {v3, v2, v1}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v2, v0, v1, v5}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/kochava/base/a;->e()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v4}, Lcom/kochava/base/d;->c(Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v5}, Lcom/kochava/base/d;->a(Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/a$a;

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-virtual {p1, v0}, Lcom/kochava/base/a$a;->a(Lcom/kochava/base/i;)V

    invoke-virtual {p0, v5}, Lcom/kochava/base/a;->g(Z)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v5}, Lcom/kochava/base/d;->c(Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-virtual {p1, p0, v5}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Consent system disabled: Ignoring"

    aput-object v3, v1, v2

    const-string v3, "CTR"

    const-string v4, "isConsentRequ"

    invoke-static {v0, v3, v4, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "required"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method final e(Z)V
    .locals 7

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Consent system disabled: Ignoring"

    aput-object v2, v0, v1

    const-string v1, "CTR"

    const-string v2, "setConsentGra"

    invoke-static {p1, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "should_prompt"

    invoke-static {v5, v4, v3}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "consent_last_prompt"

    invoke-virtual {v4, v6, v5, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v4, v0, v3, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v2}, Lcom/kochava/base/d;->c(Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {p1}, Lcom/kochava/base/p;->h()V

    iget-object p1, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {p1}, Lcom/kochava/base/w;->h()V

    iget-object p1, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {p1}, Lcom/kochava/base/u;->h()V

    iget-object p1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/kochava/base/s;->h()V

    :cond_1
    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v0, "blacklist"

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {p1}, Lcom/kochava/base/o;->h()V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "init_last_sent"

    invoke-virtual {p1, v1, v0, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_2
    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, p1, Lcom/kochava/base/i;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->i:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v1}, Lcom/kochava/base/d;->a(Z)V

    iget-object p1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object p1, p1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {p1, v1}, Lcom/kochava/base/d;->c(Z)V

    invoke-virtual {p0, v2}, Lcom/kochava/base/a;->g(Z)V

    :goto_0
    iget-object p1, p0, Lcom/kochava/base/a;->j:Lcom/kochava/base/a$a;

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-virtual {p1, v0}, Lcom/kochava/base/a$a;->a(Lcom/kochava/base/i;)V

    iget-object p1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    invoke-virtual {p1}, Lcom/kochava/base/a$c;->a()V

    return-void
.end method

.method public final e()Z
    .locals 5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Consent system disabled: Ignoring"

    aput-object v3, v2, v1

    const-string v3, "CTR"

    const-string v4, "isConsentGran"

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "granted"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final f()J
    .locals 6

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Consent system disabled: Ignoring"

    aput-object v5, v3, v4

    const-string v4, "CTR"

    const-string v5, "getConsentTim"

    invoke-static {v0, v4, v5, v3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide v1

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "response_time"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Z)V
    .locals 20
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v2, v2, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v3, "session_tracking"

    invoke-virtual {v2, v3}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v2

    iget-object v4, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "initial_data"

    invoke-virtual {v4, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v6, "initial_ever_sent"

    invoke-virtual {v4, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v4

    if-eqz v2, :cond_3

    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/kochava/base/i;->s:J

    iget-object v2, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    new-instance v3, Lcom/kochava/base/l;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move-object v7, v2

    invoke-direct/range {v6 .. v12}, Lcom/kochava/base/l;-><init>(Lcom/kochava/base/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    new-instance v3, Lcom/kochava/base/l;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v3

    move-object v14, v2

    invoke-direct/range {v13 .. v19}, Lcom/kochava/base/l;-><init>(Lcom/kochava/base/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v3, v5}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v2}, Lcom/kochava/base/w;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v2}, Lcom/kochava/base/w;->h()V

    :cond_4
    if-nez v1, :cond_5

    iget-object v2, v0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {v2}, Lcom/kochava/base/u;->h()V

    :cond_5
    iget-object v2, v0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iput-boolean v1, v2, Lcom/kochava/base/i;->t:Z

    iget-object v1, v2, Lcom/kochava/base/i;->f:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const-string v1, ""

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Consent system disabled: Ignoring"

    aput-object v4, v2, v3

    const-string v3, "CTR"

    const-string v4, "getConsentPro"

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "prompt_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/kochava/base/s;->a(Z)V

    :cond_0
    return-void
.end method

.method final h()Z
    .locals 5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Consent system disabled: Ignoring"

    aput-object v3, v2, v1

    const-string v3, "CTR"

    const-string v4, "isConsentShou"

    invoke-static {v0, v3, v4, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "should_prompt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method final i()V
    .locals 5

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Consent system disabled: Ignoring"

    aput-object v3, v2, v1

    const-string v1, "CTR"

    const-string v3, "clearConsentS"

    invoke-static {v0, v1, v3, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "should_prompt"

    invoke-static {v4, v1, v3}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-virtual {v1, v0, v3, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v0, v0, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "consent_last_prompt"

    invoke-virtual {v0, v3, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method final j()Lorg/json/JSONArray;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v0, v0, Lcom/kochava/base/i;->m:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Consent system disabled: Ignoring"

    aput-object v3, v1, v2

    const-string v2, "CTR"

    const-string v3, "getConsentPar"

    invoke-static {v0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0

    :cond_0
    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lcom/kochava/base/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "partners"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kochava/base/x;->c(Ljava/lang/Object;Z)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/kochava/base/s;->o()V

    :cond_0
    return-void
.end method

.method public final l()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v0}, Lcom/kochava/base/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v0}, Lcom/kochava/base/w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {v0}, Lcom/kochava/base/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/a;->i:Lcom/kochava/base/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/kochava/base/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final run()V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "WAKE"

    aput-object v3, v1, v2

    const/4 v3, 0x5

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v1, v1, Lcom/kochava/base/i;->r:Z

    if-eqz v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SLEEP: SKIP"

    aput-object v1, v0, v2

    const-string v1, "CTR"

    const-string v2, "Controller"

    invoke-static {v3, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v1}, Lcom/kochava/base/o;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "kvinit_staleness"

    invoke-virtual {v1, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const v4, 0x15180

    invoke-static {v1, v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v1

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "init_last_sent"

    invoke-virtual {v4, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v5

    invoke-static {v4, v5}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initLastSent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initStaleness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "CTR"

    const-string v7, "Controller"

    invoke-static {v3, v6, v7, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v4, v1

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result v1

    if-gt v4, v1, :cond_1

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "init_last_sent"

    invoke-virtual {v1, v5, v4, v0}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v1}, Lcom/kochava/base/o;->h()V

    iget-object v1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {v1}, Lcom/kochava/base/p;->h()V

    :cond_1
    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v1}, Lcom/kochava/base/o;->e()Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "INIT"

    aput-object v4, v1, v2

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v1}, Lcom/kochava/base/o;->g()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v1}, Lcom/kochava/base/o;->f()V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v2, p0, Lcom/kochava/base/a;->b:Lcom/kochava/base/o;

    invoke-virtual {v1, v2, v0}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "INIT SKIP"

    aput-object v1, v0, v2

    const-string v1, "CTR"

    const-string v2, "Controller"

    invoke-static {v3, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-boolean v1, v1, Lcom/kochava/base/i;->m:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/kochava/base/a;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/kochava/base/a;->e()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/kochava/base/a;->f:Lcom/kochava/base/a$c;

    invoke-virtual {v1}, Lcom/kochava/base/a$c;->a()V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "push"

    invoke-virtual {v1, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, v1, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v4, "push_token"

    invoke-virtual {v1, v4}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/kochava/base/x;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, v4, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v5, "push_token_enable"

    invoke-virtual {v4, v5}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/kochava/base/x;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v5, v5, Lcom/kochava/base/i;->d:Lcom/kochava/base/d;

    const-string v6, "push_token_sent"

    invoke-virtual {v5, v6}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    new-instance v6, Lcom/kochava/base/t;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v6, v5, v1, v4, v0}, Lcom/kochava/base/t;-><init>(Lcom/kochava/base/i;Ljava/lang/String;ZZ)V

    invoke-virtual {v5, v6, v0}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    :cond_5
    iget-object v1, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v1}, Lcom/kochava/base/w;->e()Z

    move-result v1

    if-nez v1, :cond_7

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "UPDATE"

    aput-object v4, v1, v2

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v1}, Lcom/kochava/base/w;->g()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v1}, Lcom/kochava/base/w;->f()V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v2, p0, Lcom/kochava/base/a;->c:Lcom/kochava/base/w;

    invoke-virtual {v1, v2, v0}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    goto :goto_1

    :cond_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UPDATE SKIP"

    aput-object v1, v0, v2

    const-string v1, "CTR"

    const-string v2, "Controller"

    invoke-static {v3, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_7
    iget-object v1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {v1}, Lcom/kochava/base/p;->e()Z

    move-result v1

    if-nez v1, :cond_9

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "INSTALL"

    aput-object v4, v1, v2

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {v1}, Lcom/kochava/base/p;->g()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {v1}, Lcom/kochava/base/p;->f()V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v2, p0, Lcom/kochava/base/a;->d:Lcom/kochava/base/p;

    invoke-virtual {v1, v2, v0}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    goto :goto_2

    :cond_8
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "INSTALL SKIP"

    aput-object v1, v0, v2

    const-string v1, "CTR"

    const-string v2, "Controller"

    invoke-static {v3, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_9
    iget-object v1, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    const-string v4, "CTR"

    const-string v5, "Controller"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "ATTRIBUTION_QUEUE"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    iget-object v4, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kochava/base/m;

    invoke-virtual {v4}, Lcom/kochava/base/m;->e()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v4, "CTR"

    const-string v5, "Controller"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "ATTRIBUTION_QUEUE Item Complete"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-virtual {v4}, Lcom/kochava/base/m;->g()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v4, "CTR"

    const-string v5, "Controller"

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "ATTRIBUTION_QUEUE Item Processing"

    aput-object v7, v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    const-string v5, "CTR"

    const-string v6, "Controller"

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "ATTRIBUTION_QUEUE Item Start"

    aput-object v8, v7, v2

    invoke-static {v3, v5, v6, v7}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/kochava/base/m;->f()V

    iget-object v5, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    invoke-virtual {v5, v4, v2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    :cond_c
    :goto_4
    iget-object v4, p0, Lcom/kochava/base/a;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    monitor-exit v1

    return-void

    :cond_d
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/kochava/base/s;->e()Z

    move-result v1

    if-nez v1, :cond_f

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "LOCATION_TRACKER"

    aput-object v4, v1, v2

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    invoke-interface {v1}, Lcom/kochava/base/s;->g()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    invoke-interface {v1}, Lcom/kochava/base/s;->f()V

    iget-object v1, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v4, p0, Lcom/kochava/base/a;->g:Lcom/kochava/base/s;

    invoke-virtual {v1, v4, v2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    goto :goto_5

    :cond_e
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "LOCATION_TRACKER SKIP"

    aput-object v4, v1, v2

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_5
    iget-object v1, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {v1}, Lcom/kochava/base/u;->e()Z

    move-result v1

    if-nez v1, :cond_11

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "QUEUE"

    aput-object v4, v1, v2

    const-string v4, "CTR"

    const-string v5, "Controller"

    invoke-static {v3, v4, v5, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {v1}, Lcom/kochava/base/u;->g()Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v0, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {v0}, Lcom/kochava/base/u;->f()V

    iget-object v0, p0, Lcom/kochava/base/a;->a:Lcom/kochava/base/i;

    iget-object v1, p0, Lcom/kochava/base/a;->e:Lcom/kochava/base/u;

    invoke-virtual {v0, v1, v2}, Lcom/kochava/base/i;->a(Ljava/lang/Runnable;Z)V

    goto :goto_6

    :cond_10
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "QUEUE SKIP"

    aput-object v1, v0, v2

    const-string v1, "CTR"

    const-string v2, "Controller"

    invoke-static {v3, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
