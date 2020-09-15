.class public Ltw/com/mycard/sdk/libs/PSDKApplication;
.super Landroid/app/Application;
.source "PSDKApplication.java"


# static fields
.field private static isopen:Z = true

.field private static newParentLoaderOfOldLoader:Ljava/lang/Object;

.field private static oldLoaderOfParentOld:Ljava/lang/Object;


# instance fields
.field private Oldloader:Ljava/lang/ClassLoader;

.field public final TAG:Ljava/lang/String;

.field private cc:Landroid/content/Context;

.field public dataSchema:Ljava/lang/String;

.field private dexPath:Ljava/lang/String;

.field private j:Ljava/lang/Object;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private newloader:Ljava/lang/ClassLoader;

.field public sdkVersion:I

.field public wvResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "PSDKApplication"

    .line 18
    iput-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 32
    iput v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->sdkVersion:I

    return-void
.end method


# virtual methods
.method public LoadApk()V
    .locals 6

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKApplication.LoadApk()"

    .line 96
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, v1}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "PaymentApp.apk"

    if-eqz v2, :cond_0

    .line 98
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, v1}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->dexPath:Ljava/lang/String;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 100
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->dexPath:Ljava/lang/String;

    .line 104
    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PSDKApplication : getClassLoader() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PSDKApplication : getClass().getClassLoader() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->Oldloader:Ljava/lang/ClassLoader;

    .line 108
    new-instance v1, Ltw/com/mycard/sdk/libs/Smith;

    iget-object v2, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->Oldloader:Ljava/lang/ClassLoader;

    const-string v3, "parent"

    invoke-direct {v1, v2, v3}, Ltw/com/mycard/sdk/libs/Smith;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v2, Ltw/com/mycard/sdk/libs/PSDKApplication;->newParentLoaderOfOldLoader:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 111
    new-instance v2, Ltw/com/mycard/sdk/libs/ContainerClassLoader;

    iget-object v3, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->dexPath:Ljava/lang/String;

    iget-object v4, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->cc:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v1}, Ltw/com/mycard/sdk/libs/Smith;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 111
    invoke-direct {v2, p0, v3, v4, v5}, Ltw/com/mycard/sdk/libs/ContainerClassLoader;-><init>(Ltw/com/mycard/sdk/libs/PSDKApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Ltw/com/mycard/sdk/libs/PSDKApplication;->newParentLoaderOfOldLoader:Ljava/lang/Object;

    .line 114
    :cond_2
    invoke-virtual {v1}, Ltw/com/mycard/sdk/libs/Smith;->get()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Ltw/com/mycard/sdk/libs/PSDKApplication;->oldLoaderOfParentOld:Ljava/lang/Object;

    .line 115
    sget-object v2, Ltw/com/mycard/sdk/libs/PSDKApplication;->newParentLoaderOfOldLoader:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ltw/com/mycard/sdk/libs/Smith;->set(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1}, Ltw/com/mycard/sdk/libs/Smith;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    iput-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->newloader:Ljava/lang/ClassLoader;

    .line 118
    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->loadResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PSDKApplication : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public RemoveApk()V
    .locals 5

    const-string v0, "PSDKApplication.RemoveApk : "

    const-string v1, "MyCardSDK"

    const-string v2, "PSDKApplication.RemoveApk()"

    .line 126
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "\u79fb\u9664APK\u52a0\u8f09\u8cc7\u6599\uff0c\u66ff\u63db\u56deApp\u539f\u59cb\u8cc7\u6599"

    .line 127
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    new-instance v2, Ltw/com/mycard/sdk/libs/Smith;

    iget-object v3, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->Oldloader:Ljava/lang/ClassLoader;

    const-string v4, "parent"

    invoke-direct {v2, v3, v4}, Ltw/com/mycard/sdk/libs/Smith;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v3, Ltw/com/mycard/sdk/libs/PSDKApplication;->oldLoaderOfParentOld:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ltw/com/mycard/sdk/libs/Smith;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 135
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v2

    .line 132
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->newloader:Ljava/lang/ClassLoader;

    .line 143
    iput-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mAssetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->cc:Landroid/content/Context;

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 176
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 165
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->Oldloader:Ljava/lang/ClassLoader;

    const-string v1, "MyCardSDK"

    if-nez v0, :cond_0

    const-string v0, "PSDKApplication : super.getClassLoader()"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PSDKApplication : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->newloader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_1

    const-string v2, "Oldloader"

    goto :goto_0

    :cond_1
    const-string v2, "newloader"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->newloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_2

    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->Oldloader:Ljava/lang/ClassLoader;

    :cond_2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 42
    sget-boolean v0, Ltw/com/mycard/sdk/libs/PSDKApplication;->isopen:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 182
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v1, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .line 188
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected loadResources()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKApplication.loadResources()"

    .line 150
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "addAssetPath"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->dexPath:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mAssetManager:Landroid/content/res/AssetManager;

    .line 155
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Landroid/content/res/Resources;

    iget-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p0}, Ltw/com/mycard/sdk/libs/PSDKApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mResources:Landroid/content/res/Resources;

    .line 159
    :cond_0
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mTheme:Landroid/content/res/Resources$Theme;

    .line 160
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->mTheme:Landroid/content/res/Resources$Theme;

    const v1, 0x103000e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 58
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 59
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/res/Configuration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    iget-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->j:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MyCardSDK"

    const-string v1, "PSDKApplication.onLowMemory()"

    .line 64
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized onCreate()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MyCardSDK"

    const-string v1, "PSDKApplication.onCreate()"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    .line 53
    sput-boolean v0, Ltw/com/mycard/sdk/libs/PSDKApplication;->isopen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onLowMemory()V
    .locals 4

    .line 71
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 72
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->j:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->j:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MyCardSDK"

    const-string v2, "onLowMemory()"

    .line 76
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onTerminate()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 84
    iget-object v0, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onTerminate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Ltw/com/mycard/sdk/libs/PSDKApplication;->j:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MyCardSDK"

    const-string v2, "PSDKApplication.onTerminate()"

    .line 89
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
