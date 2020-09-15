.class final Lcom/kochava/base/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kochava/base/c$a;
    }
.end annotation


# static fields
.field static final a:[Lcom/kochava/base/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:I
    .annotation build Landroidx/annotation/IntRange;
        from = -0x1L
    .end annotation
.end field

.field private final d:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/16 v0, 0x2f

    new-array v0, v0, [Lcom/kochava/base/c;

    new-instance v1, Lcom/kochava/base/c;

    const/4 v2, 0x6

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/16 v4, 0xf

    const/4 v5, 0x0

    const-string v6, "screen_brightness"

    invoke-direct {v1, v6, v4, v3, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/kochava/base/c;

    new-array v6, v2, [I

    fill-array-data v6, :array_1

    const-string v7, "device_orientation"

    invoke-direct {v1, v7, v4, v6, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v6, 0x1

    aput-object v1, v0, v6

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_2

    const/16 v8, 0xa

    const-string v9, "volume"

    invoke-direct {v1, v9, v8, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v7, 0x2

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v9, v2, [I

    fill-array-data v9, :array_3

    const/16 v10, 0x3c

    const-string v11, "carrier_name"

    invoke-direct {v1, v11, v10, v9, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v9, 0x3

    aput-object v1, v0, v9

    new-instance v1, Lcom/kochava/base/c;

    new-array v9, v7, [I

    fill-array-data v9, :array_4

    const/4 v11, -0x1

    const-string v12, "adid"

    invoke-direct {v1, v12, v11, v9, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v9, 0x4

    aput-object v1, v0, v9

    new-instance v1, Lcom/kochava/base/c;

    new-array v9, v7, [I

    fill-array-data v9, :array_5

    const-string v12, "fire_adid"

    invoke-direct {v1, v12, v11, v9, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v9, 0x5

    aput-object v1, v0, v9

    new-instance v1, Lcom/kochava/base/c;

    new-array v9, v7, [I

    fill-array-data v9, :array_6

    const-string v12, "oaid"

    invoke-direct {v1, v12, v11, v9, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/kochava/base/c;

    new-array v9, v6, [I

    aput v3, v9, v3

    const-string v12, "platform"

    invoke-direct {v1, v12, v11, v9, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/4 v9, 0x7

    aput-object v1, v0, v9

    new-instance v1, Lcom/kochava/base/c;

    new-array v12, v2, [I

    fill-array-data v12, :array_7

    const-string v13, "device"

    invoke-direct {v1, v13, v11, v12, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v12, 0x8

    aput-object v1, v0, v12

    new-instance v1, Lcom/kochava/base/c;

    new-array v12, v2, [I

    fill-array-data v12, :array_8

    const-string v13, "disp_h"

    invoke-direct {v1, v13, v10, v12, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v12, 0x9

    aput-object v1, v0, v12

    new-instance v1, Lcom/kochava/base/c;

    new-array v13, v2, [I

    fill-array-data v13, :array_9

    const-string v14, "disp_w"

    invoke-direct {v1, v14, v10, v13, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/kochava/base/c;

    new-array v8, v7, [I

    fill-array-data v8, :array_a

    const-string v13, "package"

    invoke-direct {v1, v13, v11, v8, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v8, 0xb

    aput-object v1, v0, v8

    new-instance v1, Lcom/kochava/base/c;

    new-array v8, v6, [I

    aput v6, v8, v3

    const-string v13, "installed_date"

    invoke-direct {v1, v13, v11, v8, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v8, 0xc

    aput-object v1, v0, v8

    new-instance v1, Lcom/kochava/base/c;

    new-array v8, v2, [I

    fill-array-data v8, :array_b

    const-string v13, "app_name"

    invoke-direct {v1, v13, v11, v8, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v8, 0xd

    aput-object v1, v0, v8

    new-instance v1, Lcom/kochava/base/c;

    new-array v8, v9, [I

    fill-array-data v8, :array_c

    const-string v13, "app_version"

    invoke-direct {v1, v13, v11, v8, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v8, 0xe

    aput-object v1, v0, v8

    new-instance v1, Lcom/kochava/base/c;

    new-array v8, v9, [I

    fill-array-data v8, :array_d

    const-string v13, "app_short_string"

    invoke-direct {v1, v13, v11, v8, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v7, [I

    fill-array-data v4, :array_e

    const-string v8, "android_id"

    invoke-direct {v1, v8, v10, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x10

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v9, [I

    fill-array-data v4, :array_f

    const-string v8, "os_version"

    invoke-direct {v1, v8, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x11

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v7, [I

    fill-array-data v4, :array_10

    const-string v8, "device_limit_tracking"

    invoke-direct {v1, v8, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x12

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v6, [I

    aput v6, v4, v3

    const-string v8, "fb_attribution_id"

    invoke-direct {v1, v8, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x13

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v7, [I

    fill-array-data v4, :array_11

    const-string v8, "ids"

    invoke-direct {v1, v8, v11, v5, v4}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x14

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v7, [I

    fill-array-data v4, :array_12

    const-string v8, "is_genuine"

    invoke-direct {v1, v8, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x15

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v7, [I

    fill-array-data v4, :array_13

    const-string v7, "language"

    invoke-direct {v1, v7, v10, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x16

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_14

    const-string v7, "screen_dpi"

    invoke-direct {v1, v7, v10, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x17

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v6, [I

    aput v6, v4, v3

    const-string v7, "screen_inches"

    invoke-direct {v1, v7, v10, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x18

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_15

    const-string v7, "manufacturer"

    invoke-direct {v1, v7, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x19

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_16

    const-string v7, "product_name"

    invoke-direct {v1, v7, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_17

    const-string v7, "architecture"

    invoke-direct {v1, v7, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_18

    const-string v7, "battery_status"

    invoke-direct {v1, v7, v10, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v2, [I

    fill-array-data v4, :array_19

    const-string v7, "battery_level"

    invoke-direct {v1, v7, v10, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v4, v6, [I

    aput v6, v4, v3

    const-string v7, "device_cores"

    invoke-direct {v1, v7, v11, v4, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_1a

    const-string v8, "signal_bars"

    invoke-direct {v1, v8, v4, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x1f

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v6, [I

    aput v6, v7, v3

    const-string v8, "installer_package"

    invoke-direct {v1, v8, v11, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x20

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_1b

    const-string v8, "instant_app"

    invoke-direct {v1, v8, v11, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x21

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v12, [I

    fill-array-data v7, :array_1c

    const-string v8, "locale"

    invoke-direct {v1, v8, v10, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x22

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v12, [I

    fill-array-data v7, :array_1d

    const-string v8, "timezone"

    invoke-direct {v1, v8, v10, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x23

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_1e

    const-string v8, "bluetooth_name"

    invoke-direct {v1, v8, v4, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x24

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_1f

    const-string v8, "ui_mode"

    invoke-direct {v1, v8, v4, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x25

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v12, [I

    fill-array-data v7, :array_20

    const-string v8, "notifications_enabled"

    invoke-direct {v1, v8, v6, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x26

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v12, [I

    fill-array-data v7, :array_21

    const-string v8, "background_location"

    invoke-direct {v1, v8, v6, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x27

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_22

    const-string v8, "bms"

    invoke-direct {v1, v8, v11, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x28

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v2, [I

    fill-array-data v7, :array_23

    const-string v8, "iab_usp"

    invoke-direct {v1, v8, v6, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v7, 0x29

    aput-object v1, v0, v7

    new-instance v1, Lcom/kochava/base/c;

    new-array v7, v6, [I

    aput v6, v7, v3

    const-string v3, "install_referrer"

    invoke-direct {v1, v3, v11, v7, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    new-instance v1, Lcom/kochava/base/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const-string v6, "network_conn_type"

    invoke-direct {v1, v6, v4, v3, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    new-instance v1, Lcom/kochava/base/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const-string v6, "ssid"

    invoke-direct {v1, v6, v10, v3, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    new-instance v1, Lcom/kochava/base/c;

    new-array v3, v2, [I

    fill-array-data v3, :array_26

    const-string v6, "bssid"

    invoke-direct {v1, v6, v10, v3, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    new-instance v1, Lcom/kochava/base/c;

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    const-string v3, "network_metered"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/kochava/base/c;-><init>(Ljava/lang/String;I[I[I)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sput-object v0, Lcom/kochava/base/c;->a:[Lcom/kochava/base/c;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0xa
        0xb
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0xa
        0xb
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0xa
        0xb
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_15
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_16
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_17
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_19
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_1a
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_1b
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
        0x8
        0x9
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
        0x8
        0x9
    .end array-data

    :array_1e
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_1f
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_20
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
        0x4
        0x8
        0x9
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
        0x4
        0x8
        0x9
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_25
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data

    :array_27
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xa
        0xb
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[I[I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const-string v2, "DPT"

    const-string v3, "Data"

    invoke-static {v1, v2, v3, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    iput p2, p0, Lcom/kochava/base/c;->c:I

    iput-object p3, p0, Lcom/kochava/base/c;->d:[I

    iput-object p4, p0, Lcom/kochava/base/c;->e:[I

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static B(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {p0}, Lcom/google/android/instantapps/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static D(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const-string p0, "VR_Headset"

    return-object p0

    :pswitch_1
    const-string p0, "Watch"

    return-object p0

    :pswitch_2
    const-string p0, "Appliance"

    return-object p0

    :pswitch_3
    const-string p0, "Television"

    return-object p0

    :pswitch_4
    const-string p0, "Car"

    return-object p0

    :pswitch_5
    const-string p0, "Desk"

    return-object p0

    :pswitch_6
    const-string p0, "Normal"

    return-object p0

    :pswitch_7
    const-string p0, "Undefined"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static E(Landroid/content/Context;)Z
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt p0, v3, :cond_2

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    return p0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_4

    :try_start_0
    const-string v0, "androidx.core.app.NotificationManagerCompat"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "from"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "areNotificationsEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_4
    return v1
.end method

.method private static F(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static G(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    :try_start_0
    const-string v0, "IABUSPrivacy_String"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Failed to read iab_usb value"

    aput-object v2, v0, v1

    const-string v1, "DPT"

    const-string v2, "getIabUsp"

    invoke-static {p0, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)D
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    int-to-double v0, p0

    const-wide v2, 0x406fe00000000000L    # 255.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v0, v2

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/kochava/base/x;->a(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(Landroid/content/Context;IID)Lcom/kochava/base/InstallReferrer;
    .locals 26
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p3    # D
        .annotation build Landroidx/annotation/Size;
            min = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v1

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    const-wide v8, 0x408f400000000000L    # 1000.0

    move/from16 v10, p1

    if-ge v6, v10, :cond_2

    add-int/lit8 v7, v0, 0x1

    new-instance v0, Lcom/kochava/base/c$a;

    move-object/from16 v11, p0

    invoke-direct {v0, v11}, Lcom/kochava/base/c$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v12, p2

    invoke-virtual {v0, v12}, Lcom/kochava/base/c$a;->b(I)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    const-string v15, "attempt_count"

    invoke-static {v15, v13, v14}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v13

    sub-long/2addr v13, v1

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-object v14, v0, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    const-string v15, "duration"

    invoke-static {v15, v13, v14}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v0, v0, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    const/4 v13, 0x1

    invoke-static {v0, v13, v4}, Lcom/kochava/base/c$a;->a(Lorg/json/JSONObject;ZLjava/lang/String;)Lcom/kochava/base/InstallReferrer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/kochava/base/InstallReferrer;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v14}, Lcom/kochava/base/InstallReferrer;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    mul-double v8, v8, p3

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v8, 0x4

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v0, v9, v5

    const-string v0, "DPT"

    const-string v13, "getInstallRef"

    invoke-static {v8, v0, v13, v9}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v0, v7

    move-object v7, v14

    goto :goto_0

    :cond_1
    :goto_2
    move/from16 v23, v7

    goto :goto_3

    :cond_2
    move/from16 v23, v0

    move-object v14, v7

    :goto_3
    if-eqz v14, :cond_3

    goto :goto_4

    :cond_3
    new-instance v0, Lcom/kochava/base/InstallReferrer;

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x4

    const/16 v22, 0x0

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double v24, v1, v8

    const-string v16, ""

    move-object v15, v0

    invoke-direct/range {v15 .. v25}, Lcom/kochava/base/InstallReferrer;-><init>(Ljava/lang/String;JJIZID)V

    move-object v14, v0

    :goto_4
    return-object v14
.end method

.method private a(Landroid/content/Context;Lcom/kochava/base/d;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kochava/base/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_1

    if-nez p5, :cond_1

    if-eqz p4, :cond_5

    :cond_1
    const/4 p5, 0x1

    if-nez p4, :cond_2

    :try_start_0
    invoke-static {p0, p1, p7, v0}, Lcom/kochava/base/c;->a(Lcom/kochava/base/c;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p7, 0x4

    new-array v1, p5, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "DPT"

    const-string v2, "getValueNew"

    invoke-static {p7, p1, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-interface {p6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p4, p3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, p4}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_ts"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p4, v0}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_upd"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-object p4
.end method

.method static a(Lcom/kochava/base/c;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0    # Lcom/kochava/base/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "app_short_string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "carrier_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "platform"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "fb_attribution_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "device_orientation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "iab_usp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "is_genuine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "install_referrer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "screen_inches"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "product_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "background_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "architecture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "notifications_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "os_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "signal_bars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "bluetooth_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "oaid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "adid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "bms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "fire_adid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "installer_package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "screen_dpi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "ui_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_1b
    const-string v1, "device_cores"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_1c
    const-string v1, "package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1d
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1e
    const-string v1, "battery_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_1f
    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_20
    const-string v1, "locale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_21
    const-string v1, "device_limit_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_22
    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_23
    const-string v1, "disp_w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_24
    const-string v1, "disp_h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_25
    const-string v1, "device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_26
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_1

    :sswitch_27
    const-string v1, "installed_date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_28
    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_29
    const-string v1, "timezone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_1

    :sswitch_2a
    const-string v1, "instant_app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1, p2}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Lcom/kochava/base/c;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/kochava/base/c;->j()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Lcom/kochava/base/c;->F(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Lcom/kochava/base/c;->E(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Lcom/kochava/base/c;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Lcom/kochava/base/c;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/kochava/base/c;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/kochava/base/c;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {p1}, Lcom/kochava/base/c;->B(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {p1}, Lcom/kochava/base/c;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {p1}, Lcom/kochava/base/c;->z(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/kochava/base/c;->g()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {p1}, Lcom/kochava/base/c;->y(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {p1}, Lcom/kochava/base/c;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/kochava/base/c;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/kochava/base/c;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {}, Lcom/kochava/base/c;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {p1}, Lcom/kochava/base/c;->w(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {p1}, Lcom/kochava/base/c;->v(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {}, Lcom/kochava/base/c;->c()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {p1}, Lcom/kochava/base/c;->u(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :pswitch_16
    invoke-static {}, Lcom/kochava/base/c;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {p1}, Lcom/kochava/base/c;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    invoke-static {p1}, Lcom/kochava/base/c;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {p1}, Lcom/kochava/base/c;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    invoke-static {p1}, Lcom/kochava/base/c;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    invoke-static {p1}, Lcom/kochava/base/c;->o(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    invoke-static {p1}, Lcom/kochava/base/c;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d
    invoke-static {p1}, Lcom/kochava/base/c;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1e
    invoke-static {p1}, Lcom/kochava/base/c;->l(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1f
    invoke-static {}, Lcom/kochava/base/c;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_20
    invoke-static {p1}, Lcom/kochava/base/c;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_21
    invoke-static {p1}, Lcom/kochava/base/c;->k(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_22
    invoke-static {p1}, Lcom/kochava/base/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_23
    invoke-static {p1}, Lcom/kochava/base/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_24
    invoke-static {p1}, Lcom/kochava/base/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_25
    invoke-static {p1}, Lcom/kochava/base/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_26
    invoke-static {p1}, Lcom/kochava/base/c;->c(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_27
    invoke-static {p1}, Lcom/kochava/base/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_28
    invoke-static {p1}, Lcom/kochava/base/c;->a(Landroid/content/Context;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_29
    const-string p0, "android"

    return-object p0

    :goto_2
    :try_start_1
    invoke-static {v0, p1, p2, p3}, Lcom/kochava/base/network/DataPointsNetwork;->getNew(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    new-array p1, v3, [Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Optional Network Library dependency missing, cannot gather "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "DPT"

    const-string p2, "getNew"

    invoke-static {v4, p0, p2, p1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7c5d093d -> :sswitch_2a
        -0x7bc0b807 -> :sswitch_29
        -0x7561dc2f -> :sswitch_28
        -0x74b7f2ad -> :sswitch_27
        -0x602d6ca8 -> :sswitch_26
        -0x4f94e1aa -> :sswitch_25
        -0x4f5dc6f5 -> :sswitch_24
        -0x4f5dc6e6 -> :sswitch_23
        -0x4834599c -> :sswitch_22
        -0x4437e03c -> :sswitch_21
        -0x4169f1a6 -> :sswitch_20
        -0x35c17346 -> :sswitch_1f
        -0x3449d12e -> :sswitch_1e
        -0x305518e6 -> :sswitch_1d
        -0x301acbba -> :sswitch_1c
        -0x23c7d275 -> :sswitch_1b
        -0x1a2c1f92 -> :sswitch_1a
        -0x18dba0f6 -> :sswitch_19
        -0x149bf571 -> :sswitch_18
        -0x11182f19 -> :sswitch_17
        0x17d88 -> :sswitch_16
        0x196b8 -> :sswitch_15
        0x2d9c7e -> :sswitch_14
        0x33ee6d -> :sswitch_13
        0xd67ed7c -> :sswitch_12
        0x281639f7 -> :sswitch_11
        0x281aad7d -> :sswitch_10
        0x2b17f0eb -> :sswitch_f
        0x30a65eea -> :sswitch_e
        0x320c6953 -> :sswitch_d
        0x38de6fa6 -> :sswitch_c
        0x3c7623db -> :sswitch_b
        0x4598e5e9 -> :sswitch_a
        0x49fab1ab -> :sswitch_9
        0x4f36a643 -> :sswitch_8
        0x54ad1886 -> :sswitch_7
        0x5d86561d -> :sswitch_6
        0x67748604 -> :sswitch_5
        0x67d1a167 -> :sswitch_4
        0x68bb6ebe -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x75afef72 -> :sswitch_1
        0x7e404292 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/kochava/base/c;->a:[Lcom/kochava/base/c;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/kochava/base/c;->d:[I

    if-eqz v5, :cond_0

    invoke-static {v5, p0}, Lcom/kochava/base/x;->a([II)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, v4, Lcom/kochava/base/c;->e:[I

    if-eqz v5, :cond_2

    invoke-static {v5, p0}, Lcom/kochava/base/x;->a([II)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v4, v4, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0xa

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_2

    const-string v5, "install_referrer_attempts"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x7fffffff

    if-eqz v6, :cond_0

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v5

    invoke-static {v5, v1, v7}, Lcom/kochava/base/x;->a(III)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    const-string v6, "install_referrer_wait"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/kochava/base/x;->b(Ljava/lang/Object;I)I

    move-result v2

    invoke-static {v2, v1, v7}, Lcom/kochava/base/x;->a(III)I

    move-result v2

    :cond_1
    const-string v6, "install_referrer_retry_wait"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3, v4}, Lcom/kochava/base/x;->a(Ljava/lang/Object;D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v6 .. v11}, Lcom/kochava/base/x;->a(DDD)D

    move-result-wide v3

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    :cond_3
    :goto_1
    const/4 p1, 0x4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AttemptWait: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AttemptRetryWait: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const-string v0, "DPT"

    const-string v1, "getInstallRef"

    invoke-static {p1, v0, v1, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v5, v2, v3, v4}, Lcom/kochava/base/c;->a(Landroid/content/Context;IID)Lcom/kochava/base/InstallReferrer;

    move-result-object p0

    invoke-static {p0}, Lcom/kochava/base/c$a;->a(Lcom/kochava/base/InstallReferrer;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;Lorg/json/JSONArray;Lorg/json/JSONArray;ILorg/json/JSONObject;)V
    .locals 18
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kochava/base/d;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONArray;",
            "I",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move/from16 v0, p7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v0, v2, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    sget-object v4, Lcom/kochava/base/c;->a:[Lcom/kochava/base/c;

    array-length v5, v4

    if-ge v14, v5, :cond_3

    aget-object v4, v4, v14

    move-object/from16 v15, p5

    move-object/from16 v12, p6

    invoke-static {v4, v0, v12, v15}, Lcom/kochava/base/c;->a(Lcom/kochava/base/c;ILorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x5

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "DPT"

    const-string v8, "get"

    invoke-static {v5, v7, v8, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v4, Lcom/kochava/base/c;->b:Ljava/lang/String;

    move-object/from16 v11, p3

    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    iget-object v5, v4, Lcom/kochava/base/c;->b:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/kochava/base/x;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p8

    move v8, v3

    move v9, v13

    move-object/from16 v10, p4

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v4 .. v12}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;ZZLjava/util/List;Ljava/lang/Object;Lorg/json/JSONObject;)V

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/kochava/base/d;Lorg/json/JSONObject;ZZLjava/util/List;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kochava/base/d;",
            "Lorg/json/JSONObject;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p2

    move/from16 v10, p4

    monitor-enter p0

    :try_start_0
    iget-object v1, v9, Lcom/kochava/base/c;->b:Ljava/lang/String;

    move-object/from16 v7, p6

    invoke-interface {v7, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p2, v10, v1}, Lcom/kochava/base/c;->a(Lcom/kochava/base/d;ZZ)Ljava/lang/Object;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v11

    move-object/from16 v5, p7

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/kochava/base/c;->a(Landroid/content/Context;Lcom/kochava/base/d;Ljava/lang/Object;Ljava/lang/Object;ZLjava/util/List;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_upd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Z)Z

    move-result v6

    const/4 v1, 0x4

    const-string v2, "DPT"

    const-string v4, "addToPayload"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hasUpdated: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isEqual: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v11}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v1, v2, v4, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, p0

    move-object/from16 v2, p3

    move-object v4, v11

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    if-nez p5, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v9, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_upd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/kochava/base/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "addToData"

    const-string v3, "DPT"

    if-eqz p4, :cond_1

    if-eqz p2, :cond_1

    if-nez p5, :cond_0

    :try_start_0
    invoke-static {p2, p3}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, p3, p2}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-nez p4, :cond_3

    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/kochava/base/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x5

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Skip"

    aput-object p3, p2, v0

    invoke-static {p1, v3, v2, p2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const/4 p2, 0x4

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v0

    invoke-static {p2, v3, v2, p3}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p3, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    instance-of v0, p3, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static a(Lcom/kochava/base/c;ILorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 2
    .param p0    # Lcom/kochava/base/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p3, p0, Lcom/kochava/base/c;->d:[I

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    invoke-static {p3, p1}, Lcom/kochava/base/x;->a([II)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_2
    iget-object p3, p0, Lcom/kochava/base/c;->e:[I

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/kochava/base/c;->e:[I

    invoke-static {p0, p1}, Lcom/kochava/base/x;->a([II)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "landscape"

    return-object p0

    :cond_0
    const-string p0, "portrait"

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Double;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v0

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v0

    const-wide v0, 0x40c3880000000000L    # 10000.0

    mul-double v3, v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, v2, v0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/kochava/base/x;->a(DDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static c()Z
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "test-keys"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "/system/app/Superuser.apk"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "/sbin/su"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "/system/bin/su"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "/system/xbin/su"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "/data/local/bin/su"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "/data/local/su"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "/su/bin/su"

    aput-object v4, v0, v3

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "advertising_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Cannot retrieve Amazon Kindle Fire Advertising ID. Not running on Kindle Fire Device."

    aput-object v2, v0, v1

    const-string v1, "DPT"

    const-string v2, "getFireAdvert"

    invoke-static {p0, v1, v2, v0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "limit_ad_tracking"

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot retrieve Amazon Kindle Fire Device Limit Tracking. Not running on Kindle Fire Device."

    aput-object v2, v1, v0

    const-string v0, "DPT"

    const-string v2, "getFireDevice"

    invoke-static {p0, v0, v2, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g()I
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-static {v0, v1, v2}, Lcom/kochava/base/x;->a(III)I

    move-result v0

    return v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Cannot retrieve Google Advertising ID, Not running on device with Google Play Services or missing required library."

    aput-object v3, v1, v2

    const-string v2, "DPT"

    const-string v3, "getGoogleAdve"

    invoke-static {p0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Cannot retrieve Google Device Limit Tracking, Not running on device with Google Play Services or missing required library."

    aput-object v3, v1, v2

    const-string v2, "DPT"

    const-string v3, "getGoogleDevi"

    invoke-static {p0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.huawei.hms.ads.identifier.AdvertisingIdClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Cannot retrieve Huawei Advertising ID, Not running on device with HMS Core or missing required library."

    aput-object v3, v1, v2

    const-string v2, "DPT"

    const-string v3, "getHuaweiAdve"

    invoke-static {p0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static j()J
    .locals 4
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    invoke-static {}, Lcom/kochava/base/x;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/kochava/base/x;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.huawei.hms.ads.identifier.AdvertisingIdClient"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo"

    new-array v5, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Cannot retrieve Huawei Device Limit Tracking, Not running on device with HMS Core or missing required library."

    aput-object v3, v1, v2

    const-string v2, "DPT"

    const-string v3, "getHuaweiDevi"

    invoke-static {p0, v2, v3, v1}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private static k(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p0}, Lcom/kochava/base/c;->f(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0}, Lcom/kochava/base/c;->h(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0}, Lcom/kochava/base/c;->j(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static m(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_0
    iget p0, v0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static o(Landroid/content/Context;)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method private static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "aid"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.facebook.katana"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_5

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v8, v2, v6

    const-string v9, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_4

    const-string v2, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/String;

    aput-object v0, v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_3

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_7

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    :catch_1
    move-object p0, v1

    :goto_3
    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    return-object v1
.end method

.method private static u(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 11
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.GET_ACCOUNTS"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "DPT"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    new-array p0, v4, [Ljava/lang/Object;

    const-string v0, "Missing Permission: android.permission.GET_ACCOUNTS"

    aput-object v0, p0, v5

    const-string v0, "ids"

    invoke-static {v2, v1, v0, p0}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v6, "android.accounts.AccountManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "android.accounts.Account"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-string v8, "get"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    aput-object v10, v9, v5

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    invoke-virtual {v6, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v8, "getAccounts"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v6, p0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v9, v0, v5}, Lcom/kochava/base/x;->a(Ljava/lang/Object;Lorg/json/JSONArray;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    const-string p0, "getIds"

    invoke-static {v2, v1, p0, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-gtz p0, :cond_3

    return-object v3

    :cond_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0}, Lcom/kochava/base/x;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-static {v1, v0, p0}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-object p0
.end method

.method private static v(Landroid/content/Context;)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/Double;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v4, p0

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string v0, "status"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const-string p0, "unknown"

    return-object p0

    :cond_1
    const-string p0, "full"

    return-object p0

    :cond_2
    const-string p0, "not_charging"

    return-object p0

    :cond_3
    const-string p0, "discharging"

    return-object p0

    :cond_4
    const-string p0, "charging"

    return-object p0

    :cond_5
    :goto_0
    return-object v1
.end method

.method private static y(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "level"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lcom/kochava/base/x;->a(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static z(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Contract;
        pure = true
    .end annotation

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lcom/kochava/base/x;->a(Landroid/content/Context;Ljava/lang/String;)Z

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
    const/4 v2, 0x0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v0, v3, :cond_3

    return-object v2

    :cond_3
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v2

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    instance-of v4, v0, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_8

    check-cast v0, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v0}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result p0

    goto :goto_3

    :cond_8
    instance-of v4, v0, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_9

    check-cast v0, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    goto :goto_3

    :cond_9
    instance-of v4, v0, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_a

    check-cast v0, Landroid/telephony/CellInfoLte;

    invoke-virtual {v0}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result p0

    goto :goto_3

    :cond_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_6

    instance-of v4, v0, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_6

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result p0

    goto :goto_3

    :cond_b
    const/4 p0, -0x1

    :goto_3
    if-ne p0, v3, :cond_c

    return-object v2

    :cond_c
    mul-int/lit8 p0, p0, 0x19

    const/16 v0, 0x64

    invoke-static {p0, v1, v0}, Lcom/kochava/base/x;->a(III)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a(Lcom/kochava/base/d;ZZ)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/kochava/base/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    iget p2, p0, Lcom/kochava/base/c;->c:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/kochava/base/c;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_ts"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/kochava/base/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/kochava/base/x;->c(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/kochava/base/c;->c:I

    add-int/2addr p1, p2

    invoke-static {}, Lcom/kochava/base/x;->c()I

    move-result p2

    if-ge p1, p2, :cond_4

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method
