.class public Lcom/eogame/activity/EOUserCenterActivity;
.super Lcom/eogame/base/BasePage;
.source "EOUserCenterActivity.java"


# instance fields
.field private bindBackbtn:Landroid/widget/ImageView;

.field private bindBt:Landroid/widget/Button;

.field private bindEmailEt:Landroid/widget/EditText;

.field private bindPresenter:Lcom/eogame/presenter/EOBindPresenter;

.field private bindPwdEt:Landroid/widget/EditText;

.field private bindRepwdEt:Landroid/widget/EditText;

.field private bindView:Landroid/view/View;

.field private csView:Landroid/view/View;

.field private eoNameLayout:Landroid/widget/LinearLayout;

.field private fbNameLayout:Landroid/widget/LinearLayout;

.field private mCloseView:Landroid/widget/ImageView;

.field private mCsBtn:Landroid/widget/Button;

.field private mCsCloseView:Landroid/widget/ImageView;

.field private mCsEmail:Landroid/widget/TextView;

.field private mEOBindView:Landroid/widget/ImageView;

.field private mEONameLine:Landroid/widget/ImageView;

.field private mEOUserName:Landroid/widget/TextView;

.field private mFacebookFans:Landroid/widget/TextView;

.field private mFacebookUserName:Landroid/widget/TextView;

.field private mFbBindView:Landroid/widget/ImageView;

.field private mFbNameLine:Landroid/widget/ImageView;

.field private mLogoutView:Landroid/widget/ImageView;

.field private mUserName:Landroid/widget/TextView;

.field private userCenterView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/eogame/base/BasePage;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/eogame/activity/EOUserCenterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindEmailEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eogame/activity/EOUserCenterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindPwdEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/eogame/activity/EOUserCenterActivity;)Landroid/widget/EditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindRepwdEt:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/eogame/activity/EOUserCenterActivity;)Lcom/eogame/presenter/EOBindPresenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindPresenter:Lcom/eogame/presenter/EOBindPresenter;

    return-object p0
.end method

.method private setPasswordType(Landroid/widget/EditText;)V
    .locals 1

    .line 288
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 289
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method

.method private setTextViewLine(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    .line 293
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 294
    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showEOType()V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserName()Ljava/lang/String;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->eoNameLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->fbNameLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEONameLine:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOBindView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showFbType()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserName()Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->eoNameLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->fbNameLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbNameLine:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbBindView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showGuestType()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserName()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->eoNameLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->fbNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbNameLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbBindView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookUserName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEONameLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOBindView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindEOSuccess()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-direct {p0}, Lcom/eogame/activity/EOUserCenterActivity;->showEOType()V

    return-void
.end method

.method public bindFacebookSuccess()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/eogame/activity/EOUserCenterActivity;->showFbType()V

    return-void
.end method

.method protected clear()V
    .locals 0

    return-void
.end method

.method protected initData()V
    .locals 3

    .line 134
    new-instance v0, Lcom/eogame/presenter/EOBindPresenter;

    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-direct {v0, v1, v2}, Lcom/eogame/presenter/EOBindPresenter;-><init>(Landroid/app/Activity;Lcom/eogame/model/UserSession;)V

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindPresenter:Lcom/eogame/presenter/EOBindPresenter;

    .line 135
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserSession:Lcom/eogame/model/UserSession;

    invoke-virtual {v0}, Lcom/eogame/model/UserSession;->getCurrentUserType()Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/eogame/model/EOAccountEntity;->FB_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/eogame/activity/EOUserCenterActivity;->showFbType()V

    goto :goto_0

    .line 138
    :cond_0
    sget-object v1, Lcom/eogame/model/EOAccountEntity;->GUEST_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/eogame/activity/EOUserCenterActivity;->showGuestType()V

    goto :goto_0

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/eogame/activity/EOUserCenterActivity;->showEOType()V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 144
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookFans:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 145
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsEmail:Landroid/widget/TextView;

    sget-object v1, Lcom/eogame/constants/EOCommon;->serviceEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookFans:Landroid/widget/TextView;

    sget-object v1, Lcom/eogame/constants/EOCommon;->serviceFbFans:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected initListener()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookFans:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsEmail:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOBindView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbBindView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mLogoutView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindRepwdEt:Landroid/widget/EditText;

    new-instance v1, Lcom/eogame/activity/EOUserCenterActivity$1;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOUserCenterActivity$1;-><init>(Lcom/eogame/activity/EOUserCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 174
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindBackbtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindBt:Landroid/widget/Button;

    new-instance v1, Lcom/eogame/activity/EOUserCenterActivity$2;

    invoke-direct {v1, p0}, Lcom/eogame/activity/EOUserCenterActivity$2;-><init>(Lcom/eogame/activity/EOUserCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindBt:Landroid/widget/Button;

    const-string v1, "eo_bind"

    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method protected initView()V
    .locals 4

    .line 186
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->setContentView(Landroid/view/View;)V

    const-string v1, "eo_customer_service_layout"

    .line 188
    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->csView:Landroid/view/View;

    .line 189
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->csView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->csView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "eo_sign_up_layout"

    .line 192
    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    .line 193
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v1, "eo_user_center_layout"

    .line 196
    invoke-static {p0, v1}, Lcom/eogame/utils/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    .line 197
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    const-string v2, "eo_sign_up_root"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eogame/utils/ScreenUtils;->autoScaleView(Landroid/app/Activity;Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    const-string v2, "eo_user_center_root"

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eogame/utils/ScreenUtils;->autoScaleView(Landroid/app/Activity;Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->csView:Landroid/view/View;

    iget-object v1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/eogame/utils/ResourceUtil;->getViewId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eogame/utils/ScreenUtils;->autoScaleView(Landroid/app/Activity;Landroid/view/View;)V

    const-string v0, "eo_user_close_btn"

    .line 204
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCloseView:Landroid/widget/ImageView;

    const-string v0, "eo_user_center_user_name"

    .line 205
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mUserName:Landroid/widget/TextView;

    const-string v0, "eo_user_center_logout_iv"

    .line 206
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mLogoutView:Landroid/widget/ImageView;

    const-string v0, "eo_uc_email_text"

    .line 208
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOUserName:Landroid/widget/TextView;

    const-string v0, "eo_uc_email_bind"

    .line 209
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOBindView:Landroid/widget/ImageView;

    const-string v0, "eo_uc_email_line"

    .line 210
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEONameLine:Landroid/widget/ImageView;

    const-string v0, "eo_uc_fb_text"

    .line 212
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookUserName:Landroid/widget/TextView;

    const-string v0, "eo_uc_fb_bind"

    .line 213
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbBindView:Landroid/widget/ImageView;

    const-string v0, "eo_uc_fb_line"

    .line 214
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbNameLine:Landroid/widget/ImageView;

    const-string v0, "eo_uc_cs_btn"

    .line 215
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsBtn:Landroid/widget/Button;

    const-string v0, "eo_uc_name_layout_ll"

    .line 217
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->eoNameLayout:Landroid/widget/LinearLayout;

    const-string v0, "eo_uc_fb_layout_ll"

    .line 218
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->fbNameLayout:Landroid/widget/LinearLayout;

    const-string v0, "eo_cs_close_btn"

    .line 220
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsCloseView:Landroid/widget/ImageView;

    const-string v0, "eo_cs_email_textview"

    .line 221
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsEmail:Landroid/widget/TextView;

    const-string v0, "eo_cs_fb_textview"

    .line 222
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookFans:Landroid/widget/TextView;

    const-string v0, "eo_sign_up_back_btn"

    .line 224
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindBackbtn:Landroid/widget/ImageView;

    const-string v0, "eo_register_email_et"

    .line 225
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindEmailEt:Landroid/widget/EditText;

    const-string v0, "eo_register_pwd_et"

    .line 226
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindPwdEt:Landroid/widget/EditText;

    .line 227
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindPwdEt:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->setPasswordType(Landroid/widget/EditText;)V

    const-string v0, "eo_register_re_pwd_et"

    .line 228
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindRepwdEt:Landroid/widget/EditText;

    .line 229
    iget-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindRepwdEt:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->setPasswordType(Landroid/widget/EditText;)V

    const-string v0, "eo_sign_up_btn"

    .line 230
    invoke-virtual {p0, v0}, Lcom/eogame/activity/EOUserCenterActivity;->getView(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindBt:Landroid/widget/Button;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 283
    invoke-super {p0, p1, p2, p3}, Lcom/eogame/base/BasePage;->onActivityResult(IILandroid/content/Intent;)V

    .line 284
    invoke-static {}, Lcom/eogame/facebook/FacebookHelper;->getInstance()Lcom/eogame/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/eogame/facebook/FacebookHelper;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onClick(Landroid/view/View;I)V
    .locals 2

    .line 89
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCloseView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/eogame/activity/EOUserCenterActivity;->finish()V

    goto/16 :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p2, p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->csView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mLogoutView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 96
    invoke-static {}, Lcom/eogame/presenter/EOSDKPresenter;->instance()Lcom/eogame/presenter/EOSDKPresenter;

    move-result-object p1

    iget-object p2, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/eogame/presenter/EOSDKPresenter;->logout(Landroid/content/Context;)V

    .line 97
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mEOBindView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFbBindView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_4

    .line 103
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindPresenter:Lcom/eogame/presenter/EOBindPresenter;

    invoke-virtual {p1}, Lcom/eogame/presenter/EOBindPresenter;->bindFacebookAccount()V

    goto/16 :goto_0

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 107
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "plain/text"

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 109
    new-array p2, p2, [Ljava/lang/String;

    sget-object v0, Lcom/eogame/constants/EOCommon;->serviceEmail:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/eogame/activity/EOUserCenterActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    iget-object p2, p0, Lcom/eogame/activity/EOUserCenterActivity;->mContext:Landroid/app/Activity;

    const-string v0, "eo_no_install_email"

    invoke-static {p2, v0}, Lcom/eogame/utils/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eogame/utils/Util;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_5
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mFacebookFans:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_6

    .line 119
    sget-object p1, Lcom/eogame/constants/EOCommon;->serviceFbFans:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 120
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/eogame/activity/EOUserCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_6
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->mCsCloseView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_7

    .line 124
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->csView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 126
    :cond_7
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindBackbtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    if-ne p2, p1, :cond_8

    .line 127
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->bindView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p1, p0, Lcom/eogame/activity/EOUserCenterActivity;->userCenterView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_0
    return-void
.end method
