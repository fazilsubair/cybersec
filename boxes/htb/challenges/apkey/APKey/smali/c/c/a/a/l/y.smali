.class public Lc/c/a/a/l/y;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public W0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    new-instance p2, Lc/c/a/a/l/y$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lc/c/a/a/l/y$a;-><init>(Lc/c/a/a/l/y;Landroid/content/Context;)V

    .line 1
    iput p3, p2, Landroidx/recyclerview/widget/RecyclerView$v;->a:I

    .line 2
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$l;->X0(Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method
