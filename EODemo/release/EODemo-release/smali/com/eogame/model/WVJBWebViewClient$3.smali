.class Lcom/eogame/model/WVJBWebViewClient$3;
.super Ljava/lang/Object;
.source "WVJBWebViewClient.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/model/WVJBWebViewClient;->executeJavascript(Ljava/lang/String;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/model/WVJBWebViewClient;

.field final synthetic val$callback:Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;


# direct methods
.method constructor <init>(Lcom/eogame/model/WVJBWebViewClient;Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$3;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    iput-object p2, p0, Lcom/eogame/model/WVJBWebViewClient$3;->val$callback:Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/model/WVJBWebViewClient$3;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient$3;->val$callback:Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "\""

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient$3;->val$callback:Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;

    invoke-interface {v0, p1}, Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;->onReceiveValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
