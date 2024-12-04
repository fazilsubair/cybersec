.class public Lb/k/b/l$e;
.super Lb/k/b/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/l;->e()Lb/k/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/k/b/v;

.field public final synthetic b:Lb/k/b/l;


# direct methods
.method public constructor <init>(Lb/k/b/l;Lb/k/b/v;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/l$e;->b:Lb/k/b/l;

    iput-object p2, p0, Lb/k/b/l$e;->a:Lb/k/b/v;

    invoke-direct {p0}, Lb/k/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public g(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/k/b/l$e;->a:Lb/k/b/v;

    invoke-virtual {v0}, Lb/k/b/v;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k/b/l$e;->a:Lb/k/b/v;

    invoke-virtual {v0, p1}, Lb/k/b/v;->g(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lb/k/b/l$e;->b:Lb/k/b/l;

    .line 1
    iget-object v0, v0, Lb/k/b/l;->f0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/k/b/l$e;->a:Lb/k/b/v;

    invoke-virtual {v0}, Lb/k/b/v;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/k/b/l$e;->b:Lb/k/b/l;

    .line 1
    iget-boolean v0, v0, Lb/k/b/l;->i0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
