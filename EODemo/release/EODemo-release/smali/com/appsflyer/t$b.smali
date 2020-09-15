.class final enum Lcom/appsflyer/t$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/t$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsflyer/t$b;

.field public static final enum COCOS2DX:Lcom/appsflyer/t$b;

.field public static final enum CORDOVA:Lcom/appsflyer/t$b;

.field public static final enum DEFAULT:Lcom/appsflyer/t$b;

.field public static final enum REACT_NATIVE:Lcom/appsflyer/t$b;

.field public static final enum SEGMENT:Lcom/appsflyer/t$b;

.field public static final enum UNITY:Lcom/appsflyer/t$b;


# instance fields
.field private classLoaderName:Ljava/lang/String;

.field private platformName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/appsflyer/t$b;

    const/4 v1, 0x0

    const-string v2, "UNITY"

    const-string v3, "android_unity"

    const-string v4, "com.unity3d.player.UnityPlayer"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/appsflyer/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/t$b;->UNITY:Lcom/appsflyer/t$b;

    .line 15
    new-instance v0, Lcom/appsflyer/t$b;

    const/4 v2, 0x1

    const-string v3, "REACT_NATIVE"

    const-string v4, "android_reactNative"

    const-string v5, "com.facebook.react.ReactApplication"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/appsflyer/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/t$b;->REACT_NATIVE:Lcom/appsflyer/t$b;

    .line 16
    new-instance v0, Lcom/appsflyer/t$b;

    const/4 v3, 0x2

    const-string v4, "CORDOVA"

    const-string v5, "android_cordova"

    const-string v6, "org.apache.cordova.CordovaActivity"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/appsflyer/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/t$b;->CORDOVA:Lcom/appsflyer/t$b;

    .line 17
    new-instance v0, Lcom/appsflyer/t$b;

    const/4 v4, 0x3

    const-string v5, "SEGMENT"

    const-string v6, "android_segment"

    const-string v7, "com.segment.analytics.integrations.Integration"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/appsflyer/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/t$b;->SEGMENT:Lcom/appsflyer/t$b;

    .line 18
    new-instance v0, Lcom/appsflyer/t$b;

    const/4 v5, 0x4

    const-string v6, "COCOS2DX"

    const-string v7, "android_cocos2dx"

    const-string v8, "org.cocos2dx.lib.Cocos2dxActivity"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/appsflyer/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/t$b;->COCOS2DX:Lcom/appsflyer/t$b;

    .line 19
    new-instance v0, Lcom/appsflyer/t$b;

    const-string v6, "android_native"

    const/4 v7, 0x5

    const-string v8, "DEFAULT"

    invoke-direct {v0, v8, v7, v6, v6}, Lcom/appsflyer/t$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appsflyer/t$b;->DEFAULT:Lcom/appsflyer/t$b;

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [Lcom/appsflyer/t$b;

    sget-object v6, Lcom/appsflyer/t$b;->UNITY:Lcom/appsflyer/t$b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/appsflyer/t$b;->REACT_NATIVE:Lcom/appsflyer/t$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsflyer/t$b;->CORDOVA:Lcom/appsflyer/t$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsflyer/t$b;->SEGMENT:Lcom/appsflyer/t$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsflyer/t$b;->COCOS2DX:Lcom/appsflyer/t$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsflyer/t$b;->DEFAULT:Lcom/appsflyer/t$b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/appsflyer/t$b;->$VALUES:[Lcom/appsflyer/t$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/appsflyer/t$b;->platformName:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/appsflyer/t$b;->classLoaderName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/t$b;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appsflyer/t$b;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/appsflyer/t$b;)Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/appsflyer/t$b;->platformName:Ljava/lang/String;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/t$b;
    .locals 1

    .line 13
    sget-object v0, Lcom/appsflyer/t$b;->$VALUES:[Lcom/appsflyer/t$b;

    invoke-virtual {v0}, [Lcom/appsflyer/t$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/t$b;

    return-object v0
.end method
