.class public Lcom/eogame/utils/WidgetUtil;
.super Ljava/lang/Object;
.source "WidgetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClickableSpan(Landroid/view/View$OnClickListener;Ljava/lang/String;II)Landroid/text/SpannableString;
    .locals 2

    .line 21
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 22
    new-instance p1, Lcom/eogame/utils/Clickable;

    invoke-direct {p1, p0}, Lcom/eogame/utils/Clickable;-><init>(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x21

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 24
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#ff0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 25
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method
