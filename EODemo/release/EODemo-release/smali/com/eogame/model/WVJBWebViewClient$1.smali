.class Lcom/eogame/model/WVJBWebViewClient$1;
.super Ljava/lang/Object;
.source "WVJBWebViewClient.java"

# interfaces
.implements Lcom/eogame/model/WVJBWebViewClient$JavascriptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/model/WVJBWebViewClient;->flushMessageQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/model/WVJBWebViewClient;


# direct methods
.method constructor <init>(Lcom/eogame/model/WVJBWebViewClient;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/eogame/model/WVJBWebViewClient$1;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/eogame/model/WVJBWebViewClient$1;->this$0:Lcom/eogame/model/WVJBWebViewClient;

    invoke-static {v0, p1}, Lcom/eogame/model/WVJBWebViewClient;->access$200(Lcom/eogame/model/WVJBWebViewClient;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
