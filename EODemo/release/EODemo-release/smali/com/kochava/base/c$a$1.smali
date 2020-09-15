.class Lcom/kochava/base/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic b:Lcom/kochava/base/c$a;


# direct methods
.method constructor <init>(Lcom/kochava/base/c$a;Lcom/android/installreferrer/api/InstallReferrerClient;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iput-object p2, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallReferrerServiceDisconnected()V
    .locals 7

    const-string v0, "onInstallRefe"

    const-string v1, "IRH"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Disconnected"

    aput-object v6, v5, v3

    invoke-static {v2, v1, v0, v5}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "status"

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v6, v6, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v2, v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v2}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v5, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-static {v5, v1, v0, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    invoke-static {v0}, Lcom/kochava/base/c$a;->a(Lcom/kochava/base/c$a;)V

    :goto_0
    iget-object v0, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v0, v0, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onInstallReferrerSetupFinished(I)V
    .locals 9

    const-string v0, "onInstallRefe"

    const-string v1, "IRH"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    :try_start_0
    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "Setup Finished"

    aput-object v7, v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response Code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2, v1, v0, v6}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "status"

    if-nez p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v3}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v6, v6, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v2, v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "referrer"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v6, v6, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v2, v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "install_begin_time"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v6, v6, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    invoke-static {v2, v5, v6}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    const-string v2, "referrer_click_time"

    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v5, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v5, v5, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    :goto_0
    invoke-static {v2, p1, v5}, Lcom/kochava/base/x;->a(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    goto :goto_1

    :cond_0
    if-ne p1, v4, :cond_1

    invoke-static {v4}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v5, v5, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    if-ne p1, v5, :cond_2

    invoke-static {v5}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v5, v5, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    if-ne p1, v5, :cond_3

    invoke-static {v5}, Lcom/kochava/base/c$a;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object v5, v5, Lcom/kochava/base/c$a;->b:Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/kochava/base/c$a$1;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const/4 v2, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v2, v1, v0, v4}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    invoke-static {p1}, Lcom/kochava/base/c$a;->a(Lcom/kochava/base/c$a;)V

    :goto_2
    iget-object p1, p0, Lcom/kochava/base/c$a$1;->b:Lcom/kochava/base/c$a;

    iget-object p1, p1, Lcom/kochava/base/c$a;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
