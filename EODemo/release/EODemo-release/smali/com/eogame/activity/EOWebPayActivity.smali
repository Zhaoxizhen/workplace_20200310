.class public Lcom/eogame/activity/EOWebPayActivity;
.super Lcom/eogame/base/BasePage;
.source "EOWebPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/activity/EOWebPayActivity$GetItemTask;,
        Lcom/eogame/activity/EOWebPayActivity$Item;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EOWebPayActivity"

.field public static instance:Lcom/eogame/activity/EOWebPayActivity;


# instance fields
.field private areaArray:[Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private currencyCodeArray:[Ljava/lang/String;

.field private gc:Ljava/lang/String;

.field private getItemTask:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

.field private mAreaSp:Landroid/widget/Spinner;

.field private mChannelSp:Landroid/widget/Spinner;

.field private mConfirmBtn:Landroid/widget/Button;

.field private mItemSp:Landroid/widget/Spinner;

.field private mRoleLevelTv:Landroid/widget/TextView;

.field private mRoleNameTv:Landroid/widget/TextView;

.field private mServerNameTv:Landroid/widget/TextView;

.field private mUidTv:Landroid/widget/TextView;

.field private mUsernameTv:Landroid/widget/TextView;

.field private payChannel:Ljava/lang/String;

.field private payInfo:Lcom/eogame/model/EOPayInfo;

.field private pn:Ljava/lang/String;

.field private roleInfo:Lcom/eogame/model/EORoleInfo;

.field private sc:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/eogame/base/BasePage;-><init>()V

    const-string v0, ""

    .line 53
    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->uid:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->pn:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->gc:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->sc:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/eogame/constants/Data;->URL_WEB_PAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->currencyCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity;->currencyCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/eogame/activity/EOWebPayActivity;)[Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->currencyCodeArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->mItemSp:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/eogame/activity/EOWebPayActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/eogame/activity/EOWebPayActivity;->setBtnEnable()V

    return-void
.end method

.method static synthetic access$1200(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Button;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->mChannelSp:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/activity/EOWebPayActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/eogame/activity/EOWebPayActivity;->setBtnUneanble()V

    return-void
.end method

.method static synthetic access$400(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->payChannel:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity;->payChannel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/activity/EOWebPayActivity$GetItemTask;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->getItemTask:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    return-object p0
.end method

.method static synthetic access$502(Lcom/eogame/activity/EOWebPayActivity;Lcom/eogame/activity/EOWebPayActivity$GetItemTask;)Lcom/eogame/activity/EOWebPayActivity$GetItemTask;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity;->getItemTask:Lcom/eogame/activity/EOWebPayActivity$GetItemTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EORoleInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/eogame/activity/EOWebPayActivity;)Lcom/eogame/model/EOPayInfo;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/eogame/activity/EOWebPayActivity;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/eogame/activity/EOWebPayActivity;->uid:Ljava/lang/String;

    return-object p0
.end method

.method private initInfo()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->userName:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$array;->eo_pay_area:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->areaArray:[Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/eo/games/sdk/R$array;->eo_pay_currencyCode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->currencyCodeArray:[Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->gc:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/eogame/constants/EOCommon;->packgeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->pn:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "roleInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EORoleInfo;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    .line 180
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roleInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eogameinfo"

    invoke-virtual {v0, v2, v1}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "payInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eogame/model/EOPayInfo;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->payInfo:Lcom/eogame/model/EOPayInfo;

    .line 182
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v0}, Lcom/eogame/model/EORoleInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->sc:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->uid:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mUsernameTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u60a8\u597d\uff5e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mUidTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mServerNameTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u670d\u52a1\u5668:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mRoleNameTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89d2\u8272\u6635\u79f0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mRoleLevelTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity;->roleInfo:Lcom/eogame/model/EORoleInfo;

    invoke-virtual {v2}, Lcom/eogame/model/EORoleInfo;->getRoleLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initSpinnerData()V
    .locals 4

    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    sget v2, Lcom/eo/games/sdk/R$layout;->eo_pay_list_item:I

    iget-object v3, p0, Lcom/eogame/activity/EOWebPayActivity;->areaArray:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/eogame/activity/EOWebPayActivity;->mAreaSp:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mAreaSp:Landroid/widget/Spinner;

    new-instance v1, Lcom/eogame/activity/EOWebPayActivity$1;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOWebPayActivity$1;-><init>(Lcom/eogame/activity/EOWebPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 132
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mChannelSp:Landroid/widget/Spinner;

    new-instance v1, Lcom/eogame/activity/EOWebPayActivity$2;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOWebPayActivity$2;-><init>(Lcom/eogame/activity/EOWebPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private setBtnEnable()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 418
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    const-string v1, "\u78ba\u8a8d\u5145\u503c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBtnUneanble()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 413
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    const-string v1, "\u8acb\u5148\u9078\u64c7\u5145\u503c\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    return-void
.end method

.method public getItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 236
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "gameCode"

    .line 237
    sget-object v3, Lcom/eogame/constants/EOCommon;->gameCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "payChannel"

    .line 238
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "currencyCode"

    .line 239
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "packageName"

    .line 240
    invoke-virtual {p0}, Lcom/eogame/activity/EOWebPayActivity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Lcom/eogame/http/SyncHttp;

    invoke-direct {p2}, Lcom/eogame/http/SyncHttp;-><init>()V

    sget-object v2, Lcom/eogame/constants/Data;->URL_GET_PAYITEMS:Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lcom/eogame/http/SyncHttp;->httpPostByConnect(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p2

    const-string v1, "payItemsJsonObject"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 243
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "payItems"

    if-nez p2, :cond_0

    .line 245
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object p1

    const-string p2, "\u83b7\u53d6\u54c1\u9879\u5931\u8d25"

    invoke-virtual {p1, v1, p2}, Lcom/eogame/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/eogame/activity/EOWebPayActivity;->setBtnUneanble()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method protected initData()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/eogame/activity/EOWebPayActivity;->initInfo()V

    .line 79
    invoke-direct {p0}, Lcom/eogame/activity/EOWebPayActivity;->initSpinnerData()V

    return-void
.end method

.method protected initListener()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    new-instance v1, Lcom/eogame/activity/EOWebPayActivity$3;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOWebPayActivity$3;-><init>(Lcom/eogame/activity/EOWebPayActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .locals 1

    .line 213
    sget v0, Lcom/eo/games/sdk/R$layout;->eo_layout_webpay:I

    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->setContentView(I)V

    const-string v0, "eo_webpay_username"

    .line 214
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mUsernameTv:Landroid/widget/TextView;

    const-string v0, "eo_webpay_uid"

    .line 215
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mUidTv:Landroid/widget/TextView;

    const-string v0, "eo_webpay_servername"

    .line 216
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mServerNameTv:Landroid/widget/TextView;

    const-string v0, "eo_webpay_rolename"

    .line 217
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mRoleNameTv:Landroid/widget/TextView;

    const-string v0, "eo_webpay_rolelevel"

    .line 218
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mRoleLevelTv:Landroid/widget/TextView;

    const-string v0, "eo_webpay_channel"

    .line 219
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mChannelSp:Landroid/widget/Spinner;

    const-string v0, "eo_webpay_area"

    .line 220
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mAreaSp:Landroid/widget/Spinner;

    const-string v0, "eo_webpay_item"

    .line 221
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mItemSp:Landroid/widget/Spinner;

    const-string v0, "eo_webpay_confirm"

    .line 222
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOWebPayActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOWebPayActivity;->mConfirmBtn:Landroid/widget/Button;

    return-void
.end method

.method protected onClick(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
