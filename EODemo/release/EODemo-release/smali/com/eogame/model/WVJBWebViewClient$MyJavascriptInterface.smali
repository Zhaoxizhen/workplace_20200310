.class Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;
.super Ljava/lang/Object;
.source "WVJBWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/model/WVJBWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyJavascriptInterface"
.end annotation


# instance fields
.field map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eogame/model/WVJBWebViewClient;


# direct methods
.method private constructor <init>(Lcom/eogame/model/WVJBWebViewClient;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;->map:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;-><init>(Lcom/eogame/model/WVJBWebViewClient;)V

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResultForScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResultForScript: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVJB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient$MyJavascriptInterface;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;

    if-eqz p1, :cond_0

    .line 350
    invoke-interface {p1, p2}, Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;->onReceiveValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
