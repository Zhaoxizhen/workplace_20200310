.class public Lcom/eogame/other/mdwsw/PageDemo;
.super Landroid/app/Activity;
.source "PageDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private btnChageLanguage:Landroid/widget/Button;

.field private btnExit:Landroid/widget/Button;

.field private btnGetUserinfo:Landroid/widget/Button;

.field private btnInit:Landroid/widget/Button;

.field private btnLogin:Landroid/widget/Button;

.field private btnLogout:Landroid/widget/Button;

.field private btnOpenUser:Landroid/widget/Button;

.field private btnPay:Landroid/widget/Button;

.field private btnShare:Landroid/widget/Button;

.field private btnSubmitCreateRole:Landroid/widget/Button;

.field private btnSubmitEntraGame:Landroid/widget/Button;

.field private btnUpdate:Landroid/widget/Button;

.field private downloadReceiver:Lcom/eogame/receiver/DownloadReceiver;

.field private exitTime:J

.field private gameCode:Ljava/lang/String;

.field private gameKey:Ljava/lang/String;

.field private gameLanguage:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private intentFilter:Landroid/content/IntentFilter;

.field private isDebug:Z

.field private mSdk:Lcom/eogame/sdk/EOSDK;

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "SGSDK"

    .line 43
    iput-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->handler:Landroid/os/Handler;

    const-string v0, "LUNA"

    .line 73
    iput-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameCode:Ljava/lang/String;

    const-string v0, "3RiqOzwAspzg"

    .line 74
    iput-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->isDebug:Z

    const-string v0, "LUNAM"

    .line 76
    iput-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameName:Ljava/lang/String;

    const-string v0, "en-us"

    .line 77
    iput-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameLanguage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 375
    iput-wide v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->exitTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/other/mdwsw/PageDemo;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/eogame/other/mdwsw/PageDemo;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 3

    .line 124
    new-instance v0, Lcom/eogame/constants/EOConfig;

    invoke-direct {v0}, Lcom/eogame/constants/EOConfig;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/constants/EOConfig;->setGameCode(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/constants/EOConfig;->setGameKey(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/constants/EOConfig;->setGameName(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->gameLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eogame/constants/EOConfig;->setGameLanguage(Ljava/lang/String;)V

    .line 129
    iget-boolean v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->isDebug:Z

    invoke-virtual {v0, v1}, Lcom/eogame/constants/EOConfig;->setDebug(Z)V

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Lcom/eogame/constants/EOConfig;->setScreenOrientation(I)V

    .line 135
    iget-object v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    new-instance v2, Lcom/eogame/other/mdwsw/PageDemo$1;

    invoke-direct {v2, p0}, Lcom/eogame/other/mdwsw/PageDemo$1;-><init>(Lcom/eogame/other/mdwsw/PageDemo;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/eogame/sdk/EOSDK;->init(Landroid/app/Activity;Lcom/eogame/constants/EOConfig;Lcom/eogame/listener/InitCallback;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/sdk/EOSDK;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testUserName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "service_01"

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 163
    :pswitch_0
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {p1, p0}, Lcom/eogame/sdk/EOSDK;->update(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 276
    :pswitch_1
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    new-instance v0, Lcom/eogame/other/mdwsw/PageDemo$4;

    invoke-direct {v0, p0}, Lcom/eogame/other/mdwsw/PageDemo$4;-><init>(Lcom/eogame/other/mdwsw/PageDemo;)V

    invoke-virtual {p1, p0, v0}, Lcom/eogame/sdk/EOSDK;->shareFacebook(Landroid/app/Activity;Lcom/eogame/listener/FacebookShareApi;)V

    goto/16 :goto_0

    .line 212
    :pswitch_2
    new-instance p1, Lcom/eogame/model/EORoleInfo;

    invoke-direct {p1}, Lcom/eogame/model/EORoleInfo;-><init>()V

    const-string v0, "51"

    .line 213
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setRoleId(Ljava/lang/String;)V

    const/16 v0, 0x96

    .line 214
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setRoleLevel(I)V

    const-string v0, "\u5929\u4e0b\u65e0\u654c"

    .line 215
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setRoleName(Ljava/lang/String;)V

    const-string v0, "2"

    .line 216
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setServerId(Ljava/lang/String;)V

    const-string v0, "\u65c5\u884c\u7684\u5f00\u59cb"

    .line 217
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setServerName(Ljava/lang/String;)V

    .line 219
    new-instance v0, Lcom/eogame/model/EOPayInfo;

    invoke-direct {v0}, Lcom/eogame/model/EOPayInfo;-><init>()V

    const-string v1, "\u5145\u503c\u6d4b\u8bd5"

    .line 220
    invoke-virtual {v0, v1}, Lcom/eogame/model/EOPayInfo;->setProductName(Ljava/lang/String;)V

    const-string v1, "luna.coda.test"

    .line 221
    invoke-virtual {v0, v1}, Lcom/eogame/model/EOPayInfo;->setProductId(Ljava/lang/String;)V

    const-string v1, ""

    .line 222
    invoke-virtual {v0, v1}, Lcom/eogame/model/EOPayInfo;->setExtInfo(Ljava/lang/String;)V

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 223
    invoke-virtual {v0, v2}, Lcom/eogame/model/EOPayInfo;->setPrice(F)V

    .line 224
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eogame/model/EOPayInfo;->setCurrencyCode(Ljava/lang/String;)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/eogame/model/EOPayInfo;->setCpOrderId(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/eogame/utils/Logger;->getInstance()Lcom/eogame/utils/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "payInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eopay"

    invoke-virtual {v1, v3, v2}, Lcom/eogame/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    new-instance v2, Lcom/eogame/other/mdwsw/PageDemo$3;

    invoke-direct {v2, p0}, Lcom/eogame/other/mdwsw/PageDemo$3;-><init>(Lcom/eogame/other/mdwsw/PageDemo;)V

    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/eogame/sdk/EOSDK;->pay(Landroid/content/Context;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;Lcom/eogame/listener/PayCallback;)V

    goto/16 :goto_0

    .line 310
    :pswitch_3
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {p1, p0}, Lcom/eogame/sdk/EOSDK;->openUserCenter(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 338
    :pswitch_4
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {p1, p0}, Lcom/eogame/sdk/EOSDK;->logout(Landroid/content/Context;)V

    goto :goto_0

    .line 167
    :pswitch_5
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    new-instance v0, Lcom/eogame/other/mdwsw/PageDemo$2;

    invoke-direct {v0, p0}, Lcom/eogame/other/mdwsw/PageDemo$2;-><init>(Lcom/eogame/other/mdwsw/PageDemo;)V

    invoke-virtual {p1, p0, v0}, Lcom/eogame/sdk/EOSDK;->login(Landroid/content/Context;Lcom/eogame/listener/LoginCallback;)V

    goto :goto_0

    .line 341
    :pswitch_6
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    const-string v0, "zh-cn"

    invoke-virtual {p1, p0, v0}, Lcom/eogame/sdk/EOSDK;->setGameLanguage(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_7
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->init()V

    goto :goto_0

    .line 313
    :pswitch_8
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    new-instance v0, Lcom/eogame/other/mdwsw/PageDemo$5;

    invoke-direct {v0, p0}, Lcom/eogame/other/mdwsw/PageDemo$5;-><init>(Lcom/eogame/other/mdwsw/PageDemo;)V

    invoke-virtual {p1, p0, v0}, Lcom/eogame/sdk/EOSDK;->getFacebookFriends(Landroid/app/Activity;Lcom/eogame/listener/FacebookFriendsApi;)V

    goto :goto_0

    .line 250
    :pswitch_9
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->finish()V

    goto :goto_0

    :pswitch_a
    const-string p1, "\u53d1\u9001\u8fdb\u5165\u6e38\u620f\u65e5\u5fd7"

    .line 265
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 266
    new-instance p1, Lcom/eogame/model/EORoleInfo;

    invoke-direct {p1}, Lcom/eogame/model/EORoleInfo;-><init>()V

    const-string v1, "test0002"

    .line 267
    invoke-virtual {p1, v1}, Lcom/eogame/model/EORoleInfo;->setRoleId(Ljava/lang/String;)V

    const/16 v1, 0xb

    .line 268
    invoke-virtual {p1, v1}, Lcom/eogame/model/EORoleInfo;->setRoleLevel(I)V

    const-string v1, "\u89d2\u8272\u540d2"

    .line 269
    invoke-virtual {p1, v1}, Lcom/eogame/model/EORoleInfo;->setRoleName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setServerId(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {v0, p1}, Lcom/eogame/sdk/EOSDK;->entryGame(Lcom/eogame/model/EORoleInfo;)V

    goto :goto_0

    :pswitch_b
    const-string p1, "\u53d1\u9001\u521b\u89d2\u65e5\u5fd7"

    .line 254
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 255
    new-instance p1, Lcom/eogame/model/EORoleInfo;

    invoke-direct {p1}, Lcom/eogame/model/EORoleInfo;-><init>()V

    const-string v2, "test0001"

    .line 256
    invoke-virtual {p1, v2}, Lcom/eogame/model/EORoleInfo;->setRoleId(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1, v1}, Lcom/eogame/model/EORoleInfo;->setRoleLevel(I)V

    const-string v1, "\u89d2\u8272\u540d"

    .line 258
    invoke-virtual {p1, v1}, Lcom/eogame/model/EORoleInfo;->setRoleName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1, v0}, Lcom/eogame/model/EORoleInfo;->setServerId(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {v0, p1}, Lcom/eogame/sdk/EOSDK;->createRoleGame(Lcom/eogame/model/EORoleInfo;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800f3
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->requestWindowFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0b001c

    .line 85
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->setContentView(I)V

    .line 86
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->random:Ljava/util/Random;

    const p1, 0x7f0800f7

    .line 87
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnInit:Landroid/widget/Button;

    const p1, 0x7f0800fe

    .line 88
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnUpdate:Landroid/widget/Button;

    const p1, 0x7f0800f9

    .line 89
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnLogin:Landroid/widget/Button;

    const p1, 0x7f0800fc

    .line 90
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnPay:Landroid/widget/Button;

    const p1, 0x7f0800f5

    .line 91
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnExit:Landroid/widget/Button;

    const p1, 0x7f0800fb

    .line 92
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnOpenUser:Landroid/widget/Button;

    const p1, 0x7f0800f4

    .line 93
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnSubmitEntraGame:Landroid/widget/Button;

    const p1, 0x7f0800f3

    .line 94
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnSubmitCreateRole:Landroid/widget/Button;

    const p1, 0x7f0800fd

    .line 95
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnShare:Landroid/widget/Button;

    const p1, 0x7f0800f6

    .line 96
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnGetUserinfo:Landroid/widget/Button;

    const p1, 0x7f0800fa

    .line 97
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnLogout:Landroid/widget/Button;

    const p1, 0x7f0800f8

    .line 98
    invoke-virtual {p0, p1}, Lcom/eogame/other/mdwsw/PageDemo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnChageLanguage:Landroid/widget/Button;

    .line 100
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnInit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnUpdate:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnLogin:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnPay:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnLogout:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnExit:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnOpenUser:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnSubmitEntraGame:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnSubmitCreateRole:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnShare:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnGetUserinfo:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->btnChageLanguage:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-static {}, Lcom/eogame/sdk/EOSDK;->getInstance()Lcom/eogame/sdk/EOSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    .line 115
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->intentFilter:Landroid/content/IntentFilter;

    .line 116
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/eogame/receiver/DownloadReceiver;

    invoke-direct {p1}, Lcom/eogame/receiver/DownloadReceiver;-><init>()V

    iput-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->downloadReceiver:Lcom/eogame/receiver/DownloadReceiver;

    .line 118
    iget-object p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->downloadReceiver:Lcom/eogame/receiver/DownloadReceiver;

    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Lcom/eogame/other/mdwsw/PageDemo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->init()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {v0, p0}, Lcom/eogame/sdk/EOSDK;->destroy(Landroid/content/Context;)V

    .line 352
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->downloadReceiver:Lcom/eogame/receiver/DownloadReceiver;

    invoke-virtual {p0, v0}, Lcom/eogame/other/mdwsw/PageDemo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 379
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->exitTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u6e38\u620f"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eogame/other/mdwsw/PageDemo;->exitTime:J

    goto :goto_0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/eogame/other/mdwsw/PageDemo;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 389
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/eogame/other/mdwsw/PageDemo;->mSdk:Lcom/eogame/sdk/EOSDK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/sdk/EOSDK;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method
