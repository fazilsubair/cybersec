.class public Lb/k/b/i0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/k/b/b0;

.field public final b:Lb/k/b/j0;

.field public final c:Lb/k/b/m;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(Lb/k/b/b0;Lb/k/b/j0;Lb/k/b/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/b/i0;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lb/k/b/i0;->e:I

    iput-object p1, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iput-object p2, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    iput-object p3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    return-void
.end method

.method public constructor <init>(Lb/k/b/b0;Lb/k/b/j0;Lb/k/b/m;Lb/k/b/h0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/b/i0;->d:Z

    const/4 v1, -0x1

    iput v1, p0, Lb/k/b/i0;->e:I

    iput-object p1, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iput-object p2, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    iput-object p3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    const/4 p1, 0x0

    iput-object p1, p3, Lb/k/b/m;->d:Landroid/util/SparseArray;

    iput-object p1, p3, Lb/k/b/m;->e:Landroid/os/Bundle;

    iput v0, p3, Lb/k/b/m;->r:I

    iput-boolean v0, p3, Lb/k/b/m;->o:Z

    iput-boolean v0, p3, Lb/k/b/m;->l:Z

    iget-object p2, p3, Lb/k/b/m;->h:Lb/k/b/m;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lb/k/b/m;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p3, Lb/k/b/m;->i:Ljava/lang/String;

    iput-object p1, p3, Lb/k/b/m;->h:Lb/k/b/m;

    iget-object p1, p4, Lb/k/b/h0;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iput-object p1, p3, Lb/k/b/m;->c:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lb/k/b/b0;Lb/k/b/j0;Ljava/lang/ClassLoader;Lb/k/b/y;Lb/k/b/h0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/b/i0;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lb/k/b/i0;->e:I

    iput-object p1, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iput-object p2, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    iget-object p1, p5, Lb/k/b/h0;->b:Ljava/lang/String;

    invoke-virtual {p4, p3, p1}, Lb/k/b/y;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lb/k/b/m;

    move-result-object p1

    iput-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object p2, p5, Lb/k/b/h0;->k:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    iget-object p2, p5, Lb/k/b/h0;->k:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Lb/k/b/m;->n0(Landroid/os/Bundle;)V

    iget-object p2, p5, Lb/k/b/h0;->c:Ljava/lang/String;

    iput-object p2, p1, Lb/k/b/m;->f:Ljava/lang/String;

    iget-boolean p2, p5, Lb/k/b/h0;->d:Z

    iput-boolean p2, p1, Lb/k/b/m;->n:Z

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/k/b/m;->p:Z

    iget p2, p5, Lb/k/b/h0;->e:I

    iput p2, p1, Lb/k/b/m;->w:I

    iget p2, p5, Lb/k/b/h0;->f:I

    iput p2, p1, Lb/k/b/m;->x:I

    iget-object p2, p5, Lb/k/b/h0;->g:Ljava/lang/String;

    iput-object p2, p1, Lb/k/b/m;->y:Ljava/lang/String;

    iget-boolean p2, p5, Lb/k/b/h0;->h:Z

    iput-boolean p2, p1, Lb/k/b/m;->B:Z

    iget-boolean p2, p5, Lb/k/b/h0;->i:Z

    iput-boolean p2, p1, Lb/k/b/m;->m:Z

    iget-boolean p2, p5, Lb/k/b/h0;->j:Z

    iput-boolean p2, p1, Lb/k/b/m;->A:Z

    iget-boolean p2, p5, Lb/k/b/h0;->l:Z

    iput-boolean p2, p1, Lb/k/b/m;->z:Z

    invoke-static {}, Lb/m/d$b;->values()[Lb/m/d$b;

    move-result-object p2

    iget p3, p5, Lb/k/b/h0;->m:I

    aget-object p2, p2, p3

    iput-object p2, p1, Lb/k/b/m;->N:Lb/m/d$b;

    iget-object p2, p5, Lb/k/b/h0;->n:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p2, p1, Lb/k/b/m;->c:Landroid/os/Bundle;

    const/4 p2, 0x2

    invoke-static {p2}, Lb/k/b/c0;->M(I)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Instantiated fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v3, v1, Lb/k/b/m;->c:Landroid/os/Bundle;

    .line 1
    iget-object v3, v1, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v3}, Lb/k/b/c0;->T()V

    iput v0, v1, Lb/k/b/m;->b:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lb/k/b/m;->D:Z

    invoke-virtual {v1}, Lb/k/b/m;->F()V

    iget-boolean v4, v1, Lb/k/b/m;->D:Z

    const-string v5, "Fragment "

    if-eqz v4, :cond_6

    .line 2
    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto RESTORE_VIEW_STATE: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v1, Lb/k/b/m;->F:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v4, v1, Lb/k/b/m;->c:Landroid/os/Bundle;

    .line 3
    iget-object v6, v1, Lb/k/b/m;->d:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, v1, Lb/k/b/m;->d:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, v1, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lb/k/b/m;->P:Lb/k/b/w0;

    iget-object v6, v1, Lb/k/b/m;->e:Landroid/os/Bundle;

    .line 4
    iget-object v0, v0, Lb/k/b/w0;->d:Lb/p/b;

    invoke-virtual {v0, v6}, Lb/p/b;->a(Landroid/os/Bundle;)V

    .line 5
    iput-object v2, v1, Lb/k/b/m;->e:Landroid/os/Bundle;

    :cond_3
    iput-boolean v3, v1, Lb/k/b/m;->D:Z

    invoke-virtual {v1, v4}, Lb/k/b/m;->d0(Landroid/os/Bundle;)V

    iget-boolean v0, v1, Lb/k/b/m;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lb/k/b/m;->P:Lb/k/b/w0;

    sget-object v4, Lb/m/d$a;->ON_CREATE:Lb/m/d$a;

    invoke-virtual {v0, v4}, Lb/k/b/w0;->e(Lb/m/d$a;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lb/k/b/a1;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-static {v5, v1, v2}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_5
    :goto_0
    iput-object v2, v1, Lb/k/b/m;->c:Landroid/os/Bundle;

    .line 7
    iget-object v0, v1, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 8
    iput-boolean v3, v0, Lb/k/b/c0;->B:Z

    iput-boolean v3, v0, Lb/k/b/c0;->C:Z

    iget-object v1, v0, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 9
    iput-boolean v3, v1, Lb/k/b/f0;->g:Z

    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lb/k/b/c0;->w(I)V

    .line 11
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v1, Lb/k/b/m;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lb/k/b/b0;->a(Lb/k/b/m;Landroid/os/Bundle;Z)V

    return-void

    .line 12
    :cond_6
    new-instance v0, Lb/k/b/a1;

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-static {v5, v1, v2}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 7

    iget-object v0, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v0, Lb/k/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, v0, Lb/k/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/k/b/m;

    iget-object v6, v5, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-ne v6, v2, :cond_1

    iget-object v5, v5, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget-object v4, v0, Lb/k/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, v0, Lb/k/b/j0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/b/m;

    iget-object v5, v4, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-ne v5, v2, :cond_2

    iget-object v4, v4, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 2
    :cond_3
    :goto_1
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto ATTACHED: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->h:Lb/k/b/m;

    const-string v2, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    const/4 v4, 0x0

    const-string v5, "Fragment "

    if-eqz v1, :cond_2

    iget-object v0, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    iget-object v1, v1, Lb/k/b/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/k/b/j0;->h(Ljava/lang/String;)Lb/k/b/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v1, Lb/k/b/m;->h:Lb/k/b/m;

    iget-object v2, v2, Lb/k/b/m;->f:Ljava/lang/String;

    iput-object v2, v1, Lb/k/b/m;->i:Ljava/lang/String;

    iput-object v4, v1, Lb/k/b/m;->h:Lb/k/b/m;

    move-object v4, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v3, v3, Lb/k/b/m;->h:Lb/k/b/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v0, Lb/k/b/m;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    invoke-virtual {v1, v0}, Lb/k/b/j0;->h(Ljava/lang/String;)Lb/k/b/i0;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v3, v3, Lb/k/b/m;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lb/k/b/i0;->k()V

    :cond_5
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->s:Lb/k/b/c0;

    .line 1
    iget-object v2, v1, Lb/k/b/c0;->q:Lb/k/b/z;

    .line 2
    iput-object v2, v0, Lb/k/b/m;->t:Lb/k/b/z;

    .line 3
    iget-object v1, v1, Lb/k/b/c0;->s:Lb/k/b/m;

    .line 4
    iput-object v1, v0, Lb/k/b/m;->v:Lb/k/b/m;

    iget-object v1, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lb/k/b/b0;->g(Lb/k/b/m;Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 5
    iget-object v1, v0, Lb/k/b/m;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/k/b/m$d;

    invoke-virtual {v3}, Lb/k/b/m$d;->a()V

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lb/k/b/m;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    iget-object v3, v0, Lb/k/b/m;->t:Lb/k/b/z;

    invoke-virtual {v0}, Lb/k/b/m;->e()Lb/k/b/v;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lb/k/b/c0;->b(Lb/k/b/z;Lb/k/b/v;Lb/k/b/m;)V

    iput v2, v0, Lb/k/b/m;->b:I

    iput-boolean v2, v0, Lb/k/b/m;->D:Z

    iget-object v1, v0, Lb/k/b/m;->t:Lb/k/b/z;

    .line 6
    iget-object v1, v1, Lb/k/b/z;->c:Landroid/content/Context;

    .line 7
    invoke-virtual {v0, v1}, Lb/k/b/m;->I(Landroid/content/Context;)V

    iget-boolean v1, v0, Lb/k/b/m;->D:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lb/k/b/m;->s:Lb/k/b/c0;

    .line 8
    iget-object v3, v1, Lb/k/b/c0;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/b/g0;

    invoke-interface {v4, v1, v0}, Lb/k/b/g0;->e(Lb/k/b/c0;Lb/k/b/m;)V

    goto :goto_2

    .line 9
    :cond_7
    iget-object v0, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 10
    iput-boolean v2, v0, Lb/k/b/c0;->B:Z

    iput-boolean v2, v0, Lb/k/b/c0;->C:Z

    iget-object v1, v0, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 11
    iput-boolean v2, v1, Lb/k/b/f0;->g:Z

    .line 12
    invoke-virtual {v0, v2}, Lb/k/b/c0;->w(I)V

    .line 13
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1, v2}, Lb/k/b/b0;->b(Lb/k/b/m;Z)V

    return-void

    .line 14
    :cond_8
    new-instance v1, Lb/k/b/a1;

    const-string v2, " did not call through to super.onAttach()"

    invoke-static {v5, v0, v2}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public d()I
    .locals 12

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->s:Lb/k/b/c0;

    if-nez v1, :cond_0

    iget v0, v0, Lb/k/b/m;->b:I

    return v0

    :cond_0
    iget v1, p0, Lb/k/b/i0;->e:I

    iget-object v0, v0, Lb/k/b/m;->N:Lb/m/d$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v8, v0, Lb/k/b/m;->n:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Lb/k/b/m;->o:Z

    if-eqz v8, :cond_5

    iget v0, p0, Lb/k/b/i0;->e:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget v8, p0, Lb/k/b/i0;->e:I

    if-ge v8, v5, :cond_6

    iget v0, v0, Lb/k/b/m;->b:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v0, v0, Lb/k/b/m;->l:Z

    if-nez v0, :cond_8

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v8, v0, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Lb/k/b/m;->s()Lb/k/b/c0;

    move-result-object v0

    .line 1
    invoke-virtual {v0}, Lb/k/b/c0;->K()Lb/k/b/z0;

    move-result-object v0

    invoke-static {v8, v0}, Lb/k/b/y0;->g(Landroid/view/ViewGroup;Lb/k/b/z0;)Lb/k/b/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v8, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 4
    invoke-virtual {v0, v8}, Lb/k/b/y0;->d(Lb/k/b/m;)Lb/k/b/y0$d;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 5
    iget-object v0, v8, Lb/k/b/y0$d;->b:Lb/k/b/y0$d$b;

    :goto_2
    move-object v9, v0

    goto :goto_4

    .line 6
    :cond_9
    iget-object v8, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 7
    iget-object v0, v0, Lb/k/b/y0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/k/b/y0$d;

    .line 8
    iget-object v11, v10, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 9
    invoke-virtual {v11, v8}, Lb/k/b/m;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 10
    iget-boolean v11, v10, Lb/k/b/y0$d;->f:Z

    if-nez v11, :cond_a

    goto :goto_3

    :cond_b
    move-object v10, v9

    :goto_3
    if-eqz v10, :cond_c

    .line 11
    iget-object v0, v10, Lb/k/b/y0$d;->b:Lb/k/b/y0$d$b;

    goto :goto_2

    .line 12
    :cond_c
    :goto_4
    sget-object v0, Lb/k/b/y0$d$b;->c:Lb/k/b/y0$d$b;

    if-ne v9, v0, :cond_d

    const/4 v0, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_d
    sget-object v0, Lb/k/b/y0$d$b;->d:Lb/k/b/y0$d$b;

    if-ne v9, v0, :cond_e

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v4, v0, Lb/k/b/m;->m:Z

    if-eqz v4, :cond_10

    invoke-virtual {v0}, Lb/k/b/m;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_f
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_10
    :goto_5
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v2, v0, Lb/k/b/m;->G:Z

    if-eqz v2, :cond_11

    iget v0, v0, Lb/k/b/m;->b:I

    if-ge v0, v3, :cond_11

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_11
    invoke-static {v6}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeExpectedState() of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v1
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto CREATED: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v1, v0, Lb/k/b/m;->M:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v3, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lb/k/b/b0;->h(Lb/k/b/m;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    .line 1
    iget-object v3, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v3}, Lb/k/b/c0;->T()V

    iput v2, v0, Lb/k/b/m;->b:I

    iput-boolean v4, v0, Lb/k/b/m;->D:Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v3, v5, :cond_1

    iget-object v3, v0, Lb/k/b/m;->O:Lb/m/h;

    new-instance v5, Landroidx/fragment/app/Fragment$5;

    invoke-direct {v5, v0}, Landroidx/fragment/app/Fragment$5;-><init>(Lb/k/b/m;)V

    invoke-virtual {v3, v5}, Lb/m/h;->a(Lb/m/f;)V

    :cond_1
    iget-object v3, v0, Lb/k/b/m;->R:Lb/p/b;

    invoke-virtual {v3, v1}, Lb/p/b;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lb/k/b/m;->L(Landroid/os/Bundle;)V

    iput-boolean v2, v0, Lb/k/b/m;->M:Z

    iget-boolean v1, v0, Lb/k/b/m;->D:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lb/k/b/m;->O:Lb/m/h;

    sget-object v1, Lb/m/d$a;->ON_CREATE:Lb/m/d$a;

    invoke-virtual {v0, v1}, Lb/m/h;->d(Lb/m/d$a;)V

    .line 2
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v1, Lb/k/b/m;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v4}, Lb/k/b/b0;->c(Lb/k/b/m;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance v1, Lb/k/b/a1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onCreate()"

    invoke-static {v2, v0, v3}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_3
    iget-object v1, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const-string v3, "android:support:fragments"

    .line 5
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v3, v1}, Lb/k/b/c0;->Y(Landroid/os/Parcelable;)V

    iget-object v0, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v0}, Lb/k/b/c0;->m()V

    .line 6
    :cond_4
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v2, v0, Lb/k/b/m;->b:I

    :goto_0
    return-void
.end method

.method public f()V
    .locals 7

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v0, v0, Lb/k/b/m;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_1

    const-string v0, "moveto CREATE_VIEW: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v0, v2}, Lb/k/b/m;->R(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, v0, Lb/k/b/m;->L:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 2
    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v4, v3, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    iget v4, v3, Lb/k/b/m;->x:I

    if-eqz v4, :cond_5

    const/4 v0, -0x1

    if-eq v4, v0, :cond_4

    iget-object v0, v3, Lb/k/b/m;->s:Lb/k/b/c0;

    .line 3
    iget-object v0, v0, Lb/k/b/c0;->r:Lb/k/b/v;

    .line 4
    invoke-virtual {v0, v4}, Lb/k/b/v;->g(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v4, v3, Lb/k/b/m;->p:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lb/k/b/m;->x()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget v1, v1, Lb/k/b/m;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "unknown"

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No view found for id 0x"

    invoke-static {v2}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget v3, v3, Lb/k/b/m;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-object v0, v3, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    iget-object v4, v3, Lb/k/b/m;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0, v4}, Lb/k/b/m;->e0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v2, Lb/k/b/m;->F:Landroid/view/View;

    const/4 v3, 0x2

    if-eqz v2, :cond_a

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v5, v2, Lb/k/b/m;->F:Landroid/view/View;

    const v6, 0x7f0800ab

    invoke-virtual {v5, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lb/k/b/i0;->b()V

    :cond_6
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v2, v0, Lb/k/b/m;->z:Z

    if-eqz v2, :cond_7

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-static {v0}, Lb/h/j/q;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-static {v0}, Lb/h/j/q;->D(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    new-instance v2, Lb/k/b/i0$a;

    invoke-direct {v2, p0, v0}, Lb/k/b/i0$a;-><init>(Lb/k/b/i0;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 5
    invoke-virtual {v0}, Lb/k/b/m;->c0()V

    iget-object v0, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 6
    invoke-virtual {v0, v3}, Lb/k/b/c0;->w(I)V

    .line 7
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v5, v2, Lb/k/b/m;->F:Landroid/view/View;

    iget-object v6, v2, Lb/k/b/m;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v5, v6, v4}, Lb/k/b/b0;->m(Lb/k/b/m;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v2, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    iget-object v4, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 8
    invoke-virtual {v4}, Lb/k/b/m;->g()Lb/k/b/m$b;

    move-result-object v4

    iput v2, v4, Lb/k/b/m$b;->n:F

    .line 9
    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v4, v2, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

    if-nez v0, :cond_a

    iget-object v0, v2, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 10
    invoke-virtual {v2}, Lb/k/b/m;->g()Lb/k/b/m$b;

    move-result-object v2

    iput-object v0, v2, Lb/k/b/m$b;->o:Landroid/view/View;

    .line 11
    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Saved focused view "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for Fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v3, v0, Lb/k/b/m;->b:I

    return-void
.end method

.method public g()V
    .locals 7

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "movefrom CREATED: "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v3, v1, Lb/k/b/m;->m:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lb/k/b/m;->C()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v3, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    .line 1
    iget-object v3, v3, Lb/k/b/j0;->c:Lb/k/b/f0;

    .line 2
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v3, v6}, Lb/k/b/f0;->c(Lb/k/b/m;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_d

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v3, v3, Lb/k/b/m;->t:Lb/k/b/z;

    instance-of v6, v3, Lb/m/u;

    if-eqz v6, :cond_4

    iget-object v3, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    .line 3
    iget-object v3, v3, Lb/k/b/j0;->c:Lb/k/b/f0;

    .line 4
    iget-boolean v3, v3, Lb/k/b/f0;->f:Z

    goto :goto_3

    .line 5
    :cond_4
    iget-object v3, v3, Lb/k/b/z;->c:Landroid/content/Context;

    .line 6
    instance-of v6, v3, Landroid/app/Activity;

    if-eqz v6, :cond_5

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    xor-int/2addr v3, v4

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    :goto_3
    if-nez v1, :cond_6

    if-eqz v3, :cond_9

    :cond_6
    iget-object v1, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    .line 7
    iget-object v1, v1, Lb/k/b/j0;->c:Lb/k/b/f0;

    .line 8
    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clearing non-config state for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, v1, Lb/k/b/f0;->c:Ljava/util/HashMap;

    iget-object v2, v3, Lb/k/b/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/b/f0;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lb/k/b/f0;->a()V

    iget-object v0, v1, Lb/k/b/f0;->c:Ljava/util/HashMap;

    iget-object v2, v3, Lb/k/b/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, v1, Lb/k/b/f0;->d:Ljava/util/HashMap;

    iget-object v2, v3, Lb/k/b/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/m/t;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lb/m/t;->a()V

    iget-object v0, v1, Lb/k/b/f0;->d:Ljava/util/HashMap;

    iget-object v1, v3, Lb/k/b/m;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_9
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 11
    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v1}, Lb/k/b/c0;->o()V

    iget-object v1, v0, Lb/k/b/m;->O:Lb/m/h;

    sget-object v2, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    invoke-virtual {v1, v2}, Lb/m/h;->d(Lb/m/d$a;)V

    iput v5, v0, Lb/k/b/m;->b:I

    iput-boolean v5, v0, Lb/k/b/m;->D:Z

    iput-boolean v5, v0, Lb/k/b/m;->M:Z

    .line 12
    iput-boolean v4, v0, Lb/k/b/m;->D:Z

    .line 13
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1, v5}, Lb/k/b/b0;->d(Lb/k/b/m;Z)V

    iget-object v0, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    invoke-virtual {v0}, Lb/k/b/j0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/b/i0;

    if-eqz v1, :cond_a

    .line 14
    iget-object v1, v1, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 15
    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v2, Lb/k/b/m;->f:Ljava/lang/String;

    iget-object v3, v1, Lb/k/b/m;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-object v2, v1, Lb/k/b/m;->h:Lb/k/b/m;

    const/4 v2, 0x0

    iput-object v2, v1, Lb/k/b/m;->i:Ljava/lang/String;

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->i:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v2, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    invoke-virtual {v2, v1}, Lb/k/b/j0;->d(Ljava/lang/String;)Lb/k/b/m;

    move-result-object v1

    iput-object v1, v0, Lb/k/b/m;->h:Lb/k/b/m;

    :cond_c
    iget-object v0, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    invoke-virtual {v0, p0}, Lb/k/b/j0;->k(Lb/k/b/i0;)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->i:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    invoke-virtual {v1, v0}, Lb/k/b/j0;->d(Ljava/lang/String;)Lb/k/b/m;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lb/k/b/m;->B:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-object v0, v1, Lb/k/b/m;->h:Lb/k/b/m;

    :cond_e
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v5, v0, Lb/k/b/m;->b:I

    :goto_5
    return-void
.end method

.method public h()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "movefrom CREATE_VIEW: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0}, Lb/k/b/m;->f0()V

    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/k/b/b0;->n(Lb/k/b/m;Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    iput-object v1, v0, Lb/k/b/m;->F:Landroid/view/View;

    iput-object v1, v0, Lb/k/b/m;->P:Lb/k/b/w0;

    iget-object v0, v0, Lb/k/b/m;->Q:Lb/m/l;

    invoke-virtual {v0, v1}, Lb/m/l;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-boolean v2, v0, Lb/k/b/m;->o:Z

    return-void
.end method

.method public i()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    const-string v1, "movefrom ATTACHED: "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    const/4 v3, -0x1

    .line 1
    iput v3, v1, Lb/k/b/m;->b:I

    const/4 v4, 0x0

    iput-boolean v4, v1, Lb/k/b/m;->D:Z

    invoke-virtual {v1}, Lb/k/b/m;->Q()V

    const/4 v5, 0x0

    iput-object v5, v1, Lb/k/b/m;->L:Landroid/view/LayoutInflater;

    iget-boolean v6, v1, Lb/k/b/m;->D:Z

    if-eqz v6, :cond_6

    iget-object v6, v1, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 2
    iget-boolean v7, v6, Lb/k/b/c0;->D:Z

    if-nez v7, :cond_1

    .line 3
    invoke-virtual {v6}, Lb/k/b/c0;->o()V

    new-instance v6, Lb/k/b/d0;

    invoke-direct {v6}, Lb/k/b/d0;-><init>()V

    iput-object v6, v1, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 4
    :cond_1
    iget-object v1, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v6, v4}, Lb/k/b/b0;->e(Lb/k/b/m;Z)V

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v3, v1, Lb/k/b/m;->b:I

    iput-object v5, v1, Lb/k/b/m;->t:Lb/k/b/z;

    iput-object v5, v1, Lb/k/b/m;->v:Lb/k/b/m;

    iput-object v5, v1, Lb/k/b/m;->s:Lb/k/b/c0;

    iget-boolean v3, v1, Lb/k/b/m;->m:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lb/k/b/m;->C()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, p0, Lb/k/b/i0;->b:Lb/k/b/j0;

    .line 5
    iget-object v1, v1, Lb/k/b/j0;->c:Lb/k/b/f0;

    .line 6
    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v1, v3}, Lb/k/b/f0;->c(Lb/k/b/m;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "initState called for fragment: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lb/m/h;

    invoke-direct {v1, v0}, Lb/m/h;-><init>(Lb/m/g;)V

    iput-object v1, v0, Lb/k/b/m;->O:Lb/m/h;

    .line 9
    new-instance v1, Lb/p/b;

    invoke-direct {v1, v0}, Lb/p/b;-><init>(Lb/p/c;)V

    .line 10
    iput-object v1, v0, Lb/k/b/m;->R:Lb/p/b;

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/k/b/m;->f:Ljava/lang/String;

    iput-boolean v4, v0, Lb/k/b/m;->l:Z

    iput-boolean v4, v0, Lb/k/b/m;->m:Z

    iput-boolean v4, v0, Lb/k/b/m;->n:Z

    iput-boolean v4, v0, Lb/k/b/m;->o:Z

    iput-boolean v4, v0, Lb/k/b/m;->p:Z

    iput v4, v0, Lb/k/b/m;->r:I

    iput-object v5, v0, Lb/k/b/m;->s:Lb/k/b/c0;

    new-instance v1, Lb/k/b/d0;

    invoke-direct {v1}, Lb/k/b/d0;-><init>()V

    iput-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    iput-object v5, v0, Lb/k/b/m;->t:Lb/k/b/z;

    iput v4, v0, Lb/k/b/m;->w:I

    iput v4, v0, Lb/k/b/m;->x:I

    iput-object v5, v0, Lb/k/b/m;->y:Ljava/lang/String;

    iput-boolean v4, v0, Lb/k/b/m;->z:Z

    iput-boolean v4, v0, Lb/k/b/m;->A:Z

    :cond_5
    return-void

    .line 12
    :cond_6
    new-instance v0, Lb/k/b/a1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onDetach()"

    invoke-static {v2, v1, v3}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()V
    .locals 6

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v1, v0, Lb/k/b/m;->n:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lb/k/b/m;->o:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lb/k/b/m;->q:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto CREATE_VIEW: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    .line 1
    invoke-virtual {v0, v1}, Lb/k/b/m;->R(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, v0, Lb/k/b/m;->L:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v3, v3, Lb/k/b/m;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lb/k/b/m;->e0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v0, Lb/k/b/m;->F:Landroid/view/View;

    const v3, 0x7f0800ab

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v2, v0, Lb/k/b/m;->z:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 3
    invoke-virtual {v0}, Lb/k/b/m;->c0()V

    iget-object v0, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v0, v2}, Lb/k/b/c0;->w(I)V

    .line 5
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v3, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v4, v3, Lb/k/b/m;->F:Landroid/view/View;

    iget-object v5, v3, Lb/k/b/m;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v3, v4, v5, v1}, Lb/k/b/b0;->m(Lb/k/b/m;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v2, v0, Lb/k/b/m;->b:I

    :cond_2
    return-void
.end method

.method public k()V
    .locals 9

    sget-object v0, Lb/k/b/y0$d$b;->b:Lb/k/b/y0$d$b;

    iget-boolean v1, p0, Lb/k/b/i0;->d:Z

    const-string v2, "FragmentManager"

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lb/k/b/i0;->d:Z

    :goto_0
    invoke-virtual {p0}, Lb/k/b/i0;->d()I

    move-result v5

    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget v7, v6, Lb/k/b/m;->b:I

    if-eq v5, v7, :cond_9

    if-le v5, v7, :cond_4

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lb/k/b/i0;->n()V

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x6

    iput v5, v6, Lb/k/b/m;->b:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lb/k/b/i0;->p()V

    goto :goto_0

    :pswitch_3
    iget-object v5, v6, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, v6, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lb/k/b/m;->s()Lb/k/b/c0;

    move-result-object v6

    .line 3
    invoke-virtual {v6}, Lb/k/b/c0;->K()Lb/k/b/z0;

    move-result-object v6

    invoke-static {v5, v6}, Lb/k/b/y0;->g(Landroid/view/ViewGroup;Lb/k/b/z0;)Lb/k/b/y0;

    move-result-object v5

    .line 4
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v6, v6, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-static {v6}, Lb/k/b/y0$d$c;->b(I)Lb/k/b/y0$d$c;

    move-result-object v6

    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v8, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v7, Lb/k/b/y0$d$b;->c:Lb/k/b/y0$d$b;

    invoke-virtual {v5, v6, v7, p0}, Lb/k/b/y0;->a(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/i0;)V

    .line 8
    :cond_3
    iget-object v5, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    const/4 v6, 0x4

    iput v6, v5, Lb/k/b/m;->b:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lb/k/b/i0;->a()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lb/k/b/i0;->j()V

    invoke-virtual {p0}, Lb/k/b/i0;->f()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lb/k/b/i0;->e()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lb/k/b/i0;->c()V

    goto :goto_0

    :cond_4
    add-int/lit8 v7, v7, -0x1

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lb/k/b/i0;->l()V

    goto/16 :goto_0

    :pswitch_9
    const/4 v5, 0x5

    iput v5, v6, Lb/k/b/m;->b:I

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lb/k/b/i0;->q()V

    goto/16 :goto_0

    :pswitch_b
    const/4 v5, 0x3

    invoke-static {v5}, Lb/k/b/c0;->M(I)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v7, v6, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v6, v6, Lb/k/b/m;->d:Landroid/util/SparseArray;

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lb/k/b/i0;->o()V

    :cond_6
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v7, v6, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lb/k/b/m;->s()Lb/k/b/c0;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Lb/k/b/c0;->K()Lb/k/b/z0;

    move-result-object v6

    invoke-static {v7, v6}, Lb/k/b/y0;->g(Landroid/view/ViewGroup;Lb/k/b/z0;)Lb/k/b/y0;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v8, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 12
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v7, Lb/k/b/y0$d$c;->b:Lb/k/b/y0$d$c;

    sget-object v8, Lb/k/b/y0$d$b;->d:Lb/k/b/y0$d$b;

    invoke-virtual {v6, v7, v8, p0}, Lb/k/b/y0;->a(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/i0;)V

    .line 13
    :cond_8
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v5, v6, Lb/k/b/m;->b:I

    goto/16 :goto_0

    :pswitch_c
    iput-boolean v1, v6, Lb/k/b/m;->o:Z

    iput v3, v6, Lb/k/b/m;->b:I

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lb/k/b/i0;->h()V

    iget-object v5, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput v4, v5, Lb/k/b/m;->b:I

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lb/k/b/i0;->g()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lb/k/b/i0;->i()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, v6, Lb/k/b/m;->J:Z

    if-eqz v5, :cond_f

    iget-object v5, v6, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, v6, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    invoke-virtual {v6}, Lb/k/b/m;->s()Lb/k/b/c0;

    move-result-object v6

    .line 14
    invoke-virtual {v6}, Lb/k/b/c0;->K()Lb/k/b/z0;

    move-result-object v6

    invoke-static {v5, v6}, Lb/k/b/y0;->g(Landroid/view/ViewGroup;Lb/k/b/z0;)Lb/k/b/y0;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v6, v6, Lb/k/b/m;->z:Z

    if-eqz v6, :cond_b

    .line 16
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 18
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v2, Lb/k/b/y0$d$c;->d:Lb/k/b/y0$d$c;

    invoke-virtual {v5, v2, v0, p0}, Lb/k/b/y0;->a(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/i0;)V

    goto :goto_1

    .line 19
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 21
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v2, Lb/k/b/y0$d$c;->c:Lb/k/b/y0$d$c;

    invoke-virtual {v5, v2, v0, p0}, Lb/k/b/y0;->a(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/i0;)V

    .line 22
    :cond_d
    :goto_1
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v2, v0, Lb/k/b/m;->s:Lb/k/b/c0;

    if-eqz v2, :cond_e

    .line 23
    iget-boolean v3, v0, Lb/k/b/m;->l:Z

    if-eqz v3, :cond_e

    invoke-virtual {v2, v0}, Lb/k/b/c0;->N(Lb/k/b/m;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v4, v2, Lb/k/b/c0;->A:Z

    .line 24
    :cond_e
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-boolean v1, v0, Lb/k/b/m;->J:Z

    invoke-virtual {v0}, Lb/k/b/m;->S()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    iput-boolean v1, p0, Lb/k/b/i0;->d:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lb/k/b/i0;->d:Z

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public l()V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "movefrom RESUMED: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 1
    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v1, v2}, Lb/k/b/c0;->w(I)V

    .line 3
    iget-object v1, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/k/b/m;->P:Lb/k/b/w0;

    sget-object v2, Lb/m/d$a;->ON_PAUSE:Lb/m/d$a;

    invoke-virtual {v1, v2}, Lb/k/b/w0;->e(Lb/m/d$a;)V

    :cond_1
    iget-object v1, v0, Lb/k/b/m;->O:Lb/m/h;

    sget-object v2, Lb/m/d$a;->ON_PAUSE:Lb/m/d$a;

    invoke-virtual {v1, v2}, Lb/m/h;->d(Lb/m/d$a;)V

    const/4 v1, 0x6

    iput v1, v0, Lb/k/b/m;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/k/b/m;->D:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v0, Lb/k/b/m;->D:Z

    .line 5
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v2, v1}, Lb/k/b/b0;->f(Lb/k/b/m;Z)V

    return-void
.end method

.method public m(Ljava/lang/ClassLoader;)V
    .locals 3

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, p1, Lb/k/b/m;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lb/k/b/m;->d:Landroid/util/SparseArray;

    iget-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, p1, Lb/k/b/m;->c:Landroid/os/Bundle;

    const-string v1, "android:view_registry_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lb/k/b/m;->e:Landroid/os/Bundle;

    iget-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, p1, Lb/k/b/m;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lb/k/b/m;->i:Ljava/lang/String;

    iget-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, p1, Lb/k/b/m;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lb/k/b/m;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lb/k/b/m;->j:I

    :cond_1
    iget-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iget-object v1, p1, Lb/k/b/m;->c:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lb/k/b/m;->H:Z

    iget-object p1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-boolean v1, p1, Lb/k/b/m;->H:Z

    if-nez v1, :cond_2

    iput-boolean v0, p1, Lb/k/b/m;->G:Z

    :cond_2
    return-void
.end method

.method public n()V
    .locals 8

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    const-string v0, "moveto RESUMED: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 1
    iget-object v2, v0, Lb/k/b/m;->I:Lb/k/b/m$b;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lb/k/b/m$b;->o:Landroid/view/View;

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 2
    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-ne v2, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v6, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v6, v6, Lb/k/b/m;->F:Landroid/view/View;

    if-ne v0, v6, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    const/4 v6, 0x2

    invoke-static {v6}, Lb/k/b/c0;->M(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestFocus: Restoring focused view "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    const-string v0, "succeeded"

    goto :goto_4

    :cond_5
    const-string v0, "failed"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v3}, Lb/k/b/m;->o0(Landroid/view/View;)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 4
    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v1}, Lb/k/b/c0;->T()V

    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v1, v4}, Lb/k/b/c0;->C(Z)Z

    const/4 v1, 0x7

    iput v1, v0, Lb/k/b/m;->b:I

    iput-boolean v5, v0, Lb/k/b/m;->D:Z

    .line 5
    iput-boolean v4, v0, Lb/k/b/m;->D:Z

    .line 6
    iget-object v2, v0, Lb/k/b/m;->O:Lb/m/h;

    sget-object v4, Lb/m/d$a;->ON_RESUME:Lb/m/d$a;

    invoke-virtual {v2, v4}, Lb/m/h;->d(Lb/m/d$a;)V

    iget-object v2, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lb/k/b/m;->P:Lb/k/b/w0;

    invoke-virtual {v2, v4}, Lb/k/b/w0;->e(Lb/m/d$a;)V

    :cond_7
    iget-object v0, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 7
    iput-boolean v5, v0, Lb/k/b/c0;->B:Z

    iput-boolean v5, v0, Lb/k/b/c0;->C:Z

    iget-object v2, v0, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 8
    iput-boolean v5, v2, Lb/k/b/f0;->g:Z

    .line 9
    invoke-virtual {v0, v1}, Lb/k/b/c0;->w(I)V

    .line 10
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1, v5}, Lb/k/b/b0;->i(Lb/k/b/m;Z)V

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-object v3, v0, Lb/k/b/m;->c:Landroid/os/Bundle;

    iput-object v3, v0, Lb/k/b/m;->d:Landroid/util/SparseArray;

    iput-object v3, v0, Lb/k/b/m;->e:Landroid/os/Bundle;

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v1, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-object v0, v1, Lb/k/b/m;->d:Landroid/util/SparseArray;

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iget-object v1, v1, Lb/k/b/m;->P:Lb/k/b/w0;

    .line 1
    iget-object v1, v1, Lb/k/b/w0;->d:Lb/p/b;

    invoke-virtual {v1, v0}, Lb/p/b;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    iput-object v0, v1, Lb/k/b/m;->e:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public p()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moveto STARTED: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 1
    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    invoke-virtual {v1}, Lb/k/b/c0;->T()V

    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lb/k/b/c0;->C(Z)Z

    const/4 v1, 0x5

    iput v1, v0, Lb/k/b/m;->b:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lb/k/b/m;->D:Z

    invoke-virtual {v0}, Lb/k/b/m;->a0()V

    iget-boolean v3, v0, Lb/k/b/m;->D:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lb/k/b/m;->O:Lb/m/h;

    sget-object v4, Lb/m/d$a;->ON_START:Lb/m/d$a;

    invoke-virtual {v3, v4}, Lb/m/h;->d(Lb/m/d$a;)V

    iget-object v3, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lb/k/b/m;->P:Lb/k/b/w0;

    invoke-virtual {v3, v4}, Lb/k/b/w0;->e(Lb/m/d$a;)V

    :cond_1
    iget-object v0, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    .line 2
    iput-boolean v2, v0, Lb/k/b/c0;->B:Z

    iput-boolean v2, v0, Lb/k/b/c0;->C:Z

    iget-object v3, v0, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 3
    iput-boolean v2, v3, Lb/k/b/f0;->g:Z

    .line 4
    invoke-virtual {v0, v1}, Lb/k/b/c0;->w(I)V

    .line 5
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1, v2}, Lb/k/b/b0;->k(Lb/k/b/m;Z)V

    return-void

    .line 6
    :cond_2
    new-instance v1, Lb/k/b/a1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onStart()"

    invoke-static {v2, v0, v3}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public q()V
    .locals 4

    const/4 v0, 0x3

    invoke-static {v0}, Lb/k/b/c0;->M(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "movefrom STARTED: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 1
    iget-object v1, v0, Lb/k/b/m;->u:Lb/k/b/c0;

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lb/k/b/c0;->C:Z

    iget-object v3, v1, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 3
    iput-boolean v2, v3, Lb/k/b/f0;->g:Z

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v1, v2}, Lb/k/b/c0;->w(I)V

    .line 5
    iget-object v1, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lb/k/b/m;->P:Lb/k/b/w0;

    sget-object v3, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    invoke-virtual {v1, v3}, Lb/k/b/w0;->e(Lb/m/d$a;)V

    :cond_1
    iget-object v1, v0, Lb/k/b/m;->O:Lb/m/h;

    sget-object v3, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    invoke-virtual {v1, v3}, Lb/m/h;->d(Lb/m/d$a;)V

    iput v2, v0, Lb/k/b/m;->b:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/k/b/m;->D:Z

    invoke-virtual {v0}, Lb/k/b/m;->b0()V

    iget-boolean v2, v0, Lb/k/b/m;->D:Z

    if-eqz v2, :cond_2

    .line 6
    iget-object v0, p0, Lb/k/b/i0;->a:Lb/k/b/b0;

    iget-object v2, p0, Lb/k/b/i0;->c:Lb/k/b/m;

    invoke-virtual {v0, v2, v1}, Lb/k/b/b0;->l(Lb/k/b/m;Z)V

    return-void

    .line 7
    :cond_2
    new-instance v1, Lb/k/b/a1;

    const-string v2, "Fragment "

    const-string v3, " did not call through to super.onStop()"

    invoke-static {v2, v0, v3}, Lc/a/a/a/a;->c(Ljava/lang/String;Lb/k/b/m;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/k/b/a1;-><init>(Ljava/lang/String;)V

    throw v1
.end method
