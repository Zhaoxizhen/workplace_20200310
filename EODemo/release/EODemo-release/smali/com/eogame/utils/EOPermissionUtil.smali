.class public Lcom/eogame/utils/EOPermissionUtil;
.super Ljava/lang/Object;
.source "EOPermissionUtil.java"


# static fields
.field public static final READ_PHONE_STATE:I = 0x4e21

.field public static final SMS:I = 0x4e23

.field public static final SYSTEM_ALERT_WINDOW:I = 0x4e22


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDrawOverlays(Landroid/app/Activity;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/eogame/utils/Util;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 63
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static checkPermission(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 30
    invoke-static {}, Lcom/eogame/utils/Util;->getSDKVersion()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    .line 44
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
