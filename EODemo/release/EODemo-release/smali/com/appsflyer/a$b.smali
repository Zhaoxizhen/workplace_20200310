.class final Lcom/appsflyer/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final INSTANCE:Lcom/appsflyer/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/appsflyer/a;

    invoke-direct {v0}, Lcom/appsflyer/a;-><init>()V

    sput-object v0, Lcom/appsflyer/a$b;->INSTANCE:Lcom/appsflyer/a;

    return-void
.end method
