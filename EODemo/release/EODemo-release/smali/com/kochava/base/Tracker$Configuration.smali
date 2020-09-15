.class public Lcom/kochava/base/Tracker$Configuration;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation


# instance fields
.field final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/kochava/base/AttributionUpdateListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/kochava/base/ConsentStatusChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/kochava/base/Tracker$IdentityLink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "!SDK-VERSION-STRING!:com.kochava:tracker:release:3.7.3"

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->f:Lcom/kochava/base/AttributionUpdateListener;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kochava/base/Tracker$Configuration;->h:Z

    iput-boolean v1, p0, Lcom/kochava/base/Tracker$Configuration;->i:Z

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->j:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->l:Lcom/kochava/base/Tracker$IdentityLink;

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic b(Lcom/kochava/base/Tracker$Configuration;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/ConsentStatusChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    return-object p0
.end method

.method static synthetic f(Lcom/kochava/base/Tracker$Configuration;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic g(Lcom/kochava/base/Tracker$Configuration;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kochava/base/Tracker$Configuration;->h:Z

    return p0
.end method

.method static synthetic h(Lcom/kochava/base/Tracker$Configuration;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/kochava/base/Tracker$Configuration;->i:Z

    return p0
.end method

.method static synthetic i(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic j(Lcom/kochava/base/Tracker$Configuration;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic k(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/Tracker$IdentityLink;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->l:Lcom/kochava/base/Tracker$IdentityLink;

    return-object p0
.end method

.method static synthetic l(Lcom/kochava/base/Tracker$Configuration;)Lcom/kochava/base/AttributionUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/kochava/base/Tracker$Configuration;->f:Lcom/kochava/base/AttributionUpdateListener;

    return-object p0
.end method


# virtual methods
.method public final addCustom(Ljava/lang/String;Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;
    .locals 1
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

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public final addCustom(Lorg/json/JSONObject;)Lcom/kochava/base/Tracker$Configuration;
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/Tracker$Configuration;->m:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/kochava/base/x;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :cond_1
    return-object p0
.end method

.method public final setAppGuid(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Ljava/lang/String;
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

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final setAppLimitAdTracking(Z)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setAttributionUpdateListener(Lcom/kochava/base/AttributionUpdateListener;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/AttributionUpdateListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->f:Lcom/kochava/base/AttributionUpdateListener;

    return-object p0
.end method

.method public final setConsentStatusChangeListener(Lcom/kochava/base/ConsentStatusChangeListener;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/ConsentStatusChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->g:Lcom/kochava/base/ConsentStatusChangeListener;

    return-object p0
.end method

.method public final setIdentityLink(Lcom/kochava/base/Tracker$IdentityLink;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Lcom/kochava/base/Tracker$IdentityLink;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->l:Lcom/kochava/base/Tracker$IdentityLink;

    return-object p0
.end method

.method public final setIntelligentConsentManagement(Z)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/kochava/base/Tracker$Configuration;->h:Z

    return-object p0
.end method

.method public final setLogLevel(I)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setManualManagedConsentRequirements(Z)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/kochava/base/Tracker$Configuration;->i:Z

    return-object p0
.end method

.method public final setPartnerName(Ljava/lang/String;)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .param p1    # Ljava/lang/String;
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

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final setSleep(Z)Lcom/kochava/base/Tracker$Configuration;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/kochava/base/Tracker$Configuration;->k:Ljava/lang/Boolean;

    return-object p0
.end method
