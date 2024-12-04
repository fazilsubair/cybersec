.class public abstract Lb/q/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/k$c;,
        Lb/q/k$b;,
        Lb/q/k$d;
    }
.end annotation


# static fields
.field public static final v:[I

.field public static final w:Lb/q/f;

.field public static x:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lb/e/a<",
            "Landroid/animation/Animator;",
            "Lb/q/k$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field public e:Landroid/animation/TimeInterpolator;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lb/q/t;

.field public i:Lb/q/t;

.field public j:Lb/q/q;

.field public k:[I

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/s;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/s;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/q/k$d;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lb/q/k$c;

.field public u:Lb/q/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lb/q/k;->v:[I

    new-instance v0, Lb/q/k$a;

    invoke-direct {v0}, Lb/q/k$a;-><init>()V

    sput-object v0, Lb/q/k;->w:Lb/q/f;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lb/q/k;->x:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/q/k;->b:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/q/k;->c:J

    iput-wide v0, p0, Lb/q/k;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    new-instance v1, Lb/q/t;

    invoke-direct {v1}, Lb/q/t;-><init>()V

    iput-object v1, p0, Lb/q/k;->h:Lb/q/t;

    new-instance v1, Lb/q/t;

    invoke-direct {v1}, Lb/q/t;-><init>()V

    iput-object v1, p0, Lb/q/k;->i:Lb/q/t;

    iput-object v0, p0, Lb/q/k;->j:Lb/q/q;

    sget-object v1, Lb/q/k;->v:[I

    iput-object v1, p0, Lb/q/k;->k:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/q/k;->n:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lb/q/k;->o:I

    iput-boolean v1, p0, Lb/q/k;->p:Z

    iput-boolean v1, p0, Lb/q/k;->q:Z

    iput-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/k;->s:Ljava/util/ArrayList;

    sget-object v0, Lb/q/k;->w:Lb/q/f;

    iput-object v0, p0, Lb/q/k;->u:Lb/q/f;

    return-void
.end method

.method public static c(Lb/q/t;Landroid/view/View;Lb/q/s;)V
    .locals 6

    iget-object v0, p0, Lb/q/t;->a:Lb/e/a;

    invoke-virtual {v0, p1, p2}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    iget-object v1, p0, Lb/q/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lb/q/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/q/t;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-static {p1}, Lb/h/j/q;->s(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    iget-object v3, p0, Lb/q/t;->d:Lb/e/a;

    .line 1
    invoke-virtual {v3, p2}, Lb/e/f;->e(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 2
    iget-object v3, p0, Lb/q/t;->d:Lb/e/a;

    invoke-virtual {v3, p2, v0}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lb/q/t;->d:Lb/e/a;

    invoke-virtual {v3, p2, p1}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v3

    iget-object p2, p0, Lb/q/t;->c:Lb/e/c;

    .line 3
    iget-boolean v5, p2, Lb/e/c;->b:Z

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Lb/e/c;->d()V

    :cond_5
    iget-object v5, p2, Lb/e/c;->c:[J

    iget p2, p2, Lb/e/c;->e:I

    invoke-static {v5, p2, v3, v4}, Lb/e/b;->b([JIJ)I

    move-result p2

    if-ltz p2, :cond_6

    .line 4
    iget-object p1, p0, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {p1, v3, v4}, Lb/e/c;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 6
    iget-object p0, p0, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {p0, v3, v4, v0}, Lb/e/c;->g(JLjava/lang/Object;)V

    goto :goto_3

    .line 7
    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 8
    iget-object p0, p0, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {p0, v3, v4, p1}, Lb/e/c;->g(JLjava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public static o()Lb/e/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/a<",
            "Landroid/animation/Animator;",
            "Lb/q/k$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lb/q/k;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    sget-object v1, Lb/q/k;->x:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static t(Lb/q/s;Lb/q/s;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lb/q/s;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lb/q/s;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public A(Lb/q/k$c;)V
    .locals 0

    iput-object p1, p0, Lb/q/k;->t:Lb/q/k$c;

    return-void
.end method

.method public B(Landroid/animation/TimeInterpolator;)Lb/q/k;
    .locals 0

    iput-object p1, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public C(Lb/q/f;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lb/q/k;->w:Lb/q/f;

    :cond_0
    iput-object p1, p0, Lb/q/k;->u:Lb/q/f;

    return-void
.end method

.method public D(Lb/q/p;)V
    .locals 0

    return-void
.end method

.method public E(J)Lb/q/k;
    .locals 0

    iput-wide p1, p0, Lb/q/k;->c:J

    return-object p0
.end method

.method public F()V
    .locals 5

    iget v0, p0, Lb/q/k;->o:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/q/k$d;

    invoke-interface {v4, p0}, Lb/q/k$d;->a(Lb/q/k;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lb/q/k;->q:Z

    :cond_1
    iget v0, p0, Lb/q/k;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/q/k;->o:I

    return-void
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lb/q/k;->d:J

    const-wide/16 v2, -0x1

    const-string v4, ") "

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lb/q/k;->d:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-wide v0, p0, Lb/q/k;->c:J

    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/q/k;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_3
    const-string v0, "tgts("

    invoke-static {p1, v0}, Lc/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lez v0, :cond_4

    invoke-static {p1, v1}, Lc/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-lez v2, :cond_6

    invoke-static {p1, v1}, Lc/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-static {p1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const-string v0, ")"

    invoke-static {p1, v0}, Lc/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public a(Lb/q/k$d;)Lb/q/k;
    .locals 1

    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroid/view/View;)Lb/q/k;
    .locals 1

    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/q/k;->j()Lb/q/k;

    move-result-object v0

    return-object v0
.end method

.method public abstract d(Lb/q/s;)V
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    new-instance v0, Lb/q/s;

    invoke-direct {v0, p1}, Lb/q/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lb/q/k;->g(Lb/q/s;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lb/q/k;->d(Lb/q/s;)V

    :goto_0
    iget-object v1, v0, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lb/q/k;->f(Lb/q/s;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lb/q/k;->h:Lb/q/t;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lb/q/k;->i:Lb/q/t;

    :goto_1
    invoke-static {v1, p1, v0}, Lb/q/k;->c(Lb/q/t;Landroid/view/View;Lb/q/s;)V

    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lb/q/k;->e(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public f(Lb/q/s;)V
    .locals 0

    return-void
.end method

.method public abstract g(Lb/q/s;)V
.end method

.method public h(Landroid/view/ViewGroup;Z)V
    .locals 5

    invoke-virtual {p0, p2}, Lb/q/k;->i(Z)V

    iget-object v0, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lb/q/k;->e(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lb/q/s;

    invoke-direct {v3, v2}, Lb/q/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_2

    invoke-virtual {p0, v3}, Lb/q/k;->g(Lb/q/s;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v3}, Lb/q/k;->d(Lb/q/s;)V

    :goto_2
    iget-object v4, v3, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lb/q/k;->f(Lb/q/s;)V

    if-eqz p2, :cond_3

    iget-object v4, p0, Lb/q/k;->h:Lb/q/t;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lb/q/k;->i:Lb/q/t;

    :goto_3
    invoke-static {v4, v2, v3}, Lb/q/k;->c(Lb/q/t;Landroid/view/View;Lb/q/s;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    iget-object p1, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    iget-object p1, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v1, Lb/q/s;

    invoke-direct {v1, p1}, Lb/q/s;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_6

    invoke-virtual {p0, v1}, Lb/q/k;->g(Lb/q/s;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v1}, Lb/q/k;->d(Lb/q/s;)V

    :goto_5
    iget-object v2, v1, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lb/q/k;->f(Lb/q/s;)V

    if-eqz p2, :cond_7

    iget-object v2, p0, Lb/q/k;->h:Lb/q/t;

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lb/q/k;->i:Lb/q/t;

    :goto_6
    invoke-static {v2, p1, v1}, Lb/q/k;->c(Lb/q/t;Landroid/view/View;Lb/q/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/q/k;->h:Lb/q/t;

    iget-object p1, p1, Lb/q/t;->a:Lb/e/a;

    invoke-virtual {p1}, Lb/e/f;->clear()V

    iget-object p1, p0, Lb/q/k;->h:Lb/q/t;

    iget-object p1, p1, Lb/q/t;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lb/q/k;->h:Lb/q/t;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/q/k;->i:Lb/q/t;

    iget-object p1, p1, Lb/q/t;->a:Lb/e/a;

    invoke-virtual {p1}, Lb/e/f;->clear()V

    iget-object p1, p0, Lb/q/k;->i:Lb/q/t;

    iget-object p1, p1, Lb/q/t;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lb/q/k;->i:Lb/q/t;

    :goto_0
    iget-object p1, p1, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {p1}, Lb/e/c;->b()V

    return-void
.end method

.method public j()Lb/q/k;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lb/q/k;->s:Ljava/util/ArrayList;

    new-instance v2, Lb/q/t;

    invoke-direct {v2}, Lb/q/t;-><init>()V

    iput-object v2, v1, Lb/q/k;->h:Lb/q/t;

    new-instance v2, Lb/q/t;

    invoke-direct {v2}, Lb/q/t;-><init>()V

    iput-object v2, v1, Lb/q/k;->i:Lb/q/t;

    iput-object v0, v1, Lb/q/k;->l:Ljava/util/ArrayList;

    iput-object v0, v1, Lb/q/k;->m:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public k(Landroid/view/ViewGroup;Lb/q/s;Lb/q/s;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public l(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
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

    move-object/from16 v6, p0

    invoke-static {}, Lb/q/k;->o()Lb/e/a;

    move-result-object v7

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_d

    move-object/from16 v12, p4

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/q/s;

    move-object/from16 v13, p5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/s;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lb/q/s;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    :cond_2
    move-object/from16 v14, p1

    :cond_3
    move-object/from16 v15, p3

    move/from16 v17, v9

    goto/16 :goto_7

    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v6, v0, v1}, Lb/q/k;->r(Lb/q/s;Lb/q/s;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_2

    move-object/from16 v14, p1

    invoke-virtual {v6, v14, v0, v1}, Lb/q/k;->k(Landroid/view/ViewGroup;Lb/q/s;Lb/q/s;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_b

    iget-object v0, v1, Lb/q/s;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lb/q/k;->p()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v4, v1

    if-lez v4, :cond_a

    new-instance v4, Lb/q/s;

    invoke-direct {v4, v0}, Lb/q/s;-><init>(Landroid/view/View;)V

    move-object/from16 v15, p3

    iget-object v5, v15, Lb/q/t;->a:Lb/e/a;

    invoke-virtual {v5, v0}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/s;

    if-eqz v5, :cond_7

    const/4 v2, 0x0

    :goto_3
    array-length v10, v1

    if-ge v2, v10, :cond_7

    iget-object v10, v4, Lb/q/s;->a:Ljava/util/Map;

    move-object/from16 v16, v3

    aget-object v3, v1, v2

    move/from16 v17, v9

    iget-object v9, v5, Lb/q/s;->a:Ljava/util/Map;

    move-object/from16 v18, v5

    aget-object v5, v1, v2

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move/from16 v9, v17

    move-object/from16 v5, v18

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    move/from16 v17, v9

    .line 1
    iget v1, v7, Lb/e/f;->d:I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_9

    .line 2
    invoke-virtual {v7, v2}, Lb/e/f;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v7, v3}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/k$b;

    iget-object v5, v3, Lb/q/k$b;->c:Lb/q/s;

    if-eqz v5, :cond_8

    iget-object v5, v3, Lb/q/k$b;->a:Landroid/view/View;

    if-ne v5, v0, :cond_8

    iget-object v5, v3, Lb/q/k$b;->b:Ljava/lang/String;

    .line 3
    iget-object v9, v6, Lb/q/k;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, v3, Lb/q/k$b;->c:Lb/q/s;

    invoke-virtual {v3, v4}, Lb/q/s;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v2, v16

    goto :goto_5

    :cond_a
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :goto_5
    move-object v1, v0

    move-object v9, v2

    move-object v5, v4

    goto :goto_6

    :cond_b
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move/from16 v17, v9

    iget-object v0, v0, Lb/q/s;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v9, v16

    const/4 v5, 0x0

    :goto_6
    if-eqz v9, :cond_c

    new-instance v10, Lb/q/k$b;

    .line 5
    iget-object v2, v6, Lb/q/k;->b:Ljava/lang/String;

    .line 6
    invoke-static/range {p1 .. p1}, Lb/q/a0;->b(Landroid/view/View;)Lb/q/l0;

    move-result-object v4

    move-object v0, v10

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Lb/q/k$b;-><init>(Landroid/view/View;Ljava/lang/String;Lb/q/k;Lb/q/l0;Lb/q/s;)V

    invoke-virtual {v7, v9, v10}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lb/q/k;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v17

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_e

    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iget-object v1, v6, Lb/q/k;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v8, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0x7fffffffffffffffL

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public m()V
    .locals 6

    iget v0, p0, Lb/q/k;->o:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lb/q/k;->o:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/k$d;

    invoke-interface {v5, p0}, Lb/q/k$d;->c(Lb/q/k;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lb/q/k;->h:Lb/q/t;

    iget-object v3, v3, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {v3}, Lb/e/c;->h()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lb/q/k;->h:Lb/q/t;

    iget-object v3, v3, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {v3, v0}, Lb/e/c;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1
    sget-object v4, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2
    :goto_2
    iget-object v3, p0, Lb/q/k;->i:Lb/q/t;

    iget-object v3, v3, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {v3}, Lb/e/c;->h()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lb/q/k;->i:Lb/q/t;

    iget-object v3, v3, Lb/q/t;->c:Lb/e/c;

    invoke-virtual {v3, v0}, Lb/e/c;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 3
    sget-object v4, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Landroid/view/View;->setHasTransientState(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4
    :cond_4
    iput-boolean v1, p0, Lb/q/k;->q:Z

    :cond_5
    return-void
.end method

.method public n(Landroid/view/View;Z)Lb/q/s;
    .locals 6

    iget-object v0, p0, Lb/q/k;->j:Lb/q/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lb/q/k;->n(Landroid/view/View;Z)Lb/q/s;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lb/q/k;->l:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/q/k;->m:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/q/s;

    if-nez v5, :cond_3

    return-object v1

    :cond_3
    iget-object v5, v5, Lb/q/s;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    iget-object p1, p0, Lb/q/k;->m:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lb/q/k;->l:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lb/q/s;

    :cond_7
    return-object v1
.end method

.method public p()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Landroid/view/View;Z)Lb/q/s;
    .locals 1

    iget-object v0, p0, Lb/q/k;->j:Lb/q/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lb/q/k;->q(Landroid/view/View;Z)Lb/q/s;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/q/k;->h:Lb/q/t;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lb/q/k;->i:Lb/q/t;

    :goto_0
    iget-object p2, p2, Lb/q/t;->a:Lb/e/a;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, p1, v0}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lb/q/s;

    return-object p1
.end method

.method public r(Lb/q/s;Lb/q/s;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lb/q/k;->p()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-static {p1, p2, v5}, Lb/q/k;->t(Lb/q/s;Lb/q/s;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lb/q/s;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lb/q/k;->t(Lb/q/s;Lb/q/s;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public s(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lb/q/k;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lb/q/k;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;)V
    .locals 9

    iget-boolean v0, p0, Lb/q/k;->q:Z

    if-nez v0, :cond_5

    invoke-static {}, Lb/q/k;->o()Lb/e/a;

    move-result-object v0

    .line 1
    iget v1, v0, Lb/e/f;->d:I

    .line 2
    invoke-static {p1}, Lb/q/a0;->b(Landroid/view/View;)Lb/q/l0;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Lb/e/f;->k(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/q/k$b;

    iget-object v5, v4, Lb/q/k$b;->a:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v4, v4, Lb/q/k$b;->d:Lb/q/l0;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v1}, Lb/e/f;->h(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/animation/Animator;->pause()V

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-ge v3, v6, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    instance-of v8, v7, Lb/q/a;

    if-eqz v8, :cond_1

    check-cast v7, Lb/q/a;

    invoke-interface {v7, v4}, Lb/q/a;->onAnimationPause(Landroid/animation/Animator;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/q/k$d;

    invoke-interface {v1, p0}, Lb/q/k$d;->d(Lb/q/k;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iput-boolean v2, p0, Lb/q/k;->p:Z

    :cond_5
    return-void
.end method

.method public v(Lb/q/k$d;)Lb/q/k;
    .locals 1

    iget-object v0, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public w(Landroid/view/View;)Lb/q/k;
    .locals 1

    iget-object v0, p0, Lb/q/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public x(Landroid/view/View;)V
    .locals 9

    iget-boolean v0, p0, Lb/q/k;->p:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lb/q/k;->q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {}, Lb/q/k;->o()Lb/e/a;

    move-result-object v0

    .line 1
    iget v2, v0, Lb/e/f;->d:I

    .line 2
    invoke-static {p1}, Lb/q/a0;->b(Landroid/view/View;)Lb/q/l0;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Lb/e/f;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/k$b;

    iget-object v4, v3, Lb/q/k$b;->a:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v3, v3, Lb/q/k$b;->d:Lb/q/l0;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lb/e/f;->h(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/animation/Animator;->resume()V

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator$AnimatorListener;

    instance-of v8, v7, Lb/q/a;

    if-eqz v8, :cond_1

    check-cast v7, Lb/q/a;

    invoke-interface {v7, v3}, Lb/q/a;->onAnimationResume(Landroid/animation/Animator;)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lb/q/k;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/q/k$d;

    invoke-interface {v3, p0}, Lb/q/k$d;->e(Lb/q/k;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput-boolean v1, p0, Lb/q/k;->p:Z

    :cond_5
    return-void
.end method

.method public y()V
    .locals 8

    invoke-virtual {p0}, Lb/q/k;->F()V

    invoke-static {}, Lb/q/k;->o()Lb/e/a;

    move-result-object v0

    iget-object v1, p0, Lb/q/k;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Lb/e/f;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lb/q/k;->F()V

    if-eqz v2, :cond_0

    .line 1
    new-instance v3, Lb/q/l;

    invoke-direct {v3, p0, v0}, Lb/q/l;-><init>(Lb/q/k;Lb/e/a;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2
    iget-wide v3, p0, Lb/q/k;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    :cond_1
    iget-wide v3, p0, Lb/q/k;->c:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 5
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 6
    :cond_2
    iget-object v3, p0, Lb/q/k;->e:Landroid/animation/TimeInterpolator;

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v3, Lb/q/m;

    invoke-direct {v3, p0}, Lb/q/m;-><init>(Lb/q/k;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 8
    :cond_4
    iget-object v0, p0, Lb/q/k;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lb/q/k;->m()V

    return-void
.end method

.method public z(J)Lb/q/k;
    .locals 0

    iput-wide p1, p0, Lb/q/k;->d:J

    return-object p0
.end method
