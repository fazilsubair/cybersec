.class public Lb/k/b/r0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/b/r0$b;,
        Lb/k/b/r0$a;
    }
.end annotation


# static fields
.field public static final a:[I

.field public static final b:Lb/k/b/t0;

.field public static final c:Lb/k/b/t0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb/k/b/r0;->a:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Lb/k/b/s0;

    invoke-direct {v0}, Lb/k/b/s0;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lb/k/b/r0;->b:Lb/k/b/t0;

    :try_start_0
    const-string v0, "b.q.e"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/b/t0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 2
    :catch_0
    sput-object v1, Lb/k/b/r0;->c:Lb/k/b/t0;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;Lb/e/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p1, Lb/e/f;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lb/e/f;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lb/h/j/q;->s(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static b(Lb/k/b/a;Lb/k/b/k0$a;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/a;",
            "Lb/k/b/k0$a;",
            "Landroid/util/SparseArray<",
            "Lb/k/b/r0$b;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p1, Lb/k/b/k0$a;->b:Lb/k/b/m;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lb/k/b/m;->x:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    sget-object v2, Lb/k/b/r0;->a:[I

    iget p1, p1, Lb/k/b/k0$a;->a:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Lb/k/b/k0$a;->a:I

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_3
    if-eqz p4, :cond_4

    iget-boolean p1, v0, Lb/k/b/m;->J:Z

    if-eqz p1, :cond_b

    iget-boolean p1, v0, Lb/k/b/m;->z:Z

    if-nez p1, :cond_b

    iget-boolean p1, v0, Lb/k/b/m;->l:Z

    if-eqz p1, :cond_b

    goto :goto_3

    :cond_4
    iget-boolean p1, v0, Lb/k/b/m;->z:Z

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    iget-boolean p1, v0, Lb/k/b/m;->J:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Lb/k/b/m;->l:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Lb/k/b/m;->z:Z

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_6
    iget-boolean p1, v0, Lb/k/b/m;->l:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v0, Lb/k/b/m;->z:Z

    if-nez p1, :cond_9

    goto :goto_1

    :cond_7
    iget-boolean p1, v0, Lb/k/b/m;->l:Z

    if-eqz p4, :cond_8

    if-nez p1, :cond_9

    iget-object p1, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget p1, v0, Lb/k/b/m;->K:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_9

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    iget-boolean p1, v0, Lb/k/b/m;->z:Z

    if-nez p1, :cond_9

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    move v4, p1

    const/4 p1, 0x0

    goto :goto_5

    :cond_a
    if-eqz p4, :cond_c

    :cond_b
    const/4 p1, 0x0

    goto :goto_4

    :cond_c
    iget-boolean p1, v0, Lb/k/b/m;->l:Z

    if-nez p1, :cond_b

    iget-boolean p1, v0, Lb/k/b/m;->z:Z

    if-nez p1, :cond_b

    :goto_3
    const/4 p1, 0x1

    :goto_4
    move v3, p1

    move p1, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/k/b/r0$b;

    if-eqz v3, :cond_e

    if-nez v5, :cond_d

    .line 1
    new-instance v3, Lb/k/b/r0$b;

    invoke-direct {v3}, Lb/k/b/r0$b;-><init>()V

    invoke-virtual {p2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v5, v3

    .line 2
    :cond_d
    iput-object v0, v5, Lb/k/b/r0$b;->a:Lb/k/b/m;

    iput-boolean p3, v5, Lb/k/b/r0$b;->b:Z

    iput-object p0, v5, Lb/k/b/r0$b;->c:Lb/k/b/a;

    :cond_e
    const/4 v3, 0x0

    if-nez p4, :cond_10

    if-eqz p1, :cond_10

    if-eqz v5, :cond_f

    iget-object p1, v5, Lb/k/b/r0$b;->d:Lb/k/b/m;

    if-ne p1, v0, :cond_f

    iput-object v3, v5, Lb/k/b/r0$b;->d:Lb/k/b/m;

    :cond_f
    iget-boolean p1, p0, Lb/k/b/k0;->o:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lb/k/b/a;->p:Lb/k/b/c0;

    invoke-virtual {p1, v0}, Lb/k/b/c0;->h(Lb/k/b/m;)Lb/k/b/i0;

    move-result-object v6

    .line 3
    iget-object v7, p1, Lb/k/b/c0;->c:Lb/k/b/j0;

    .line 4
    invoke-virtual {v7, v6}, Lb/k/b/j0;->j(Lb/k/b/i0;)V

    .line 5
    iget v6, p1, Lb/k/b/c0;->p:I

    invoke-virtual {p1, v0, v6}, Lb/k/b/c0;->S(Lb/k/b/m;I)V

    :cond_10
    if-eqz v4, :cond_13

    if-eqz v5, :cond_11

    .line 6
    iget-object p1, v5, Lb/k/b/r0$b;->d:Lb/k/b/m;

    if-nez p1, :cond_13

    :cond_11
    if-nez v5, :cond_12

    .line 7
    new-instance p1, Lb/k/b/r0$b;

    invoke-direct {p1}, Lb/k/b/r0$b;-><init>()V

    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v5, p1

    .line 8
    :cond_12
    iput-object v0, v5, Lb/k/b/r0$b;->d:Lb/k/b/m;

    iput-boolean p3, v5, Lb/k/b/r0$b;->e:Z

    iput-object p0, v5, Lb/k/b/r0$b;->f:Lb/k/b/a;

    :cond_13
    if-nez p4, :cond_14

    if-eqz v2, :cond_14

    if-eqz v5, :cond_14

    iget-object p0, v5, Lb/k/b/r0$b;->a:Lb/k/b/m;

    if-ne p0, v0, :cond_14

    iput-object v3, v5, Lb/k/b/r0$b;->a:Lb/k/b/m;

    :cond_14
    return-void
.end method

.method public static c(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/m;",
            "Lb/k/b/m;",
            "Z",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lb/k/b/m;->m()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/k/b/m;->m()V

    :goto_0
    return-void
.end method

.method public static d(Lb/k/b/t0;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/t0;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/k/b/t0;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Lb/k/b/t0;Lb/e/a;Ljava/lang/Object;Lb/k/b/r0$b;)Lb/e/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/t0;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lb/k/b/r0$b;",
            ")",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p3, Lb/k/b/r0$b;->a:Lb/k/b/m;

    .line 1
    iget-object v1, v0, Lb/k/b/m;->F:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Lb/e/f;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lb/e/a;

    invoke-direct {p2}, Lb/e/a;-><init>()V

    invoke-virtual {p0, p2, v1}, Lb/k/b/t0;->i(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Lb/k/b/r0$b;->c:Lb/k/b/a;

    iget-boolean p3, p3, Lb/k/b/r0$b;->b:Z

    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lb/k/b/m;->p()V

    iget-object p0, p0, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lb/k/b/m;->m()V

    iget-object p0, p0, Lb/k/b/k0;->n:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 3
    invoke-static {p2, p0}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 4
    invoke-virtual {p1}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object p0

    .line 5
    invoke-static {p2, p0}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 6
    :cond_2
    invoke-static {p1, p2}, Lb/k/b/r0;->m(Lb/e/a;Lb/e/a;)V

    return-object p2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lb/e/f;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lb/k/b/t0;Lb/e/a;Ljava/lang/Object;Lb/k/b/r0$b;)Lb/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/t0;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lb/k/b/r0$b;",
            ")",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lb/e/f;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p3, Lb/k/b/r0$b;->d:Lb/k/b/m;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    invoke-virtual {p2}, Lb/k/b/m;->j0()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/k/b/t0;->i(Ljava/util/Map;Landroid/view/View;)V

    iget-object p0, p3, Lb/k/b/r0$b;->f:Lb/k/b/a;

    iget-boolean p3, p3, Lb/k/b/r0$b;->e:Z

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lb/k/b/m;->m()V

    iget-object p0, p0, Lb/k/b/k0;->n:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lb/k/b/m;->p()V

    iget-object p0, p0, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 1
    invoke-static {v0, p0}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 2
    :cond_2
    invoke-virtual {v0}, Lb/e/a;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-static {p1, p0}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    return-object v0

    .line 4
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lb/e/f;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Lb/k/b/m;Lb/k/b/m;)Lb/k/b/t0;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb/k/b/m;->o()Ljava/lang/Object;

    invoke-virtual {p0}, Lb/k/b/m;->y()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lb/k/b/m;->A()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lb/k/b/m;->l()Ljava/lang/Object;

    invoke-virtual {p1}, Lb/k/b/m;->w()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1}, Lb/k/b/m;->z()Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    return-object p1

    :cond_4
    sget-object p0, Lb/k/b/r0;->b:Lb/k/b/t0;

    if-eqz p0, :cond_5

    invoke-static {p0, v0}, Lb/k/b/r0;->d(Lb/k/b/t0;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p0

    :cond_5
    sget-object v1, Lb/k/b/r0;->c:Lb/k/b/t0;

    if-eqz v1, :cond_6

    invoke-static {v1, v0}, Lb/k/b/r0;->d(Lb/k/b/t0;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    if-nez p0, :cond_7

    if-nez v1, :cond_7

    return-object p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Lb/k/b/t0;Ljava/lang/Object;Lb/k/b/m;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/t0;",
            "Ljava/lang/Object;",
            "Lb/k/b/m;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1
    iget-object p2, p2, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, v0, p2}, Lb/k/b/t0;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lb/k/b/t0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static i(Lb/k/b/t0;Lb/k/b/m;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lb/k/b/m;->w()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lb/k/b/m;->l()Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lb/k/b/t0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lb/k/b/t0;Lb/k/b/m;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lb/k/b/m;->y()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lb/k/b/m;->o()Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lb/k/b/t0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lb/e/a;Lb/k/b/r0$b;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lb/k/b/r0$b;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    iget-object p1, p1, Lb/k/b/r0$b;->c:Lb/k/b/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    iget-object p2, p1, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    iget-object p1, p1, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb/k/b/k0;->n:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Lb/k/b/t0;Lb/k/b/m;Lb/k/b/m;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lb/k/b/m;->A()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb/k/b/m;->z()Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lb/k/b/t0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/k/b/t0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lb/e/a;Lb/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lb/e/f;->d:I

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lb/e/f;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/e/f;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lb/e/f;->i(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static n(Lb/k/b/t0;Ljava/lang/Object;Ljava/lang/Object;Lb/e/a;ZLb/k/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/t0;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lb/k/b/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p5, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    iget-object p4, p5, Lb/k/b/k0;->n:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p0, p1, p3}, Lb/k/b/t0;->t(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p3}, Lb/k/b/t0;->t(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static o(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static p(Landroid/content/Context;Lb/k/b/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLb/k/b/r0$a;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lb/k/b/v;",
            "Ljava/util/ArrayList<",
            "Lb/k/b/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Lb/k/b/r0$a;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move/from16 v5, p4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v2, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/k/b/a;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1
    iget-object v6, v8, Lb/k/b/a;->p:Lb/k/b/c0;

    .line 2
    iget-object v6, v6, Lb/k/b/c0;->r:Lb/k/b/v;

    .line 3
    invoke-virtual {v6}, Lb/k/b/v;->h()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    iget-object v6, v8, Lb/k/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_1
    if-ltz v6, :cond_2

    iget-object v9, v8, Lb/k/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/k/b/k0$a;

    invoke-static {v8, v9, v4, v7, v3}, Lb/k/b/r0;->b(Lb/k/b/a;Lb/k/b/k0$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v7, v8, Lb/k/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_2

    iget-object v10, v8, Lb/k/b/k0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/k/b/k0$a;

    invoke-static {v8, v10, v4, v6, v3}, Lb/k/b/r0;->b(Lb/k/b/a;Lb/k/b/k0$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Landroid/view/View;

    move-object/from16 v8, p0

    invoke-direct {v5, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_2a

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 6
    new-instance v13, Lb/e/a;

    invoke-direct {v13}, Lb/e/a;-><init>()V

    add-int/lit8 v9, v2, -0x1

    move/from16 v12, p4

    :goto_5
    if-lt v9, v12, :cond_8

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb/k/b/a;

    invoke-virtual {v10, v8}, Lb/k/b/a;->i(I)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_8

    :cond_4
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-object v7, v10, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v11, :cond_5

    iget-object v11, v10, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    iget-object v10, v10, Lb/k/b/k0;->n:Ljava/util/ArrayList;

    goto :goto_6

    :cond_5
    iget-object v11, v10, Lb/k/b/k0;->m:Ljava/util/ArrayList;

    iget-object v10, v10, Lb/k/b/k0;->n:Ljava/util/ArrayList;

    move-object/from16 v36, v11

    move-object v11, v10

    move-object/from16 v10, v36

    :goto_6
    if-ge v6, v7, :cond_7

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Lb/e/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v13, v0, v2}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_6
    invoke-virtual {v13, v0, v1}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    goto :goto_6

    :cond_7
    :goto_8
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_5

    .line 7
    :cond_8
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/b/r0$b;

    invoke-virtual/range {p1 .. p1}, Lb/k/b/v;->h()Z

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v1, p1

    invoke-virtual {v1, v8}, Lb/k/b/v;->g(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_9

    goto/16 :goto_19

    :cond_9
    if-eqz v3, :cond_1a

    .line 8
    iget-object v7, v0, Lb/k/b/r0$b;->a:Lb/k/b/m;

    iget-object v8, v0, Lb/k/b/r0$b;->d:Lb/k/b/m;

    invoke-static {v8, v7}, Lb/k/b/r0;->g(Lb/k/b/m;Lb/k/b/m;)Lb/k/b/t0;

    move-result-object v9

    if-nez v9, :cond_b

    move-object/from16 v30, v4

    move/from16 v31, v14

    move/from16 v32, v15

    :cond_a
    :goto_9
    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_b
    iget-boolean v10, v0, Lb/k/b/r0$b;->b:Z

    iget-boolean v11, v0, Lb/k/b/r0$b;->e:Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v7, v10}, Lb/k/b/r0;->i(Lb/k/b/t0;Lb/k/b/m;Z)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v8, v11}, Lb/k/b/r0;->j(Lb/k/b/t0;Lb/k/b/m;Z)Ljava/lang/Object;

    move-result-object v11

    .line 9
    iget-object v3, v0, Lb/k/b/r0$b;->a:Lb/k/b/m;

    move-object/from16 v30, v4

    iget-object v4, v0, Lb/k/b/r0$b;->d:Lb/k/b/m;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lb/k/b/m;->j0()Landroid/view/View;

    move-result-object v12

    move/from16 v31, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_c
    move/from16 v31, v14

    :goto_a
    if-eqz v3, :cond_15

    if-nez v4, :cond_d

    goto/16 :goto_e

    :cond_d
    iget-boolean v12, v0, Lb/k/b/r0$b;->b:Z

    invoke-virtual {v13}, Lb/e/f;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_e

    move/from16 v32, v15

    const/4 v14, 0x0

    goto :goto_b

    :cond_e
    invoke-static {v9, v3, v4, v12}, Lb/k/b/r0;->l(Lb/k/b/t0;Lb/k/b/m;Lb/k/b/m;Z)Ljava/lang/Object;

    move-result-object v14

    move/from16 v32, v15

    :goto_b
    invoke-static {v9, v13, v14, v0}, Lb/k/b/r0;->f(Lb/k/b/t0;Lb/e/a;Ljava/lang/Object;Lb/k/b/r0$b;)Lb/e/a;

    move-result-object v15

    move-object/from16 v33, v7

    invoke-static {v9, v13, v14, v0}, Lb/k/b/r0;->e(Lb/k/b/t0;Lb/e/a;Ljava/lang/Object;Lb/k/b/r0$b;)Lb/e/a;

    move-result-object v7

    invoke-virtual {v13}, Lb/e/f;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_11

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lb/e/f;->clear()V

    :cond_f
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lb/e/f;->clear()V

    :cond_10
    const/4 v14, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v16, v14

    invoke-virtual {v13}, Lb/e/a;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-static {v1, v15, v14}, Lb/k/b/r0;->a(Ljava/util/ArrayList;Lb/e/a;Ljava/util/Collection;)V

    invoke-virtual {v13}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-static {v6, v7, v14}, Lb/k/b/r0;->a(Ljava/util/ArrayList;Lb/e/a;Ljava/util/Collection;)V

    move-object/from16 v14, v16

    :goto_c
    if-nez v10, :cond_12

    if-nez v11, :cond_12

    if-nez v14, :cond_12

    move-object/from16 v35, v6

    move-object/from16 v34, v13

    goto :goto_f

    :cond_12
    move-object/from16 v34, v13

    const/4 v13, 0x1

    invoke-static {v3, v4, v12, v15, v13}, Lb/k/b/r0;->c(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Z)V

    if-eqz v14, :cond_14

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v14, v5, v1}, Lb/k/b/t0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-boolean v13, v0, Lb/k/b/r0$b;->e:Z

    move-object/from16 v35, v6

    iget-object v6, v0, Lb/k/b/r0$b;->f:Lb/k/b/a;

    move-object/from16 v16, v9

    move-object/from16 v17, v14

    move-object/from16 v18, v11

    move-object/from16 v19, v15

    move/from16 v20, v13

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v21}, Lb/k/b/r0;->n(Lb/k/b/t0;Ljava/lang/Object;Ljava/lang/Object;Lb/e/a;ZLb/k/b/a;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v7, v0, v10, v12}, Lb/k/b/r0;->k(Lb/e/a;Lb/k/b/r0$b;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v9, v10, v6}, Lb/k/b/t0;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_13
    move-object/from16 v27, v0

    move-object/from16 v29, v6

    goto :goto_d

    :cond_14
    move-object/from16 v35, v6

    const/16 v27, 0x0

    const/16 v29, 0x0

    :goto_d
    new-instance v0, Lb/k/b/p0;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move/from16 v25, v12

    move-object/from16 v26, v7

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Lb/k/b/p0;-><init>(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Landroid/view/View;Lb/k/b/t0;Landroid/graphics/Rect;)V

    invoke-static {v2, v0}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    move-object v6, v14

    goto :goto_10

    :cond_15
    :goto_e
    move-object/from16 v35, v6

    move-object/from16 v33, v7

    move-object/from16 v34, v13

    move/from16 v32, v15

    :goto_f
    const/4 v6, 0x0

    :goto_10
    if-nez v10, :cond_16

    if-nez v6, :cond_16

    if-nez v11, :cond_16

    goto/16 :goto_9

    .line 10
    :cond_16
    invoke-static {v9, v11, v8, v1, v5}, Lb/k/b/r0;->h(Lb/k/b/t0;Ljava/lang/Object;Lb/k/b/m;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v3, v33

    move-object/from16 v4, v35

    invoke-static {v9, v10, v3, v4, v5}, Lb/k/b/r0;->h(Lb/k/b/t0;Ljava/lang/Object;Lb/k/b/m;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v7, 0x4

    invoke-static {v3, v7}, Lb/k/b/r0;->o(Ljava/util/ArrayList;I)V

    .line 11
    invoke-virtual {v9, v11, v10, v6}, Lb/k/b/t0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v8, :cond_18

    if-eqz v0, :cond_18

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_17

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_18

    :cond_17
    new-instance v12, Lb/h/f/a;

    invoke-direct {v12}, Lb/h/f/a;-><init>()V

    move-object/from16 v13, p7

    check-cast v13, Lb/k/b/c0$d;

    invoke-virtual {v13, v8, v12}, Lb/k/b/c0$d;->b(Lb/k/b/m;Lb/h/f/a;)V

    new-instance v14, Lb/k/b/l0;

    invoke-direct {v14, v13, v8, v12}, Lb/k/b/l0;-><init>(Lb/k/b/r0$a;Lb/k/b/m;Lb/h/f/a;)V

    invoke-virtual {v9, v8, v7, v12, v14}, Lb/k/b/t0;->u(Lb/k/b/m;Ljava/lang/Object;Lb/h/f/a;Ljava/lang/Runnable;)V

    :cond_18
    if-eqz v7, :cond_a

    if-eqz v8, :cond_19

    if-eqz v11, :cond_19

    .line 13
    iget-boolean v12, v8, Lb/k/b/m;->l:Z

    if-eqz v12, :cond_19

    iget-boolean v12, v8, Lb/k/b/m;->z:Z

    if-eqz v12, :cond_19

    iget-boolean v12, v8, Lb/k/b/m;->J:Z

    if-eqz v12, :cond_19

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lb/k/b/m;->p0(Z)V

    .line 14
    iget-object v12, v8, Lb/k/b/m;->F:Landroid/view/View;

    .line 15
    invoke-virtual {v9, v11, v12, v0}, Lb/k/b/t0;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v8, v8, Lb/k/b/m;->E:Landroid/view/ViewGroup;

    new-instance v12, Lb/k/b/m0;

    invoke-direct {v12, v0}, Lb/k/b/m0;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v8, v12}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    .line 16
    :cond_19
    invoke-virtual {v9, v4}, Lb/k/b/t0;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v22, v9

    move-object/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v6

    move-object/from16 v29, v4

    invoke-virtual/range {v22 .. v29}, Lb/k/b/t0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v2, v7}, Lb/k/b/t0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v16, v9

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v21, v34

    invoke-virtual/range {v16 .. v21}, Lb/k/b/t0;->v(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v7, 0x0

    invoke-static {v3, v7}, Lb/k/b/r0;->o(Ljava/util/ArrayList;I)V

    invoke-virtual {v9, v6, v1, v4}, Lb/k/b/t0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_11

    :cond_1a
    move-object/from16 v30, v4

    move-object/from16 v34, v13

    move/from16 v31, v14

    move/from16 v32, v15

    const/4 v7, 0x0

    .line 17
    iget-object v1, v0, Lb/k/b/r0$b;->a:Lb/k/b/m;

    iget-object v3, v0, Lb/k/b/r0$b;->d:Lb/k/b/m;

    invoke-static {v3, v1}, Lb/k/b/r0;->g(Lb/k/b/m;Lb/k/b/m;)Lb/k/b/t0;

    move-result-object v4

    if-nez v4, :cond_1b

    :goto_11
    move/from16 v24, v31

    move/from16 v26, v32

    goto/16 :goto_1a

    :cond_1b
    iget-boolean v6, v0, Lb/k/b/r0$b;->b:Z

    iget-boolean v8, v0, Lb/k/b/r0$b;->e:Z

    invoke-static {v4, v1, v6}, Lb/k/b/r0;->i(Lb/k/b/t0;Lb/k/b/m;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v3, v8}, Lb/k/b/r0;->j(Lb/k/b/t0;Lb/k/b/m;Z)Ljava/lang/Object;

    move-result-object v15

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v12, v0, Lb/k/b/r0$b;->a:Lb/k/b/m;

    iget-object v11, v0, Lb/k/b/r0$b;->d:Lb/k/b/m;

    if-eqz v12, :cond_22

    if-nez v11, :cond_1c

    goto/16 :goto_16

    :cond_1c
    iget-boolean v10, v0, Lb/k/b/r0$b;->b:Z

    invoke-virtual/range {v34 .. v34}, Lb/e/f;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1d

    move-object/from16 v9, v34

    const/4 v8, 0x0

    goto :goto_12

    :cond_1d
    invoke-static {v4, v12, v11, v10}, Lb/k/b/r0;->l(Lb/k/b/t0;Lb/k/b/m;Lb/k/b/m;Z)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, v34

    :goto_12
    invoke-static {v4, v9, v8, v0}, Lb/k/b/r0;->f(Lb/k/b/t0;Lb/e/a;Ljava/lang/Object;Lb/k/b/r0$b;)Lb/e/a;

    move-result-object v7

    invoke-virtual {v9}, Lb/e/f;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1e

    const/4 v8, 0x0

    goto :goto_13

    :cond_1e
    move-object/from16 v16, v8

    invoke-virtual {v7}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v8, v16

    :goto_13
    if-nez v6, :cond_1f

    if-nez v15, :cond_1f

    if-nez v8, :cond_1f

    move-object/from16 v21, v1

    move-object/from16 v27, v3

    move-object/from16 v34, v9

    :goto_14
    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object v3, v15

    move/from16 v24, v31

    move/from16 v26, v32

    goto/16 :goto_17

    :cond_1f
    move-object/from16 v21, v1

    const/4 v1, 0x1

    invoke-static {v12, v11, v10, v7, v1}, Lb/k/b/r0;->c(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Z)V

    if-eqz v8, :cond_20

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v8, v5, v14}, Lb/k/b/t0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v16, v12

    iget-boolean v12, v0, Lb/k/b/r0$b;->e:Z

    move-object/from16 v17, v13

    iget-object v13, v0, Lb/k/b/r0$b;->f:Lb/k/b/a;

    move-object/from16 v22, v8

    move-object v8, v4

    move-object/from16 v18, v9

    move-object/from16 v9, v22

    move/from16 v19, v10

    move-object v10, v15

    move-object/from16 v20, v11

    move-object v11, v7

    move-object/from16 v7, v16

    move-object/from16 v23, v17

    invoke-static/range {v8 .. v13}, Lb/k/b/r0;->n(Lb/k/b/t0;Ljava/lang/Object;Ljava/lang/Object;Lb/e/a;ZLb/k/b/a;)V

    if-eqz v6, :cond_21

    invoke-virtual {v4, v6, v1}, Lb/k/b/t0;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_15

    :cond_20
    move-object/from16 v22, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v11

    move-object v7, v12

    move-object/from16 v23, v13

    const/4 v1, 0x0

    :cond_21
    :goto_15
    new-instance v13, Lb/k/b/q0;

    move-object v8, v13

    move-object v9, v4

    move-object/from16 v10, v18

    move-object/from16 v11, v22

    move-object v12, v0

    move-object v0, v13

    move-object/from16 v34, v18

    move-object/from16 v13, v23

    move-object/from16 v25, v14

    move/from16 v24, v31

    move-object v14, v5

    move-object/from16 v27, v3

    move-object v3, v15

    move/from16 v26, v32

    move-object v15, v7

    move-object/from16 v16, v20

    move/from16 v17, v19

    move-object/from16 v18, v25

    move-object/from16 v19, v6

    move-object/from16 v20, v1

    invoke-direct/range {v8 .. v20}, Lb/k/b/q0;-><init>(Lb/k/b/t0;Lb/e/a;Ljava/lang/Object;Lb/k/b/r0$b;Ljava/util/ArrayList;Landroid/view/View;Lb/k/b/m;Lb/k/b/m;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v2, v0}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    move-object/from16 v14, v22

    goto :goto_18

    :cond_22
    :goto_16
    move-object/from16 v21, v1

    move-object/from16 v27, v3

    goto :goto_14

    :goto_17
    const/4 v14, 0x0

    :goto_18
    if-nez v6, :cond_23

    if-nez v14, :cond_23

    if-nez v3, :cond_23

    goto/16 :goto_1a

    :cond_23
    move-object/from16 v1, v25

    move-object/from16 v0, v27

    .line 19
    invoke-static {v4, v3, v0, v1, v5}, Lb/k/b/r0;->h(Lb/k/b/t0;Ljava/lang/Object;Lb/k/b/m;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_25

    :cond_24
    const/4 v3, 0x0

    :cond_25
    invoke-virtual {v4, v6, v5}, Lb/k/b/t0;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 20
    invoke-virtual {v4, v3, v6, v14}, Lb/k/b/t0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v0, :cond_27

    if-eqz v7, :cond_27

    .line 21
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_27

    :cond_26
    new-instance v1, Lb/h/f/a;

    invoke-direct {v1}, Lb/h/f/a;-><init>()V

    move-object/from16 v8, p7

    check-cast v8, Lb/k/b/c0$d;

    invoke-virtual {v8, v0, v1}, Lb/k/b/c0$d;->b(Lb/k/b/m;Lb/h/f/a;)V

    new-instance v9, Lb/k/b/n0;

    invoke-direct {v9, v8, v0, v1}, Lb/k/b/n0;-><init>(Lb/k/b/r0$a;Lb/k/b/m;Lb/h/f/a;)V

    invoke-virtual {v4, v0, v15, v1, v9}, Lb/k/b/t0;->u(Lb/k/b/m;Ljava/lang/Object;Lb/h/f/a;Ljava/lang/Runnable;)V

    :cond_27
    if-eqz v15, :cond_29

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    move-object v9, v15

    move-object v10, v6

    move-object v11, v0

    move-object v12, v3

    move-object v13, v7

    move-object v1, v15

    move-object/from16 v15, v23

    invoke-virtual/range {v8 .. v15}, Lb/k/b/t0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 22
    new-instance v15, Lb/k/b/o0;

    move-object v8, v15

    move-object v9, v6

    move-object v10, v4

    move-object v11, v5

    move-object/from16 v12, v21

    move-object/from16 v13, v23

    move-object v14, v0

    move-object v0, v15

    move-object v15, v7

    move-object/from16 v16, v3

    invoke-direct/range {v8 .. v16}, Lb/k/b/o0;-><init>(Ljava/lang/Object;Lb/k/b/t0;Landroid/view/View;Lb/k/b/m;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2, v0}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    .line 23
    new-instance v0, Lb/k/b/u0;

    move-object/from16 v6, v23

    move-object/from16 v3, v34

    invoke-direct {v0, v4, v6, v3}, Lb/k/b/u0;-><init>(Lb/k/b/t0;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v0}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    .line 24
    invoke-virtual {v4, v2, v1}, Lb/k/b/t0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 25
    new-instance v0, Lb/k/b/v0;

    invoke-direct {v0, v4, v6, v3}, Lb/k/b/v0;-><init>(Lb/k/b/t0;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v2, v0}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    goto :goto_1a

    :cond_28
    :goto_19
    move-object/from16 v30, v4

    move/from16 v24, v14

    move/from16 v26, v15

    :cond_29
    :goto_1a
    add-int/lit8 v14, v24, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v15, v26

    move-object/from16 v4, v30

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_2a
    return-void
.end method
