.class public final Lc/c/a/a/l/g;
.super Lc/c/a/a/l/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/l/g$f;,
        Lc/c/a/a/l/g$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/l/x<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final synthetic f0:I


# instance fields
.field public V:I

.field public W:Lc/c/a/a/l/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/l/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public X:Lc/c/a/a/l/a;

.field public Y:Lc/c/a/a/l/s;

.field public Z:Lc/c/a/a/l/g$e;

.field public a0:Lc/c/a/a/l/c;

.field public b0:Landroidx/recyclerview/widget/RecyclerView;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Landroid/view/View;

.field public e0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/l/x;-><init>()V

    return-void
.end method


# virtual methods
.method public L(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/k/b/m;->L(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/k/b/m;->g:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/c/a/a/l/g;->V:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/d;

    iput-object v0, p0, Lc/c/a/a/l/g;->W:Lc/c/a/a/l/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/a;

    iput-object v0, p0, Lc/c/a/a/l/g;->X:Lc/c/a/a/l/a;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/l/s;

    iput-object p1, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lb/k/b/m;->j()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lc/c/a/a/l/g;->V:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lc/c/a/a/l/c;

    invoke-direct {v0, p3}, Lc/c/a/a/l/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/c/a/a/l/g;->a0:Lc/c/a/a/l/c;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/l/g;->X:Lc/c/a/a/l/a;

    .line 1
    iget-object v0, v0, Lc/c/a/a/l/a;->b:Lc/c/a/a/l/s;

    .line 2
    invoke-static {p3}, Lc/c/a/a/l/o;->x0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0b0049

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b0044

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0800f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v1, Lc/c/a/a/l/g$b;

    invoke-direct {v1, p0}, Lc/c/a/a/l/g$b;-><init>(Lc/c/a/a/l/g;)V

    invoke-static {p2, v1}, Lb/h/j/q;->F(Landroid/view/View;Lb/h/j/a;)V

    new-instance v1, Lc/c/a/a/l/f;

    invoke-direct {v1}, Lc/c/a/a/l/f;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Lc/c/a/a/l/s;->e:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    const p2, 0x7f0800f5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lc/c/a/a/l/g$c;

    invoke-virtual {p0}, Lb/k/b/m;->j()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lc/c/a/a/l/g$c;-><init>(Lc/c/a/a/l/g;Landroid/content/Context;IZI)V

    iget-object v0, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object p2, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lc/c/a/a/l/v;

    iget-object v0, p0, Lc/c/a/a/l/g;->W:Lc/c/a/a/l/d;

    iget-object v1, p0, Lc/c/a/a/l/g;->X:Lc/c/a/a/l/a;

    new-instance v4, Lc/c/a/a/l/g$d;

    invoke-direct {v4, p0}, Lc/c/a/a/l/g$d;-><init>(Lc/c/a/a/l/g;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lc/c/a/a/l/v;-><init>(Landroid/content/Context;Lc/c/a/a/l/d;Lc/c/a/a/l/a;Lc/c/a/a/l/g$f;)V

    iget-object v0, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$d;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x7f0800f8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lc/c/a/a/l/g;->b0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v4, p0, Lc/c/a/a/l/g;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v0, p0, Lc/c/a/a/l/g;->b0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lc/c/a/a/l/c0;

    invoke-direct {v2, p0}, Lc/c/a/a/l/c0;-><init>(Lc/c/a/a/l/g;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$d;)V

    iget-object v0, p0, Lc/c/a/a/l/g;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v2, Lc/c/a/a/l/h;

    invoke-direct {v2, p0}, Lc/c/a/a/l/h;-><init>(Lc/c/a/a/l/g;)V

    .line 4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView$k;)V

    :cond_1
    const v0, 0x7f0800eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lc/c/a/a/l/i;

    invoke-direct {v2, p0}, Lc/c/a/a/l/i;-><init>(Lc/c/a/a/l/g;)V

    invoke-static {v0, v2}, Lb/h/j/q;->F(Landroid/view/View;Lb/h/j/a;)V

    const v2, 0x7f0800ed

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_PREV_TAG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0800ec

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/a/l/g;->d0:Landroid/view/View;

    const v1, 0x7f0800f1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/a/l/g;->e0:Landroid/view/View;

    sget-object v1, Lc/c/a/a/l/g$e;->b:Lc/c/a/a/l/g$e;

    invoke-virtual {p0, v1}, Lc/c/a/a/l/g;->x0(Lc/c/a/a/l/g$e;)V

    iget-object v1, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc/c/a/a/l/s;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lc/c/a/a/l/j;

    invoke-direct {v4, p0, p2, v0}, Lc/c/a/a/l/j;-><init>(Lc/c/a/a/l/g;Lc/c/a/a/l/v;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$p;)V

    new-instance v1, Lc/c/a/a/l/k;

    invoke-direct {v1, p0}, Lc/c/a/a/l/k;-><init>(Lc/c/a/a/l/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/c/a/a/l/l;

    invoke-direct {v0, p0, p2}, Lc/c/a/a/l/l;-><init>(Lc/c/a/a/l/g;Lc/c/a/a/l/v;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/c/a/a/l/m;

    invoke-direct {v0, p0, p2}, Lc/c/a/a/l/m;-><init>(Lc/c/a/a/l/g;Lc/c/a/a/l/v;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_2
    invoke-static {p3}, Lc/c/a/a/l/o;->x0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_7

    new-instance p3, Lb/o/b/u;

    invoke-direct {p3}, Lb/o/b/u;-><init>()V

    iget-object v0, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iget-object v1, p3, Lb/o/b/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    .line 8
    iget-object v2, p3, Lb/o/b/z;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    .line 9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->h0:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    :cond_4
    iget-object v1, p3, Lb/o/b/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 11
    :cond_5
    iput-object v0, p3, Lb/o/b/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p3, Lb/o/b/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p3, Lb/o/b/z;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$p;)V

    iget-object v0, p3, Lb/o/b/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 13
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p3, Lb/o/b/z;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p3}, Lb/o/b/z;->b()V

    goto :goto_1

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "An instance of OnFlingListener already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_7
    :goto_1
    iget-object p3, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    invoke-virtual {p2, v0}, Lc/c/a/a/l/v;->f(Lc/c/a/a/l/s;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    return-object p1
.end method

.method public Z(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lc/c/a/a/l/g;->V:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/c/a/a/l/g;->W:Lc/c/a/a/l/d;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/c/a/a/l/g;->X:Lc/c/a/a/l/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public t0(Lc/c/a/a/l/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/l/w<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/a/l/x;->U:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public u0()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final v0(I)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lc/c/a/a/l/g$a;

    invoke-direct {v1, p0, p1}, Lc/c/a/a/l/g$a;-><init>(Lc/c/a/a/l/g;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public w0(Lc/c/a/a/l/s;)V
    .locals 6

    iget-object v0, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$d;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/v;

    .line 1
    iget-object v1, v0, Lc/c/a/a/l/v;->d:Lc/c/a/a/l/a;

    .line 2
    iget-object v1, v1, Lc/c/a/a/l/a;->b:Lc/c/a/a/l/s;

    .line 3
    invoke-virtual {v1, p1}, Lc/c/a/a/l/s;->p(Lc/c/a/a/l/s;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    invoke-virtual {v0, v2}, Lc/c/a/a/l/v;->f(Lc/c/a/a/l/s;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object p1, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    :cond_3
    invoke-virtual {p0, v1}, Lc/c/a/a/l/g;->v0(I)V

    return-void
.end method

.method public x0(Lc/c/a/a/l/g$e;)V
    .locals 4

    iput-object p1, p0, Lc/c/a/a/l/g;->Z:Lc/c/a/a/l/g$e;

    sget-object v0, Lc/c/a/a/l/g$e;->c:Lc/c/a/a/l/g$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lc/c/a/a/l/g;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$l;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/l/g;->b0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$d;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/c0;

    iget-object v3, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    iget v3, v3, Lc/c/a/a/l/s;->d:I

    invoke-virtual {v0, v3}, Lc/c/a/a/l/c0;->e(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$l;->M0(I)V

    iget-object p1, p0, Lc/c/a/a/l/g;->d0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/c/a/a/l/g;->e0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lc/c/a/a/l/g$e;->b:Lc/c/a/a/l/g$e;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lc/c/a/a/l/g;->d0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/c/a/a/l/g;->e0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    invoke-virtual {p0, p1}, Lc/c/a/a/l/g;->w0(Lc/c/a/a/l/s;)V

    :cond_1
    :goto_0
    return-void
.end method
