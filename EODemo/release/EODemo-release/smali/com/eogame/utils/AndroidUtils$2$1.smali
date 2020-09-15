.class Lcom/eogame/utils/AndroidUtils$2$1;
.super Ljava/lang/Object;
.source "AndroidUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eogame/utils/AndroidUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eogame/utils/AndroidUtils$2;


# direct methods
.method constructor <init>(Lcom/eogame/utils/AndroidUtils$2;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/eogame/utils/AndroidUtils$2$1;->this$0:Lcom/eogame/utils/AndroidUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/eogame/utils/AndroidUtils$2$1;->this$0:Lcom/eogame/utils/AndroidUtils$2;

    iget-object p1, p1, Lcom/eogame/utils/AndroidUtils$2;->val$progressThread:Lcom/eogame/utils/EOThread;

    invoke-virtual {p1}, Lcom/eogame/utils/EOThread;->safeDestory()V

    return-void
.end method
