.class final Lcom/appsflyer/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final INSTANCE:Lcom/appsflyer/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/appsflyer/d;

    invoke-direct {v0}, Lcom/appsflyer/d;-><init>()V

    sput-object v0, Lcom/appsflyer/d$a;->INSTANCE:Lcom/appsflyer/d;

    return-void
.end method
