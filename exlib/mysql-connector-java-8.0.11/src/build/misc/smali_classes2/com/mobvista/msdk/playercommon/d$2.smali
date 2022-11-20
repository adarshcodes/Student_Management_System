.class final Lcom/mobvista/msdk/playercommon/d$2;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobvista/msdk/playercommon/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mobvista/msdk/playercommon/d;


# direct methods
.method constructor <init>(Lcom/mobvista/msdk/playercommon/d;I)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/mobvista/msdk/playercommon/d$2;->b:Lcom/mobvista/msdk/playercommon/d;

    iput p2, p0, Lcom/mobvista/msdk/playercommon/d$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/d$2;->b:Lcom/mobvista/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/d;->k(Lcom/mobvista/msdk/playercommon/d;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/d$2;->b:Lcom/mobvista/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/d;->k(Lcom/mobvista/msdk/playercommon/d;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mobvista/msdk/playercommon/d$2;->a:I

    invoke-interface {v0, v1}, Lcom/mobvista/msdk/playercommon/c;->onPlayStarted(I)V

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/d$2;->b:Lcom/mobvista/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/d;->l(Lcom/mobvista/msdk/playercommon/d;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/d$2;->b:Lcom/mobvista/msdk/playercommon/d;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/d;->l(Lcom/mobvista/msdk/playercommon/d;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    iget v1, p0, Lcom/mobvista/msdk/playercommon/d$2;->a:I

    invoke-interface {v0, v1}, Lcom/mobvista/msdk/playercommon/c;->onPlayStarted(I)V

    .line 569
    :cond_1
    return-void
.end method
