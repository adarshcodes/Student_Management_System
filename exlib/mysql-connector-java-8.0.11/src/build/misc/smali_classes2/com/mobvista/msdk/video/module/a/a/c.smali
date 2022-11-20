.class public final Lcom/mobvista/msdk/video/module/a/a/c;
.super Lcom/mobvista/msdk/video/module/a/a/d;
.source "ContainerViewJSListener.java"


# instance fields
.field private g:Lcom/mobvista/msdk/video/js/a/b;


# direct methods
.method public constructor <init>(Lcom/mobvista/msdk/video/js/a/b;Lcom/mobvista/msdk/base/entity/CampaignEx;Lcom/mobvista/msdk/videocommon/b/c;Lcom/mobvista/msdk/videocommon/download/a;Ljava/lang/String;Lcom/mobvista/msdk/video/module/a/a;)V
    .locals 6

    .prologue
    .line 21
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/mobvista/msdk/video/module/a/a/d;-><init>(Lcom/mobvista/msdk/base/entity/CampaignEx;Lcom/mobvista/msdk/videocommon/download/a;Lcom/mobvista/msdk/videocommon/b/c;Ljava/lang/String;Lcom/mobvista/msdk/video/module/a/a;)V

    .line 22
    iput-object p1, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    .line 23
    if-nez p1, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobvista/msdk/video/module/a/a/c;->a:Z

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 30
    iget-boolean v1, p0, Lcom/mobvista/msdk/video/module/a/a/c;->a:Z

    if-eqz v1, :cond_0

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/mobvista/msdk/video/module/a/a/d;->a(ILjava/lang/Object;)V

    .line 60
    return-void

    .line 33
    :pswitch_1
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/a/b;->getJSVideoModule()Lcom/mobvista/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mobvista/msdk/video/js/h;->setCover(Z)V

    .line 34
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/a/b;->getJSVideoModule()Lcom/mobvista/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/mobvista/msdk/video/js/h;->videoOperate(I)V

    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v1, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    invoke-interface {v1}, Lcom/mobvista/msdk/video/js/a/b;->getJSContainerModule()Lcom/mobvista/msdk/video/js/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mobvista/msdk/video/js/d;->showVideoClickView(I)V

    .line 39
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/a/b;->getJSVideoModule()Lcom/mobvista/msdk/video/js/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mobvista/msdk/video/js/h;->setCover(Z)V

    .line 40
    iget-object v0, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    invoke-interface {v0}, Lcom/mobvista/msdk/video/js/a/b;->getJSVideoModule()Lcom/mobvista/msdk/video/js/h;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/mobvista/msdk/video/js/h;->videoOperate(I)V

    goto :goto_0

    .line 54
    :pswitch_3
    iget-object v1, p0, Lcom/mobvista/msdk/video/module/a/a/c;->g:Lcom/mobvista/msdk/video/js/a/b;

    invoke-interface {v1}, Lcom/mobvista/msdk/video/js/a/b;->getJSNotifyProxy()Lcom/mobvista/msdk/video/js/e;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/mobvista/msdk/video/js/e;->a(ILjava/lang/String;)V

    move p1, v0

    .line 55
    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
