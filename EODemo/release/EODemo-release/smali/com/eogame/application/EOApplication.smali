.class public Lcom/eogame/application/EOApplication;
.super Landroid/app/Application;
.source "EOApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19
    invoke-static {}, Lcom/eogame/sdk/EOSDK;->getInstance()Lcom/eogame/sdk/EOSDK;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/eogame/sdk/EOSDK;->onConfiggurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    invoke-static {}, Lcom/eogame/sdk/EOSDK;->getInstance()Lcom/eogame/sdk/EOSDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eogame/sdk/EOSDK;->onApplicationCreate(Landroid/app/Application;)V

    return-void
.end method
