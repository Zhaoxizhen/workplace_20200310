.class public Lcom/eogame/model/WVJBWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WVJBWebViewClient.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;,
        Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;,
        Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;,
        Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;,
        Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;
    }
.end annotation


# static fields
.field public static ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static APP_ID:Ljava/lang/String; = "gameCode"

.field public static AUTOLOGINSTATE:Ljava/lang/String; = "autoLoginState"

.field public static DEVICE:Ljava/lang/String; = "device"

.field public static ENABLECUSTOMERSERVICE:Ljava/lang/String; = "enableCustomerService"

.field public static FLOATBUTTONSTATE:Ljava/lang/String; = "floatButtonState"

.field public static GAME_NAME:Ljava/lang/String; = "gameName"

.field public static GUID:Ljava/lang/String; = "guid"

.field public static MEMORY:Ljava/lang/String; = "memory"

.field public static OS_VERSION:Ljava/lang/String; = "osVersion"

.field public static PHONENUMBER:Ljava/lang/String; = "phoneNumber"

.field public static SDKVERSION:Ljava/lang/String; = "sdkVersion"

.field public static USERID:Ljava/lang/String; = "userID"

.field public static USERNAME:Ljava/lang/String; = "username"

.field public static VISITORTYPE:Ljava/lang/String; = "visitorType"

.field private static final kCustomProtocolScheme:Ljava/lang/String; = "wvjbscheme"

.field private static final kInterface:Ljava/lang/String; = "WVJBInterface"

.field private static final kQueueHasMessage:Ljava/lang/String; = "__WVJB_QUEUE_MESSAGE__"

.field private static final kTag:Ljava/lang/String; = "WVJB"

.field private static logging:Z = false


# instance fields
.field private messageHandler:Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;

.field private messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;",
            ">;"
        }
    .end annotation
.end field

.field private myInterface:Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;

.field private responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueId:J

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/eogame/model/WVJBWebViewClient;-><init>(Landroid/webkit/WebView;Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;)V
    .locals 3

    .line 69
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->responseCallbacks:Ljava/util/Map;

    .line 52
    iput-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->messageHandlers:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcom/eogame/model/WVJBWebViewClient;->uniqueId:J

    .line 55
    new-instance v1, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;

    invoke-direct {v1, p0, v0}, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;-><init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$1;)V

    iput-object v1, p0, Lcom/eogame/model/WVJBWebViewClient;->myInterface:Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;

    .line 70
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    .line 71
    iget-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->myInterface:Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;

    const-string v1, "WVJBInterface"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->responseCallbacks:Ljava/util/Map;

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->messageHandlers:Ljava/util/Map;

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    .line 79
    iput-object p2, p0, Lcom/eogame/model/WVJBWebViewClient;->messageHandler:Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;

    return-void
.end method

.method private JSONObject2WVJBMessage(Lorg/json/JSONObject;)Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;
    .locals 7

    const-string v0, "responseData"

    const-string v1, "responseId"

    const-string v2, "handlerName"

    const-string v3, "data"

    const-string v4, "callbackId"

    .line 177
    new-instance v5, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;-><init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$1;)V

    .line 179
    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    .line 182
    :cond_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v5, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->data:Ljava/lang/Object;

    .line 185
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    .line 188
    :cond_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    .line 191
    :cond_3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v5, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseData:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v5
.end method

.method static synthetic access$200(Lcom/eogame/model/WVJBWebViewClient;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/eogame/model/WVJBWebViewClient;->processQueueMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/eogame/model/WVJBWebViewClient;->queueMessage(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V

    return-void
.end method

.method private dispatchMessage(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lcom/eogame/model/WVJBWebViewClient;->message2JSONObject(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    .line 142
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, "\\\\\""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v1, "\\\\\'"

    .line 143
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    const-string v1, "\\\\\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\r"

    const-string v1, "\\\\\r"

    .line 144
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u000c"

    const-string v1, "\\\\\u000c"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SEND"

    .line 146
    invoke-virtual {p0, v0, p1}, Lcom/eogame/model/WVJBWebViewClient;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewJavascriptBridge._handleMessageFromObjC(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/eogame/model/WVJBWebViewClient;->executeJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private flushMessageQueue()V
    .locals 2

    .line 202
    new-instance v0, Lcom/eogame/model/WVJBWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/eogame/model/WVJBWebViewClient$1;-><init>(Lcom/eogame/model/WVJBWebViewClient;)V

    const-string v1, "WebViewJavascriptBridge._fetchQueue()"

    invoke-virtual {p0, v1, v0}, Lcom/eogame/model/WVJBWebViewClient;->executeJavascript(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V

    return-void
.end method

.method private message2JSONObject(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)Lorg/json/JSONObject;
    .locals 3

    .line 153
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    :try_start_0
    iget-object v1, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "callbackId"

    .line 156
    iget-object v2, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_0
    iget-object v1, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->data:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, "data"

    .line 159
    iget-object v2, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_1
    iget-object v1, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "handlerName"

    .line 162
    iget-object v2, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_2
    iget-object v1, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "responseId"

    .line 165
    iget-object v2, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_3
    iget-object v1, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseData:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v1, "responseData"

    .line 168
    iget-object p1, p1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v0
.end method

.method private processQueueMessage(Ljava/lang/String;)V
    .locals 5

    .line 214
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 215
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 216
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "RCVD"

    .line 218
    invoke-virtual {p0, v2, v1}, Lcom/eogame/model/WVJBWebViewClient;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-direct {p0, v1}, Lcom/eogame/model/WVJBWebViewClient;->JSONObject2WVJBMessage(Lorg/json/JSONObject;)Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;

    move-result-object v1

    .line 221
    iget-object v2, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/eogame/model/WVJBWebViewClient;->responseCallbacks:Ljava/util/Map;

    iget-object v3, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseId:Ljava/lang/String;

    .line 223
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;

    if-eqz v2, :cond_3

    .line 225
    iget-object v1, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->responseData:Ljava/lang/Object;

    invoke-interface {v2, v1}, Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;->callback(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 229
    iget-object v3, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 230
    iget-object v2, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    .line 231
    new-instance v3, Lcom/eogame/model/WVJBWebViewClient$2;

    invoke-direct {v3, p0, v2}, Lcom/eogame/model/WVJBWebViewClient$2;-><init>(Lcom/eogame/model/WVJBWebViewClient;Ljava/lang/String;)V

    move-object v2, v3

    .line 243
    :cond_1
    iget-object v3, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/eogame/model/WVJBWebViewClient;->messageHandlers:Ljava/util/Map;

    iget-object v4, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;

    goto :goto_1

    .line 246
    :cond_2
    iget-object v3, p0, Lcom/eogame/model/WVJBWebViewClient;->messageHandler:Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;

    :goto_1
    if-eqz v3, :cond_3

    .line 249
    iget-object v1, v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->data:Ljava/lang/Object;

    invoke-interface {v3, v1, v2}, Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;->request(Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    return-void
.end method

.method private queueMessage(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/eogame/model/WVJBWebViewClient;->dispatchMessage(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V

    :goto_0
    return-void
.end method

.method private sendData(Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 115
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;-><init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$1;)V

    if-eqz p1, :cond_2

    .line 119
    iput-object p1, v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->data:Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "objc_cb_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/eogame/model/WVJBWebViewClient;->uniqueId:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/eogame/model/WVJBWebViewClient;->uniqueId:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/eogame/model/WVJBWebViewClient;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iput-object p1, v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->callbackId:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    .line 127
    iput-object p3, v0, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;->handlerName:Ljava/lang/String;

    .line 129
    :cond_4
    invoke-direct {p0, v0}, Lcom/eogame/model/WVJBWebViewClient;->queueMessage(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V

    return-void
.end method


# virtual methods
.method public callHandler(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, p1, v0, v0}, Lcom/eogame/model/WVJBWebViewClient;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;)V

    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lcom/eogame/model/WVJBWebViewClient;->callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;)V

    return-void
.end method

.method public callHandler(Ljava/lang/String;Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;)V
    .locals 0

    .line 104
    invoke-direct {p0, p2, p3, p1}, Lcom/eogame/model/WVJBWebViewClient;->sendData(Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;Ljava/lang/String;)V

    return-void
.end method

.method public enableLogging()V
    .locals 1

    const/4 v0, 0x1

    .line 83
    sput-boolean v0, Lcom/eogame/model/WVJBWebViewClient;->logging:Z

    return-void
.end method

.method public executeJavascript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, p1, v0}, Lcom/eogame/model/WVJBWebViewClient;->executeJavascript(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V

    return-void
.end method

.method public executeJavascript(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V
    .locals 6

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/eogame/model/WVJBWebViewClient$3;

    invoke-direct {v1, p0, p2}, Lcom/eogame/model/WVJBWebViewClient$3;-><init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 288
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->myInterface:Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/eogame/model/WVJBWebViewClient;->uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/eogame/model/WVJBWebViewClient;->uniqueId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;->addCallback(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V

    .line 289
    iget-object p2, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:window.WVJBInterface.onResultForScript("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/eogame/model/WVJBWebViewClient;->uniqueId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object p2, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 259
    sget-boolean v0, Lcom/eogame/model/WVJBWebViewClient;->logging:Z

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ": "

    const-string v2, "WVJB"

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [...]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "WebViewJavascriptBridge.js.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 301
    new-array v1, v1, [B

    .line 302
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 303
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 304
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 305
    invoke-virtual {p0, v0}, Lcom/eogame/model/WVJBWebViewClient;->executeJavascript(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 311
    :goto_1
    iget-object v1, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;

    invoke-direct {p0, v1}, Lcom/eogame/model/WVJBWebViewClient;->dispatchMessage(Lcom/eogame/model/WVJBWebViewClient$WVJBMessage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->startupMessageQueue:Ljava/util/ArrayList;

    .line 316
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public registerHandler(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$WVJBHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/eogame/model/WVJBWebViewClient;->send(Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;)V

    return-void
.end method

.method public send(Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/eogame/model/WVJBWebViewClient;->sendData(Ljava/lang/Object;Lcom/eogame/model/WVJBWebViewClient$WVJBResponseCallback;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "wvjbscheme"

    .line 321
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "__WVJB_QUEUE_MESSAGE__"

    .line 322
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/eogame/model/WVJBWebViewClient;->flushMessageQueue()V

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 327
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
