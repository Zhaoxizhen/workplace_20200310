.class public Lcom/eogame/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPassword(Landroid/app/Activity;Landroid/widget/EditText;)Z
    .locals 3

    .line 17
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v0}, Lcom/eogame/utils/PatternUtil;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eo_error_login_password_error"

    .line 25
    invoke-static {p0, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string v0, "eo_error_login_password_empty"

    .line 19
    invoke-static {p0, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v1
.end method

.method public static checkPhone(Landroid/app/Activity;Landroid/widget/EditText;)Z
    .locals 2

    .line 40
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v1

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/eogame/utils/PatternUtil;->chcekPhone(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static checkUsername(Landroid/app/Activity;Landroid/widget/EditText;)Z
    .locals 1

    .line 60
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/eogame/utils/PatternUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x32

    const/4 v0, 0x1

    if-ge p0, p1, :cond_0

    :cond_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static checkUsername(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 75
    invoke-static {p0}, Lcom/eogame/utils/PatternUtil;->checkEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
