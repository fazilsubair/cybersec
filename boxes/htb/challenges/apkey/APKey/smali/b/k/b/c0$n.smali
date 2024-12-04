.class public Lb/k/b/c0$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/k/b/m$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lb/k/b/a;

.field public c:I


# virtual methods
.method public a()V
    .locals 5

    iget v0, p0, Lb/k/b/c0$n;->c:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lb/k/b/c0$n;->b:Lb/k/b/a;

    iget-object v2, v2, Lb/k/b/a;->p:Lb/k/b/c0;

    .line 1
    iget-object v2, v2, Lb/k/b/c0;->c:Lb/k/b/j0;

    invoke-virtual {v2}, Lb/k/b/j0;->i()Ljava/util/List;

    move-result-object v2

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/b/m;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lb/k/b/m;->q0(Lb/k/b/m$e;)V

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lb/k/b/m;->D()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lb/k/b/m;->s0()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lb/k/b/c0$n;->b:Lb/k/b/a;

    iget-object v3, v2, Lb/k/b/a;->p:Lb/k/b/c0;

    iget-boolean v4, p0, Lb/k/b/c0$n;->a:Z

    xor-int/2addr v0, v1

    invoke-virtual {v3, v2, v4, v0, v1}, Lb/k/b/c0;->g(Lb/k/b/a;ZZZ)V

    return-void
.end method
