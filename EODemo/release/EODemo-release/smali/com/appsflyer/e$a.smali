.class final Lcom/appsflyer/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final INSTANCE:Lcom/appsflyer/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcom/appsflyer/e;

    invoke-direct {v0}, Lcom/appsflyer/e;-><init>()V

    sput-object v0, Lcom/appsflyer/e$a;->INSTANCE:Lcom/appsflyer/e;

    return-void
.end method
