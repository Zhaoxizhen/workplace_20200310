.class public interface abstract Lcom/eogame/web/EOWebApi;
.super Ljava/lang/Object;
.source "EOWebApi.java"


# virtual methods
.method public abstract bindForEO(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract bindForFacebook(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract checkUpdate()Lcom/eogame/model/HttpResult;
.end method

.method public abstract createPayOrder(Ljava/lang/String;Lcom/eogame/model/EORoleInfo;Lcom/eogame/model/EOPayInfo;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract facebookLogin(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract getNotice()Ljava/lang/String;
.end method

.method public abstract getPayChannels(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract getPayItems(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract getUserIdsForFacebookIds(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract guestLogin(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract init()Lcom/eogame/model/HttpResult;
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract loginToken(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract regist(Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract sendLog(ILjava/util/Map;)Lcom/eogame/model/HttpResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/eogame/model/HttpResult;"
        }
    .end annotation
.end method

.method public abstract sendResetPwdEmail(Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method

.method public abstract verifyPayOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/eogame/model/HttpResult;
.end method
