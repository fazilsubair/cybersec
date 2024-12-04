.class public Lb/k/b/y0$c;
.super Lb/k/b/y0$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final h:Lb/k/b/i0;


# direct methods
.method public constructor <init>(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/i0;Lb/h/f/a;)V
    .locals 1

    .line 1
    iget-object v0, p3, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 2
    invoke-direct {p0, p1, p2, v0, p4}, Lb/k/b/y0$d;-><init>(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/m;Lb/h/f/a;)V

    iput-object p3, p0, Lb/k/b/y0$c;->h:Lb/k/b/i0;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-super {p0}, Lb/k/b/y0$d;->b()V

    iget-object v0, p0, Lb/k/b/y0$c;->h:Lb/k/b/i0;

    invoke-virtual {v0}, Lb/k/b/i0;->k()V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/k/b/y0$d;->b:Lb/k/b/y0$d$b;

    .line 2
    sget-object v1, Lb/k/b/y0$d$b;->c:Lb/k/b/y0$d$b;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lb/k/b/y0$c;->h:Lb/k/b/i0;

    .line 3
    iget-object v0, v0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 4
    iget-object v1, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lb/k/b/m;->g()Lb/k/b/m$b;

    move-result-object v2

    iput-object v1, v2, Lb/k/b/m$b;->o:Landroid/view/View;

    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Lb/k/b/c0;->M(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus: Saved focused view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 8
    invoke-virtual {v1}, Lb/k/b/m;->j0()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lb/k/b/y0$c;->h:Lb/k/b/i0;

    invoke-virtual {v2}, Lb/k/b/i0;->b()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    :cond_2
    iget-object v0, v0, Lb/k/b/m;->I:Lb/k/b/m$b;

    if-nez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    iget v0, v0, Lb/k/b/m$b;->n:F

    .line 10
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method
