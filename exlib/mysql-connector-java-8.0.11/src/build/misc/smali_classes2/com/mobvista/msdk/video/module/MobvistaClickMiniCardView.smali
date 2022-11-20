.class public Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;
.super Lcom/mobvista/msdk/video/module/MobvistaH5EndCardView;
.source "MobvistaClickMiniCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mobvista/msdk/video/module/MobvistaH5EndCardView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/mobvista/msdk/video/module/MobvistaH5EndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const v2, 0x3f333333    # 0.7f

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mobvista/msdk/base/utils/l;->i(Landroid/content/Context;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mobvista/msdk/base/utils/l;->h(Landroid/content/Context;)I

    move-result v1

    .line 106
    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 107
    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 109
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 114
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method protected final b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v1, -0x2

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    return-object v0
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/mobvista/msdk/video/module/MobvistaH5EndCardView;->c()V

    .line 57
    iget-boolean v0, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->e:Z

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "mobvista_reward_minicard_bg"

    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->findColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->setBackgroundResource(I)V

    .line 61
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->a(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->setClickable(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mobvista/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mobvista/msdk/base/entity/CampaignEx$b;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Lcom/mobvista/msdk/base/entity/CampaignEx$b;->c()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {}, Lcom/mobvista/msdk/videocommon/download/j;->a()Lcom/mobvista/msdk/videocommon/download/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mobvista/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    .line 81
    :cond_1
    return-object v0
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/mobvista/msdk/video/module/MobvistaH5EndCardView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    iget-boolean v0, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->e:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->a(Landroid/view/View;)V

    .line 44
    :cond_0
    return-void
.end method

.method public preLoadData()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/mobvista/msdk/video/module/MobvistaH5EndCardView;->preLoadData()V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->setCloseVisible(I)V

    .line 88
    return-void
.end method

.method public webviewshow()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    const-string v0, "MobvistaBaseView"

    const-string v1, "webviewshow"

    invoke-static {v0, v1}, Lcom/mobvista/msdk/base/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/mobvista/msdk/mvjscommon/windvane/g;->a()Lcom/mobvista/msdk/mvjscommon/windvane/g;

    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaClickMiniCardView;->h:Lcom/mobvista/msdk/mvjscommon/windvane/WindVaneWebView;

    const-string v1, "webviewshow"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mobvista/msdk/mvjscommon/windvane/g;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
