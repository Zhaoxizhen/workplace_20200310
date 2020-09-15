.class public Lcom/eogame/constants/EOConfig;
.super Ljava/lang/Object;
.source "EOConfig.java"


# static fields
.field public static DEBUG:Z = false

.field public static final SDK_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final SDK_VERSIONCODE:Ljava/lang/String; = "1"


# instance fields
.field private backPressedInvalid:Z

.field private debug:Z

.field private gameCode:Ljava/lang/String;

.field private gameKey:Ljava/lang/String;

.field private gameLanguage:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private screenOrientation:I

.field private serviceEmail:Ljava/lang/String;

.field private serviceFbFans:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/eogame/constants/EOConfig;->screenOrientation:I

    .line 26
    iput-boolean v0, p0, Lcom/eogame/constants/EOConfig;->backPressedInvalid:Z

    .line 28
    iput-boolean v0, p0, Lcom/eogame/constants/EOConfig;->debug:Z

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/eogame/constants/EOConfig;->serviceEmail:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/eogame/constants/EOConfig;->serviceFbFans:Ljava/lang/String;

    return-void
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static getSdkVersioncode()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method


# virtual methods
.method public getGameCode()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/eogame/constants/EOConfig;->gameCode:Ljava/lang/String;

    return-object v0
.end method

.method public getGameKey()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eogame/constants/EOConfig;->gameKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLanguage()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/eogame/constants/EOConfig;->gameLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/eogame/constants/EOConfig;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenOrientation()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/eogame/constants/EOConfig;->screenOrientation:I

    return v0
.end method

.method public getServiceEmail()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/eogame/constants/EOConfig;->serviceEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceFbFans()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/eogame/constants/EOConfig;->serviceFbFans:Ljava/lang/String;

    return-object v0
.end method

.method public isBackPressedInvalid()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/eogame/constants/EOConfig;->backPressedInvalid:Z

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/eogame/constants/EOConfig;->debug:Z

    return v0
.end method

.method public setBackPressedInValid()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/eogame/constants/EOConfig;->backPressedInvalid:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/eogame/constants/EOConfig;->debug:Z

    return-void
.end method

.method public setGameCode(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/eogame/constants/EOConfig;->gameCode:Ljava/lang/String;

    return-void
.end method

.method public setGameKey(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/eogame/constants/EOConfig;->gameKey:Ljava/lang/String;

    return-void
.end method

.method public setGameLanguage(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/eogame/constants/EOConfig;->gameLanguage:Ljava/lang/String;

    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/eogame/constants/EOConfig;->gameName:Ljava/lang/String;

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/eogame/constants/EOConfig;->screenOrientation:I

    return-void
.end method

.method public setServiceEmail(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/eogame/constants/EOConfig;->serviceEmail:Ljava/lang/String;

    return-void
.end method

.method public setServiceFbFans(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/eogame/constants/EOConfig;->serviceFbFans:Ljava/lang/String;

    return-void
.end method
