.class public Lcom/eogame/utils/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field private static instance:Lcom/eogame/utils/ResourceUtil;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 54
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 50
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 67
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 69
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "getIdByReflection error"

    invoke-virtual {p1, p2, p0}, Lcom/eogame/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/eogame/utils/ResourceUtil;
    .locals 1

    .line 26
    sget-object v0, Lcom/eogame/utils/ResourceUtil;->instance:Lcom/eogame/utils/ResourceUtil;

    return-object v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 46
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 58
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    .line 38
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getViewId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 34
    invoke-static {p0, v0, p1}, Lcom/eogame/utils/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 19
    sget-object v0, Lcom/eogame/utils/ResourceUtil;->instance:Lcom/eogame/utils/ResourceUtil;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/eogame/utils/ResourceUtil;

    invoke-direct {v0}, Lcom/eogame/utils/ResourceUtil;-><init>()V

    sput-object v0, Lcom/eogame/utils/ResourceUtil;->instance:Lcom/eogame/utils/ResourceUtil;

    .line 22
    :cond_0
    sget-object v0, Lcom/eogame/utils/ResourceUtil;->instance:Lcom/eogame/utils/ResourceUtil;

    iput-object p0, v0, Lcom/eogame/utils/ResourceUtil;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/eogame/utils/ResourceUtil;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/eogame/utils/ResourceUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
