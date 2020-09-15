.class Lcom/eogame/activity/EOWebPayActivity$GetItemTask;
.super Landroid/os/AsyncTask;
.source "EOWebPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eogame/activity/EOWebPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetItemTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[",
        "Lcom/eogame/activity/EOWebPayActivity$Item;",
        ">;"
    }
.end annotation


# instance fields
.field Url:Ljava/lang/String;

.field currencyCode:Ljava/lang/String;

.field items:[Lcom/eogame/activity/EOWebPayActivity$Item;

.field payChannel:Ljava/lang/String;

.field final synthetic this$0:Lcom/eogame/activity/EOWebPayActivity;


# direct methods
.method public constructor <init>(Lcom/eogame/activity/EOWebPayActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 267
    sget-object p1, Lcom/eogame/constants/Data;->URL_GET_PAYITEMS:Ljava/lang/String;

    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->Url:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    .line 273
    iput-object p3, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->currencyCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 266
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->doInBackground([Ljava/lang/String;)[Lcom/eogame/activity/EOWebPayActivity$Item;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Lcom/eogame/activity/EOWebPayActivity$Item;
    .locals 4

    .line 278
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->payChannel:Ljava/lang/String;

    iget-object v1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/eogame/activity/EOWebPayActivity;->getItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 283
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-array p1, p1, [Lcom/eogame/activity/EOWebPayActivity$Item;

    iput-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->items:[Lcom/eogame/activity/EOWebPayActivity$Item;

    const/4 p1, 0x0

    .line 286
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 287
    new-instance v1, Lcom/eogame/activity/EOWebPayActivity$Item;

    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-direct {v1, v2}, Lcom/eogame/activity/EOWebPayActivity$Item;-><init>(Lcom/eogame/activity/EOWebPayActivity;)V

    .line 288
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "productCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/eogame/activity/EOWebPayActivity$Item;->productCode:Ljava/lang/String;

    .line 289
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "money"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/eogame/activity/EOWebPayActivity$Item;->money:Ljava/lang/String;

    .line 290
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "productName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/eogame/activity/EOWebPayActivity$Item;->productName:Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->items:[Lcom/eogame/activity/EOWebPayActivity$Item;

    aput-object v1, v2, p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 295
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->items:[Lcom/eogame/activity/EOWebPayActivity$Item;

    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 302
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 266
    check-cast p1, [Lcom/eogame/activity/EOWebPayActivity$Item;

    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->onPostExecute([Lcom/eogame/activity/EOWebPayActivity$Item;)V

    return-void
.end method

.method protected onPostExecute([Lcom/eogame/activity/EOWebPayActivity$Item;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 307
    array-length v0, p1

    if-lez v0, :cond_1

    .line 308
    array-length v0, p1

    .line 309
    new-array v1, v0, [Ljava/lang/String;

    .line 310
    new-array v2, v0, [Ljava/lang/String;

    .line 311
    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 313
    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/eogame/activity/EOWebPayActivity$Item;->productCode:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 314
    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/eogame/activity/EOWebPayActivity$Item;->productName:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 315
    aget-object v5, p1, v4

    iget-object v5, v5, Lcom/eogame/activity/EOWebPayActivity$Item;->money:Ljava/lang/String;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    iget-object v0, v0, Lcom/eogame/activity/EOWebPayActivity;->mContext:Landroid/app/Activity;

    sget v4, Lcom/eo/games/sdk/R$layout;->eo_pay_list_item:I

    invoke-direct {p1, v0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {v0}, Lcom/eogame/activity/EOWebPayActivity;->access$1000(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 319
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$1000(Lcom/eogame/activity/EOWebPayActivity;)Landroid/widget/Spinner;

    move-result-object p1

    new-instance v0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/eogame/activity/EOWebPayActivity$GetItemTask$1;-><init>(Lcom/eogame/activity/EOWebPayActivity$GetItemTask;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_1

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOWebPayActivity$GetItemTask;->this$0:Lcom/eogame/activity/EOWebPayActivity;

    invoke-static {p1}, Lcom/eogame/activity/EOWebPayActivity;->access$300(Lcom/eogame/activity/EOWebPayActivity;)V

    :goto_1
    return-void
.end method
