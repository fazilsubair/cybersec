.class public Lb/q/q;
.super Lb/q/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/q$b;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:I

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/k;",
            ">;"
        }
    .end annotation
.end field

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/q/k;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/q/q;->z:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/q/q;->B:Z

    iput v0, p0, Lb/q/q;->C:I

    return-void
.end method


# virtual methods
.method public A(Lb/q/k$c;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lb/q/k;->t:Lb/q/k$c;

    .line 2
    iget v0, p0, Lb/q/q;->C:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lb/q/q;->C:I

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1}, Lb/q/k;->A(Lb/q/k$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Landroid/animation/TimeInterpolator;)Lb/q/k;
    .locals 3

    .line 1
    iget v0, p0, Lb/q/q;->C:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/q/q;->C:I

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1}, Lb/q/k;->B(Landroid/animation/TimeInterpolator;)Lb/q/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public C(Lb/q/f;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object v0, Lb/q/k;->w:Lb/q/f;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lb/q/k;->u:Lb/q/f;

    .line 2
    iget v0, p0, Lb/q/q;->C:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lb/q/q;->C:I

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    invoke-virtual {v1, p1}, Lb/q/k;->C(Lb/q/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public D(Lb/q/p;)V
    .locals 3

    iget v0, p0, Lb/q/q;->C:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb/q/q;->C:I

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1}, Lb/q/k;->D(Lb/q/p;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public E(J)Lb/q/k;
    .locals 0

    .line 1
    iput-wide p1, p0, Lb/q/k;->c:J

    return-object p0
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-super {p0, p1}, Lb/q/k;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/k;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/q/k;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public H(Lb/q/k;)Lb/q/q;
    .locals 5

    .line 1
    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lb/q/k;->j:Lb/q/q;

    .line 2
    iget-wide v0, p0, Lb/q/k;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-virtual {p1, v0, v1}, Lb/q/k;->z(J)Lb/q/k;

    :cond_0
    iget v0, p0, Lb/q/q;->C:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    .line 4
    invoke-virtual {p1, v0}, Lb/q/k;->B(Landroid/animation/TimeInterpolator;)Lb/q/k;

    :cond_1
    iget v0, p0, Lb/q/q;->C:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/q/k;->D(Lb/q/p;)V

    :cond_2
    iget v0, p0, Lb/q/q;->C:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lb/q/k;->u:Lb/q/f;

    .line 6
    invoke-virtual {p1, v0}, Lb/q/k;->C(Lb/q/f;)V

    :cond_3
    iget v0, p0, Lb/q/q;->C:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lb/q/k;->t:Lb/q/k$c;

    .line 8
    invoke-virtual {p1, v0}, Lb/q/k;->A(Lb/q/k$c;)V

    :cond_4
    return-object p0
.end method

.method public I(I)Lb/q/k;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/q/k;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public J(I)Lb/q/q;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/q/q;->z:Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v0, p0, Lb/q/q;->z:Z

    :goto_0
    return-object p0
.end method

.method public a(Lb/q/k$d;)Lb/q/k;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/q/k;->a(Lb/q/k$d;)Lb/q/k;

    return-object p0
.end method

.method public b(Landroid/view/View;)Lb/q/k;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    invoke-virtual {v1, p1}, Lb/q/k;->b(Landroid/view/View;)Lb/q/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/q/q;->j()Lb/q/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Lb/q/s;)V
    .locals 3

    iget-object v0, p1, Lb/q/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/q/k;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    iget-object v2, p1, Lb/q/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lb/q/k;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lb/q/k;->d(Lb/q/s;)V

    iget-object v2, p1, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Lb/q/s;)V
    .locals 3

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1}, Lb/q/k;->f(Lb/q/s;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lb/q/s;)V
    .locals 3

    iget-object v0, p1, Lb/q/s;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lb/q/k;->s(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    iget-object v2, p1, Lb/q/s;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Lb/q/k;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lb/q/k;->g(Lb/q/s;)V

    iget-object v2, p1, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j()Lb/q/k;
    .locals 5

    invoke-super {p0}, Lb/q/k;->j()Lb/q/k;

    move-result-object v0

    check-cast v0, Lb/q/q;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lb/q/q;->y:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/k;

    invoke-virtual {v3}, Lb/q/k;->j()Lb/q/k;

    move-result-object v3

    .line 1
    iget-object v4, v0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lb/q/k;->j:Lb/q/q;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public l(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lb/q/t;",
            "Lb/q/t;",
            "Ljava/util/ArrayList<",
            "Lb/q/s;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lb/q/s;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lb/q/k;->c:J

    .line 2
    iget-object v3, v0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lb/q/k;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    iget-boolean v5, v0, Lb/q/q;->z:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 3
    :cond_0
    iget-wide v9, v6, Lb/q/k;->c:J

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 4
    invoke-virtual {v6, v9, v10}, Lb/q/k;->E(J)Lb/q/k;

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1, v2}, Lb/q/k;->E(J)Lb/q/k;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v6 .. v11}, Lb/q/k;->l(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public u(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lb/q/k;->u(Landroid/view/View;)V

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1}, Lb/q/k;->u(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(Lb/q/k$d;)Lb/q/k;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/q/k;->v(Lb/q/k$d;)Lb/q/k;

    return-object p0
.end method

.method public w(Landroid/view/View;)Lb/q/k;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    invoke-virtual {v1, p1}, Lb/q/k;->w(Landroid/view/View;)Lb/q/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lb/q/k;->x(Landroid/view/View;)V

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1}, Lb/q/k;->x(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/q/k;->F()V

    invoke-virtual {p0}, Lb/q/k;->m()V

    return-void

    .line 1
    :cond_0
    new-instance v0, Lb/q/q$b;

    invoke-direct {v0, p0}, Lb/q/q$b;-><init>(Lb/q/q;)V

    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, v0}, Lb/q/k;->a(Lb/q/k$d;)Lb/q/k;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lb/q/q;->A:I

    .line 2
    iget-boolean v0, p0, Lb/q/q;->z:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    new-instance v3, Lb/q/q$a;

    invoke-direct {v3, p0, v2}, Lb/q/q$a;-><init>(Lb/q/q;Lb/q/k;)V

    invoke-virtual {v1, v3}, Lb/q/k;->a(Lb/q/k$d;)Lb/q/k;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/k;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lb/q/k;->y()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    invoke-virtual {v1}, Lb/q/k;->y()V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public z(J)Lb/q/k;
    .locals 3

    .line 1
    iput-wide p1, p0, Lb/q/k;->d:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-object v0, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/q/q;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/q/k;

    invoke-virtual {v2, p1, p2}, Lb/q/k;->z(J)Lb/q/k;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
