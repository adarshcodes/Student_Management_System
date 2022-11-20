.class public abstract Lcom/mobvista/msdk/video/module/MobvistaBaseView;
.super Landroid/widget/RelativeLayout;
.source "MobvistaBaseView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MobvistaBaseView"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/mobvista/msdk/base/entity/CampaignEx;

.field protected c:Landroid/view/LayoutInflater;

.field protected d:Lcom/mobvista/msdk/video/module/a/a;

.field protected e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/mobvista/msdk/video/module/a/a/f;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/module/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->d:Lcom/mobvista/msdk/video/module/a/a;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->e:Z

    .line 46
    iput-object p1, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->a:Landroid/content/Context;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->c:Landroid/view/LayoutInflater;

    .line 48
    invoke-virtual {p0, p1}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public defaultShow()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "MobvistaBaseView"

    const-string v1, "defaultShow"

    invoke-static {v0, v1}, Lcom/mobvista/msdk/base/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public findColor(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "color"

    invoke-static {v0, p1, v1}, Lcom/mobvista/msdk/base/utils/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findID(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mobvista/msdk/base/utils/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findLayout(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/mobvista/msdk/base/utils/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCampaign()Lcom/mobvista/msdk/base/entity/CampaignEx;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    return-object v0
.end method

.method public getParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 176
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 177
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentRelativeLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 169
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 172
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isNotNULL([Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    array-length v4, p1

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, p1, v2

    .line 87
    if-eqz v1, :cond_1

    .line 88
    const/4 v3, 0x1

    .line 86
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 95
    :cond_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 54
    return-void
.end method

.method public onSelfConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 57
    const-string v0, "MobvistaBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSelfConfigurationChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public setCampaign(Lcom/mobvista/msdk/base/entity/CampaignEx;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    .line 69
    return-void
.end method

.method public setLayoutParam(IIII)V
    .locals 3

    .prologue
    const/16 v2, -0x3e7

    .line 137
    invoke-virtual {p0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->getParentRelativeLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->getParentLinearLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 139
    if-eqz v0, :cond_3

    .line 140
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 141
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 142
    if-eq p3, v2, :cond_0

    .line 143
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 145
    :cond_0
    if-eq p4, v2, :cond_1

    .line 146
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 148
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :cond_2
    :goto_0
    return-void

    .line 150
    :cond_3
    if-eqz v1, :cond_2

    .line 151
    iput p2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 152
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    if-eq p3, v2, :cond_4

    .line 154
    iput p3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 156
    :cond_4
    if-eq p4, v2, :cond_5

    .line 157
    iput p4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 159
    :cond_5
    invoke-virtual {p0, v1}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setMatchParent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 99
    invoke-virtual {p0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public setNotifyListener(Lcom/mobvista/msdk/video/module/a/a;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->d:Lcom/mobvista/msdk/video/module/a/a;

    .line 62
    return-void
.end method

.method public setWrapContent()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 109
    invoke-virtual {p0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/module/MobvistaBaseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    :goto_0
    return-void

    .line 114
    :cond_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method
