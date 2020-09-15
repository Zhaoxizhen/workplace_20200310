.class Lcom/appsflyer/AFKeystoreWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private context:Landroid/content/Context;

.field private keystore:Ljava/security/KeyStore;

.field private final lock:Ljava/lang/Object;

.field private reInstallCounter:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->context:Landroid/content/Context;

    const-string p1, ""

    .line 48
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    .line 50
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->initKeyStore()V

    return-void
.end method

.method private createKey(Ljava/lang/String;)V
    .locals 6

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating a new key with alias: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 123
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x5

    .line 125
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x0

    .line 127
    iget-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :try_start_1
    iget-object v4, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v4, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_0

    .line 130
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v2, p1, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljavax/security/auth/x500/X500Principal;

    const-string v4, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {p1, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 132
    invoke-virtual {p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    goto :goto_0

    .line 136
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 137
    invoke-static {}, Lcom/appsflyer/a;->isOPPODevice()Z

    move-result v4

    if-nez v4, :cond_1

    .line 139
    new-instance v2, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v4, p0, Lcom/appsflyer/AFKeystoreWrapper;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v2, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    const-string v4, "CN=AndroidSDK, O=AppsFlyer"

    invoke-direct {v2, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 142
    invoke-virtual {p1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 144
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v2

    :cond_1
    :goto_0
    const-string p1, "RSA"

    const-string v0, "AndroidKeyStore"

    .line 147
    invoke-static {p1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    .line 148
    invoke-virtual {p1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 149
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    goto :goto_1

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alias already exists: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 153
    :goto_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " occurred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private deleteKey(Ljava/lang/String;)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deleting key with alias: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 164
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " occurred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private generateAliasString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.appsflyer,"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "KSAppsFlyerId="

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KSAppsFlyerRICounter="

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 181
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initKeyStore()V
    .locals 2

    const-string v0, "Initialising KeyStore.."

    .line 54
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "AndroidKeyStore"

    .line 56
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    .line 57
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    const-string v1, "Couldn\'t load keystore instance of type: AndroidKeyStore"

    .line 59
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private isAppsFlyerPrefix(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.appsflyer"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method createFirstInstallData(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    .line 70
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->generateAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appsflyer/AFKeystoreWrapper;->createKey(Ljava/lang/String;)V

    return-void
.end method

.method getReInstallCounter()I
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getUid()Ljava/lang/String;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method incrementReInstallCounter()V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->generateAliasString()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I

    .line 80
    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->deleteKey(Ljava/lang/String;)V

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0}, Lcom/appsflyer/AFKeystoreWrapper;->generateAliasString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/AFKeystoreWrapper;->createKey(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 81
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method loadData()Z
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/appsflyer/AFKeystoreWrapper;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->keystore:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 95
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 97
    invoke-direct {p0, v4}, Lcom/appsflyer/AFKeystoreWrapper;->isAppsFlyerPrefix(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v1, ","

    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 99
    array-length v5, v1

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found a matching AF key with alias:\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 103
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 104
    array-length v5, v3

    if-ne v5, v4, :cond_2

    array-length v5, v1

    if-ne v5, v4, :cond_2

    .line 105
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/appsflyer/AFKeystoreWrapper;->uid:Ljava/lang/String;

    .line 106
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appsflyer/AFKeystoreWrapper;->reInstallCounter:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v2, 0x0

    .line 113
    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t list KeyStore Aliases: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 116
    :cond_2
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method