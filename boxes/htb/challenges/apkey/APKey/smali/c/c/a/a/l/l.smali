.class public Lc/c/a/a/l/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/c/a/a/l/v;

.field public final synthetic c:Lc/c/a/a/l/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/g;Lc/c/a/a/l/v;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/l;->c:Lc/c/a/a/l/g;

    iput-object p2, p0, Lc/c/a/a/l/l;->b:Lc/c/a/a/l/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/c/a/a/l/l;->c:Lc/c/a/a/l/g;

    invoke-virtual {p1}, Lc/c/a/a/l/g;->u0()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->k1()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lc/c/a/a/l/l;->c:Lc/c/a/a/l/g;

    .line 1
    iget-object v0, v0, Lc/c/a/a/l/g;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$d;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/l/l;->c:Lc/c/a/a/l/g;

    iget-object v1, p0, Lc/c/a/a/l/l;->b:Lc/c/a/a/l/v;

    invoke-virtual {v1, p1}, Lc/c/a/a/l/v;->e(I)Lc/c/a/a/l/s;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/a/l/g;->w0(Lc/c/a/a/l/s;)V

    :cond_0
    return-void
.end method
