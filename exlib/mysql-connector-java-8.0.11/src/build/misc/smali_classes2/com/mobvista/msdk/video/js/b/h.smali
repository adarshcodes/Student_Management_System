.class public final Lcom/mobvista/msdk/video/js/b/h;
.super Lcom/mobvista/msdk/video/js/b/b;
.source "JSCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobvista/msdk/video/js/b/h$a;
    }
.end annotation


# instance fields
.field private g:Landroid/app/Activity;

.field private h:Lcom/mobvista/msdk/base/entity/CampaignEx;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mobvista/msdk/base/entity/CampaignEx;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mobvista/msdk/video/js/b/b;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/mobvista/msdk/video/js/b/h;->g:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/mobvista/msdk/video/js/b/h;->h:Lcom/mobvista/msdk/base/entity/CampaignEx;

    .line 47
    return-void
.end method

.method private h()Lcom/mobvista/msdk/click/a;
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->d:Lcom/mobvista/msdk/click/a;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/mobvista/msdk/click/a;

    iget-object v1, p0, Lcom/mobvista/msdk/video/js/b/h;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mobvista/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->d:Lcom/mobvista/msdk/click/a;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->d:Lcom/mobvista/msdk/click/a;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 9

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/mobvista/msdk/video/js/b/b;->a(ILjava/lang/String;)V

    .line 130
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 132
    :pswitch_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    const-string v1, "event"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v1, "template"

    const-string v3, "-1"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v1, "layout"

    const-string v4, "-1"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    const-string v1, "unit_id"

    iget-object v5, p0, Lcom/mobvista/msdk/video/js/b/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/mobvista/msdk/base/utils/c;->j(Landroid/content/Context;)I

    move-result v7

    .line 138
    new-instance v0, Lcom/mobvista/msdk/base/entity/n;

    const-string v1, "2000039"

    iget-object v6, p0, Lcom/mobvista/msdk/video/js/b/h;->h:Lcom/mobvista/msdk/base/entity/CampaignEx;

    .line 140
    invoke-virtual {v6}, Lcom/mobvista/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/mobvista/msdk/video/js/b/h;->g:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/mobvista/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/mobvista/msdk/base/entity/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/mobvista/msdk/video/js/b/h;->g:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/mobvista/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mobvista/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mobvista/msdk/base/b/u;->a(Lcom/mobvista/msdk/base/b/h;)Lcom/mobvista/msdk/base/b/u;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Lcom/mobvista/msdk/base/b/u;->a(Lcom/mobvista/msdk/base/entity/n;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mobvista/msdk/base/utils/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/mobvista/msdk/video/js/b/h;->i:I

    .line 55
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/mobvista/msdk/video/js/b/b;->b(ILjava/lang/String;)V

    .line 87
    packed-switch p1, :pswitch_data_0

    .line 114
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/b$a;->b()V

    .line 93
    invoke-direct {p0}, Lcom/mobvista/msdk/video/js/b/h;->h()Lcom/mobvista/msdk/click/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    invoke-virtual {v0, v1}, Lcom/mobvista/msdk/click/a;->a(Lcom/mobvista/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 94
    invoke-direct {p0}, Lcom/mobvista/msdk/video/js/b/h;->h()Lcom/mobvista/msdk/click/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/video/js/b/h;->h:Lcom/mobvista/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mobvista/msdk/click/a;->a(Lcom/mobvista/msdk/base/entity/CampaignEx;)V

    .line 96
    invoke-static {}, Lcom/mobvista/msdk/base/controller/a;->d()Lcom/mobvista/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobvista/msdk/base/controller/a;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/video/js/b/h;->h:Lcom/mobvista/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mobvista/msdk/video/module/b/a;->d(Landroid/content/Context;Lcom/mobvista/msdk/base/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mobvista/msdk/base/utils/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->c:Lcom/mobvista/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mobvista/msdk/videocommon/e/c;->k()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    new-instance v0, Lcom/mobvista/msdk/video/js/b/b$b;

    iget-object v1, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    invoke-direct {v0, p0, v1}, Lcom/mobvista/msdk/video/js/b/b$b;-><init>(Lcom/mobvista/msdk/video/js/b;Lcom/mobvista/msdk/video/js/b$a;)V

    invoke-virtual {p0, v0}, Lcom/mobvista/msdk/video/js/b/h;->a(Lcom/mobvista/msdk/video/js/b$a;)V

    .line 108
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/mobvista/msdk/video/js/b/h;->b(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    new-instance v0, Lcom/mobvista/msdk/video/js/b/h$a;

    invoke-static {}, Lcom/mobvista/msdk/base/controller/a;->d()Lcom/mobvista/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobvista/msdk/base/controller/a;->i()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mobvista/msdk/video/js/b/h$a;-><init>(Landroid/content/Context;)V

    .line 63
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 64
    const-string v3, "playVideoMute"

    iget v4, p0, Lcom/mobvista/msdk/video/js/b/h;->f:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v3, "sdkSetting"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "device"

    invoke-virtual {v0}, Lcom/mobvista/msdk/video/js/b/h$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h;->h:Lcom/mobvista/msdk/base/entity/CampaignEx;

    invoke-static {v2}, Lcom/mobvista/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mobvista/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 69
    const-string v2, "campaignList"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1176
    const/4 v0, 0x0

    .line 1177
    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h;->c:Lcom/mobvista/msdk/videocommon/e/c;

    if-eqz v2, :cond_0

    .line 1178
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->c:Lcom/mobvista/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mobvista/msdk/videocommon/e/c;->K()Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v0, "unitSetting"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/b$a;->a()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobvista/msdk/video/js/b/h;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final c(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/mobvista/msdk/video/js/b/b;->c(ILjava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    invoke-interface {v0, p1, p2}, Lcom/mobvista/msdk/video/js/b$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mobvista/msdk/base/utils/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/mobvista/msdk/video/js/b/b;->d()V

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "js"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mobvista/msdk/base/utils/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/mobvista/msdk/video/js/b/b;->f()V

    .line 153
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/b/h;->e:Lcom/mobvista/msdk/video/js/b$a;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/b$a;->c()V

    .line 156
    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/mobvista/msdk/video/js/b/h;->i:I

    return v0
.end method
