.class public Lcom/eogame/utils/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static dialog:Lcom/eogame/widgets/EOProgressDialog;

.field private static instance:Lcom/eogame/utils/AndroidUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/eogame/utils/AndroidUtils;

    invoke-direct {v0}, Lcom/eogame/utils/AndroidUtils;-><init>()V

    sput-object v0, Lcom/eogame/utils/AndroidUtils;->instance:Lcom/eogame/utils/AndroidUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/eogame/widgets/EOProgressDialog;
    .locals 1

    .line 16
    sget-object v0, Lcom/eogame/utils/AndroidUtils;->dialog:Lcom/eogame/widgets/EOProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/eogame/widgets/EOProgressDialog;)Lcom/eogame/widgets/EOProgressDialog;
    .locals 0

    .line 16
    sput-object p0, Lcom/eogame/utils/AndroidUtils;->dialog:Lcom/eogame/widgets/EOProgressDialog;

    return-object p0
.end method

.method public static closeProgress(Landroid/app/Activity;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/eogame/utils/AndroidUtils$3;

    invoke-direct {v0}, Lcom/eogame/utils/AndroidUtils$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static instance()Lcom/eogame/utils/AndroidUtils;
    .locals 1

    .line 27
    sget-object v0, Lcom/eogame/utils/AndroidUtils;->instance:Lcom/eogame/utils/AndroidUtils;

    return-object v0
.end method

.method public static setLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 151
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set language , language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v1, "en-us"

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 155
    sput-object p1, Lcom/eogame/constants/EOCommon;->gameLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "zh-cn"

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 158
    sput-object p1, Lcom/eogame/constants/EOCommon;->gameLanguage:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static showEOPermissionTips(Landroid/app/Activity;Lcom/eogame/widgets/EOTipsListener;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/eogame/utils/AndroidUtils$4;

    invoke-direct {v0, p0, p1}, Lcom/eogame/utils/AndroidUtils$4;-><init>(Landroid/app/Activity;Lcom/eogame/widgets/EOTipsListener;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showProgress(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/eogame/utils/EOThread;)V
    .locals 0

    .line 72
    new-instance p1, Lcom/eogame/utils/AndroidUtils$2;

    invoke-direct {p1, p0, p2, p4, p5}, Lcom/eogame/utils/AndroidUtils$2;-><init>(Landroid/app/Activity;Ljava/lang/String;ZLcom/eogame/utils/EOThread;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showProgress(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    .line 38
    new-instance v0, Lcom/eogame/utils/AndroidUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/eogame/utils/AndroidUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
