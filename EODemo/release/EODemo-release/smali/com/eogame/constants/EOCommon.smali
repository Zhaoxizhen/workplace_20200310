.class public Lcom/eogame/constants/EOCommon;
.super Ljava/lang/Object;
.source "EOCommon.java"


# static fields
.field public static final KEY_MODE:Ljava/lang/String; = "MODE"

.field public static final SandClass:Ljava/lang/String; = "sandclass"

.field public static backPressedInvalid:Z = false

.field public static debug:Z = true

.field public static enableFlag:Z = true

.field public static gameCode:Ljava/lang/String; = null

.field public static gameKey:Ljava/lang/String; = null

.field public static gameLanguage:Ljava/lang/String; = null

.field public static gameName:Ljava/lang/String; = null

.field public static gameVersion:Ljava/lang/String; = null

.field public static packgeName:Ljava/lang/String; = null

.field public static platformTag:Ljava/lang/String; = null

.field public static screenOrientation:I = 0x0

.field public static serviceEmail:Ljava/lang/String; = "eoservice88@gmail.com"

.field public static serviceFbFans:Ljava/lang/String; = "https://www.facebook.com/Endless-War-125233481492378/"

.field public static udid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/eogame/constants/EOConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->isDebug()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 47
    sput-boolean v1, Lcom/eogame/constants/EOCommon;->debug:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    sput-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->getGameCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->getGameKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/EOCommon;->gameKey:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->getGameName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/EOCommon;->gameName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->getGameLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/EOCommon;->gameLanguage:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->isBackPressedInvalid()Z

    move-result v0

    sput-boolean v0, Lcom/eogame/constants/EOCommon;->backPressedInvalid:Z

    const-string v0, "2"

    .line 57
    sput-object v0, Lcom/eogame/constants/EOCommon;->platformTag:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/eogame/constants/EOConfig;->getScreenOrientation()I

    move-result p1

    sput p1, Lcom/eogame/constants/EOCommon;->screenOrientation:I

    .line 60
    invoke-static {p0}, Lcom/eogame/utils/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/eogame/constants/EOCommon;->gameVersion:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/eogame/utils/EODeviceInfoUtil;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/eogame/constants/EOCommon;->udid:Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lcom/eogame/utils/Util;->getLogState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    sput-boolean v1, Lcom/eogame/constants/EOConfig;->DEBUG:Z

    .line 69
    :cond_1
    sget-boolean p1, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz p1, :cond_2

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 70
    check-cast p0, Landroid/app/Activity;

    const-string p1, "\u5f53\u524d\u4e3a\u6d4b\u8bd5\u6a21\u5f0f!"

    invoke-static {p0, p1}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
