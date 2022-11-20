.class public Lcom/mobvista/msdk/video/js/a/a;
.super Ljava/lang/Object;
.source "DefaultJSFactory.java"

# interfaces
.implements Lcom/mobvista/msdk/video/js/a/b;


# instance fields
.field protected a:Lcom/mobvista/msdk/video/js/a;

.field protected b:Lcom/mobvista/msdk/video/js/b;

.field protected c:Lcom/mobvista/msdk/video/js/h;

.field protected d:Lcom/mobvista/msdk/video/js/e;

.field protected e:Lcom/mobvista/msdk/video/js/d;

.field protected f:Lcom/mobvista/msdk/video/js/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityProxy()Lcom/mobvista/msdk/video/js/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->a:Lcom/mobvista/msdk/video/js/a;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/mobvista/msdk/video/js/b/a;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/js/b/a;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->a:Lcom/mobvista/msdk/video/js/a;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->a:Lcom/mobvista/msdk/video/js/a;

    return-object v0
.end method

.method public getIJSRewardVideoV1()Lcom/mobvista/msdk/video/js/g;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->f:Lcom/mobvista/msdk/video/js/g;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/mobvista/msdk/video/js/b/e;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/js/b/e;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->f:Lcom/mobvista/msdk/video/js/g;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->f:Lcom/mobvista/msdk/video/js/g;

    return-object v0
.end method

.method public getJSCommon()Lcom/mobvista/msdk/video/js/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->b:Lcom/mobvista/msdk/video/js/b;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/mobvista/msdk/video/js/b/b;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/js/b/b;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->b:Lcom/mobvista/msdk/video/js/b;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->b:Lcom/mobvista/msdk/video/js/b;

    return-object v0
.end method

.method public getJSContainerModule()Lcom/mobvista/msdk/video/js/d;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->e:Lcom/mobvista/msdk/video/js/d;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/mobvista/msdk/video/js/b/c;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/js/b/c;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->e:Lcom/mobvista/msdk/video/js/d;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->e:Lcom/mobvista/msdk/video/js/d;

    return-object v0
.end method

.method public getJSNotifyProxy()Lcom/mobvista/msdk/video/js/e;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->d:Lcom/mobvista/msdk/video/js/e;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/mobvista/msdk/video/js/b/d;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/js/b/d;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->d:Lcom/mobvista/msdk/video/js/e;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->d:Lcom/mobvista/msdk/video/js/e;

    return-object v0
.end method

.method public getJSVideoModule()Lcom/mobvista/msdk/video/js/h;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->c:Lcom/mobvista/msdk/video/js/h;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/mobvista/msdk/video/js/b/f;

    invoke-direct {v0}, Lcom/mobvista/msdk/video/js/b/f;-><init>()V

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->c:Lcom/mobvista/msdk/video/js/h;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/mobvista/msdk/video/js/a/a;->c:Lcom/mobvista/msdk/video/js/h;

    return-object v0
.end method
