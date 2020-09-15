.class final Lcom/kochava/base/Tracker$ConsentPartner$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kochava/base/Tracker$ConsentPartner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kochava/base/Tracker$ConsentPartner;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/kochava/base/Tracker$ConsentPartner;
    .locals 1

    new-instance v0, Lcom/kochava/base/Tracker$ConsentPartner;

    invoke-direct {v0, p1}, Lcom/kochava/base/Tracker$ConsentPartner;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/kochava/base/Tracker$ConsentPartner;
    .locals 0

    new-array p1, p1, [Lcom/kochava/base/Tracker$ConsentPartner;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kochava/base/Tracker$ConsentPartner$1;->a(Landroid/os/Parcel;)Lcom/kochava/base/Tracker$ConsentPartner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kochava/base/Tracker$ConsentPartner$1;->a(I)[Lcom/kochava/base/Tracker$ConsentPartner;

    move-result-object p1

    return-object p1
.end method
