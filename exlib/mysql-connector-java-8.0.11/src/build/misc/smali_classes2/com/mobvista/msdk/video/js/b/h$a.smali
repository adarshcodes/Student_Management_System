.class final Lcom/mobvista/msdk/video/js/b/h$a;
.super Ljava/lang/Object;
.source "JSCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobvista/msdk/video/js/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const-string v0, "android"

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->c:Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/mobvista/msdk/base/utils/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->a:Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/mobvista/msdk/base/utils/c;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->b:Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->d:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/mobvista/msdk/base/utils/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->e:Ljava/lang/String;

    .line 226
    invoke-static {}, Lcom/mobvista/msdk/base/utils/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->f:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Lcom/mobvista/msdk/base/utils/c;->j(Landroid/content/Context;)I

    move-result v0

    .line 228
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobvista/msdk/video/js/b/h$a;->g:Ljava/lang/String;

    .line 229
    invoke-static {p1, v0}, Lcom/mobvista/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->h:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Lcom/mobvista/msdk/base/utils/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->i:Ljava/lang/String;

    .line 231
    invoke-static {}, Lcom/mobvista/msdk/base/controller/a;->d()Lcom/mobvista/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobvista/msdk/base/controller/a;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->j:Ljava/lang/String;

    .line 232
    invoke-static {}, Lcom/mobvista/msdk/base/controller/a;->d()Lcom/mobvista/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobvista/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->k:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mobvista/msdk/base/utils/l;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->l:Ljava/lang/String;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mobvista/msdk/base/utils/l;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->m:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    const-string v0, "landscape"

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->n:Ljava/lang/String;

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    const-string v0, "portrait"

    iput-object v0, p0, Lcom/mobvista/msdk/video/js/b/h$a;->n:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 243
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 246
    :try_start_0
    invoke-static {}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a()Lcom/mobvista/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_general_data"

    invoke-static {v0}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "device"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v0, "system_version"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v0, "network_type"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v0, "network_type_str"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v0, "device_ua"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    :cond_0
    const-string v0, "plantform"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    invoke-static {}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a()Lcom/mobvista/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_imei_mac"

    invoke-static {v0}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "device_imei"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    :cond_1
    invoke-static {}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a()Lcom/mobvista/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_android_id"

    invoke-static {v0}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    const-string v0, "android_id"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_2
    invoke-static {}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a()Lcom/mobvista/msdk/base/controller/authoritycontroller/a;

    const-string v0, "authority_device_id"

    invoke-static {v0}, Lcom/mobvista/msdk/base/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    const-string v0, "google_ad_id"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_3
    const-string v0, "appkey"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v0, "appId"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v0, "screen_width"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v0, "screen_height"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v0, "orientation"

    iget-object v2, p0, Lcom/mobvista/msdk/video/js/b/h$a;->n:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object v1

    .line 271
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
