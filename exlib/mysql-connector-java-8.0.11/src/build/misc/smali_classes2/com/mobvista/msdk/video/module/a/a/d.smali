.class public Lcom/mobvista/msdk/video/module/a/a/d;
.super Lcom/mobvista/msdk/video/module/a/a/k;
.source "ContainerViewStatisticsListener.java"


# direct methods
.method public constructor <init>(Lcom/mobvista/msdk/base/entity/CampaignEx;Lcom/mobvista/msdk/videocommon/download/a;Lcom/mobvista/msdk/videocommon/b/c;Ljava/lang/String;Lcom/mobvista/msdk/video/module/a/a;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/mobvista/msdk/video/module/a/a/k;-><init>(Lcom/mobvista/msdk/base/entity/CampaignEx;Lcom/mobvista/msdk/videocommon/download/a;Lcom/mobvista/msdk/videocommon/b/c;Ljava/lang/String;Lcom/mobvista/msdk/video/module/a/a;)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 25
    invoke-super {p0, p1, p2}, Lcom/mobvista/msdk/video/module/a/a/k;->a(ILjava/lang/Object;)V

    .line 26
    iget-boolean v0, p0, Lcom/mobvista/msdk/video/module/a/a/d;->a:Z

    if-eqz v0, :cond_0

    .line 27
    packed-switch p1, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 30
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/mobvista/msdk/video/module/a/a/d;->b(I)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/mobvista/msdk/video/module/a/a/d;->a(I)V

    goto :goto_0

    .line 35
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/mobvista/msdk/video/module/a/a/d;->b(I)V

    .line 36
    invoke-virtual {p0, v4}, Lcom/mobvista/msdk/video/module/a/a/d;->a(I)V

    goto :goto_0

    .line 40
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/mobvista/msdk/video/module/a/a/d;->a(I)V

    goto :goto_0

    .line 47
    :pswitch_4
    invoke-static {}, Lcom/mobvista/msdk/base/controller/a;->d()Lcom/mobvista/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobvista/msdk/base/controller/a;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/video/module/a/a/d;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    invoke-static {v0, v1}, Lcom/mobvista/msdk/video/module/b/a;->d(Landroid/content/Context;Lcom/mobvista/msdk/base/entity/CampaignEx;)V

    .line 48
    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    .line 51
    invoke-static {}, Lcom/mobvista/msdk/base/controller/a;->d()Lcom/mobvista/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobvista/msdk/base/controller/a;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/video/module/a/a/d;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    iget-object v2, p0, Lcom/mobvista/msdk/video/module/a/a/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobvista/msdk/video/module/a/a/d;->b:Lcom/mobvista/msdk/base/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mobvista/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/mobvista/msdk/click/a;->a(Landroid/content/Context;Lcom/mobvista/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
