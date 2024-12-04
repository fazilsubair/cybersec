.class public Lc/c/a/a/l/h;
.super Landroidx/recyclerview/widget/RecyclerView$k;
.source ""


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Ljava/util/Calendar;

.field public final synthetic c:Lc/c/a/a/l/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/g;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/h;->c:Lc/c/a/a/l/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$k;-><init>()V

    invoke-static {}, Lc/c/a/a/l/a0;->e()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/l/h;->a:Ljava/util/Calendar;

    invoke-static {}, Lc/c/a/a/l/a0;->e()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/l/h;->b:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$d;

    move-result-object p1

    instance-of p1, p1, Lc/c/a/a/l/c0;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$d;

    move-result-object p1

    check-cast p1, Lc/c/a/a/l/c0;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p1, p0, Lc/c/a/a/l/h;->c:Lc/c/a/a/l/g;

    .line 1
    iget-object p1, p1, Lc/c/a/a/l/g;->W:Lc/c/a/a/l/d;

    .line 2
    invoke-interface {p1}, Lc/c/a/a/l/d;->g()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/h/i/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
