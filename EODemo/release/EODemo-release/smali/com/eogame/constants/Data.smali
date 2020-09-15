.class public Lcom/eogame/constants/Data;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static final URL_BASE_PASSPORT:Ljava/lang/String;

.field public static URL_BASE_PAY:Ljava/lang/String; = null

.field public static final URL_BIND_FACEBOOK:Ljava/lang/String;

.field public static final URL_BIND_SANDCLASS:Ljava/lang/String;

.field public static URL_CODAPAY_PAYSTART:Ljava/lang/String; = null

.field public static URL_CREATE_ORDER:Ljava/lang/String; = null

.field public static final URL_FORGET_PWD:Ljava/lang/String;

.field public static final URL_GET_FRIENDS_IDS:Ljava/lang/String;

.field public static final URL_GET_NOTICE:Ljava/lang/String; = "http://192.168.0.107:8080/Login.sgplayer.com/notice/getNoticeMapping.do"

.field public static URL_GET_PAYITEMS:Ljava/lang/String; = null

.field public static final URL_GET_SERVER_INFO:Ljava/lang/String;

.field public static final URL_GET_UPDATE_INFO:Ljava/lang/String;

.field public static final URL_INIT:Ljava/lang/String;

.field public static final URL_LOGIN_FOREIGN:Ljava/lang/String;

.field public static final URL_LOGIN_NORMAL:Ljava/lang/String;

.field public static URL_LOGIN_QA:Ljava/lang/String; = null

.field public static final URL_LOGIN_TOKEN:Ljava/lang/String;

.field public static URL_LOGIN_URL_NORMAL:Ljava/lang/String; = null

.field public static final URL_LOGIN_VISITOR:Ljava/lang/String;

.field public static URL_MYCARD_PAYSTART:Ljava/lang/String; = null

.field public static URL_PAY_NORMAL:Ljava/lang/String; = null

.field public static URL_PAY_QA:Ljava/lang/String; = null

.field public static URL_QUERY_PAYWAY:Ljava/lang/String; = null

.field public static URL_RAZER_PAYSTART:Ljava/lang/String; = null

.field public static final URL_REGISTER:Ljava/lang/String;

.field public static final URL_SEND_LOG:Ljava/lang/String;

.field public static URL_VERIFY_ORDER:Ljava/lang/String; = null

.field public static URL_WEB_PAY:Ljava/lang/String; = null

.field public static URL_XSOLLA_PAYSTART:Ljava/lang/String; = null

.field public static final eo_debug_tips:Ljava/lang/String; = "\u5f53\u524d\u4e3a\u6d4b\u8bd5\u6a21\u5f0f!"

.field public static final eo_key_google_repatedata:Ljava/lang/String; = "repate_data"

.field public static final eo_key_google_signdata:Ljava/lang/String; = "sign_data"

.field public static final eo_key_order_id:Ljava/lang/String; = "order_id"

.field public static final eo_pay_channel_google:Ljava/lang/String; = "google"

.field public static final eo_pay_channel_webpay:Ljava/lang/String; = "webpay"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    sget-object v0, Lcom/eogame/constants/CommonData;->URL_LOGIN_QA:Ljava/lang/String;

    sput-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_QA:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/eogame/constants/CommonData;->URL_LOGIN_NORMAL:Ljava/lang/String;

    sput-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_URL_NORMAL:Ljava/lang/String;

    .line 17
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_QA:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_URL_NORMAL:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/eogame/constants/CommonData;->URL_INIT_QA:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/eogame/constants/CommonData;->URL_INIT_NORMAL:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/checkUpdate.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_GET_UPDATE_INFO:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/registerSgUser.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_REGISTER:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/gameServerInfo.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_GET_SERVER_INFO:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login/loginSg.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_NORMAL:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login/loginForeign.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_FOREIGN:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login/bindSgAccount.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_BIND_SANDCLASS:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login/bindFacebookAccount.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_BIND_FACEBOOK:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login/loginGuest.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_VISITOR:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_BASE_PASSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "login/loginToken.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_LOGIN_TOKEN:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/forgetPasswordUrl.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_FORGET_PWD:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/gameLog.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_SEND_LOG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/queryUidByFbid.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_GET_FRIENDS_IDS:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/eogame/constants/CommonData;->URL_PAY_QA:Ljava/lang/String;

    sput-object v0, Lcom/eogame/constants/Data;->URL_PAY_QA:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/eogame/constants/CommonData;->URL_PAY_NORMAL:Ljava/lang/String;

    sput-object v0, Lcom/eogame/constants/Data;->URL_PAY_NORMAL:Ljava/lang/String;

    .line 64
    sget-boolean v0, Lcom/eogame/constants/EOCommon;->debug:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/eogame/constants/Data;->URL_PAY_QA:Ljava/lang/String;

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/eogame/constants/Data;->URL_PAY_NORMAL:Ljava/lang/String;

    :goto_2
    sput-object v0, Lcom/eogame/constants/Data;->URL_BASE_PAY:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/Data;->URL_INIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "apps/queryGamePayChannel.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_QUERY_PAYWAY:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/CommonData;->URL_PAY_HTTP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "google/buildGooglePayOrder.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_CREATE_ORDER:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/eogame/constants/CommonData;->URL_PAY_HTTP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "google/googlePayBack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eogame/constants/Data;->URL_VERIFY_ORDER:Ljava/lang/String;

    const-string v0, "https://gm.eohfun.com/web/getPayItems.do"

    .line 76
    sput-object v0, Lcom/eogame/constants/Data;->URL_GET_PAYITEMS:Ljava/lang/String;

    const-string v0, "https://pay.eohfun.com/pay/mycardTradeStartTw.do"

    .line 79
    sput-object v0, Lcom/eogame/constants/Data;->URL_MYCARD_PAYSTART:Ljava/lang/String;

    const-string v0, "https://pay.eohfun.com/pay/razerPaymentRequest.do"

    .line 82
    sput-object v0, Lcom/eogame/constants/Data;->URL_RAZER_PAYSTART:Ljava/lang/String;

    const-string v0, "https://pay.eohfun.com/pay/getXsoolaPayUrl.do"

    .line 85
    sput-object v0, Lcom/eogame/constants/Data;->URL_XSOLLA_PAYSTART:Ljava/lang/String;

    const-string v0, "https://pay.eohfun.com/pay/codaInit.do"

    .line 88
    sput-object v0, Lcom/eogame/constants/Data;->URL_CODAPAY_PAYSTART:Ljava/lang/String;

    const-string v0, "https://gm.eohfun.com/web/getBackstageLoginPage.do"

    .line 91
    sput-object v0, Lcom/eogame/constants/Data;->URL_WEB_PAY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
