.class final Lcom/mobvista/msdk/playercommon/b$2;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobvista/msdk/playercommon/b;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mobvista/msdk/playercommon/b;


# direct methods
.method constructor <init>(Lcom/mobvista/msdk/playercommon/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/mobvista/msdk/playercommon/b$2;->b:Lcom/mobvista/msdk/playercommon/b;

    iput-object p2, p0, Lcom/mobvista/msdk/playercommon/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/b$2;->b:Lcom/mobvista/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/b;->p(Lcom/mobvista/msdk/playercommon/b;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/b$2;->b:Lcom/mobvista/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/b;->p(Lcom/mobvista/msdk/playercommon/b;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/playercommon/b$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mobvista/msdk/playercommon/c;->onPlayError(Ljava/lang/String;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/b$2;->b:Lcom/mobvista/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/b;->q(Lcom/mobvista/msdk/playercommon/b;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/mobvista/msdk/playercommon/b$2;->b:Lcom/mobvista/msdk/playercommon/b;

    invoke-static {v0}, Lcom/mobvista/msdk/playercommon/b;->q(Lcom/mobvista/msdk/playercommon/b;)Lcom/mobvista/msdk/playercommon/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mobvista/msdk/playercommon/b$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mobvista/msdk/playercommon/c;->onPlayError(Ljava/lang/String;)V

    .line 566
    :cond_1
    return-void
.end method
