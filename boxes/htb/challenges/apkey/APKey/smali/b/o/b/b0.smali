.class public Lb/o/b/b0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/b/b0$a;,
        Lb/o/b/b0$b;
    }
.end annotation


# instance fields
.field public final a:Lb/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/f<",
            "Landroidx/recyclerview/widget/RecyclerView$z;",
            "Lb/o/b/b0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lb/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/c<",
            "Landroidx/recyclerview/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/f;

    invoke-direct {v0}, Lb/e/f;-><init>()V

    iput-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    new-instance v0, Lb/e/c;

    invoke-direct {v0}, Lb/e/c;-><init>()V

    iput-object v0, p0, Lb/o/b/b0;->b:Lb/e/c;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lb/o/b/b0$a;

    if-nez v0, :cond_0

    invoke-static {}, Lb/o/b/b0$a;->a()Lb/o/b/b0$a;

    move-result-object v0

    iget-object v1, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v1, p1, v0}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lb/o/b/b0$a;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lb/o/b/b0$a;->a:I

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$i$c;)V
    .locals 2

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lb/o/b/b0$a;

    if-nez v0, :cond_0

    invoke-static {}, Lb/o/b/b0$a;->a()Lb/o/b/b0$a;

    move-result-object v0

    iget-object v1, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v1, p1, v0}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lb/o/b/b0$a;->c:Landroidx/recyclerview/widget/RecyclerView$i$c;

    iget p1, v0, Lb/o/b/b0$a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lb/o/b/b0$a;->a:I

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$i$c;)V
    .locals 2

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lb/o/b/b0$a;

    if-nez v0, :cond_0

    invoke-static {}, Lb/o/b/b0$a;->a()Lb/o/b/b0$a;

    move-result-object v0

    iget-object v1, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v1, p1, v0}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lb/o/b/b0$a;->b:Landroidx/recyclerview/widget/RecyclerView$i$c;

    iget p1, v0, Lb/o/b/b0$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lb/o/b/b0$a;->a:I

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    .locals 2

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lb/o/b/b0$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p1, Lb/o/b/b0$a;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$z;I)Landroidx/recyclerview/widget/RecyclerView$i$c;
    .locals 4

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v0, p1}, Lb/e/f;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v1, p1}, Lb/e/f;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/o/b/b0$a;

    if-eqz v1, :cond_4

    iget v2, v1, Lb/o/b/b0$a;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v2

    iput v0, v1, Lb/o/b/b0$a;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object p2, v1, Lb/o/b/b0$a;->b:Landroidx/recyclerview/widget/RecyclerView$i$c;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    iget-object p2, v1, Lb/o/b/b0$a;->c:Landroidx/recyclerview/widget/RecyclerView$i$c;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v0, p1}, Lb/e/f;->i(I)Ljava/lang/Object;

    invoke-static {v1}, Lb/o/b/b0$a;->b(Lb/o/b/b0$a;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Lb/o/b/b0$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lb/o/b/b0$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lb/o/b/b0$a;->a:I

    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 6

    iget-object v0, p0, Lb/o/b/b0;->b:Lb/e/c;

    invoke-virtual {v0}, Lb/e/c;->h()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lb/o/b/b0;->b:Lb/e/c;

    invoke-virtual {v2, v0}, Lb/e/c;->i(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lb/o/b/b0;->b:Lb/e/c;

    .line 1
    iget-object v3, v2, Lb/e/c;->d:[Ljava/lang/Object;

    aget-object v4, v3, v0

    sget-object v5, Lb/e/c;->f:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    aput-object v5, v3, v0

    iput-boolean v1, v2, Lb/e/c;->b:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    iget-object v0, p0, Lb/o/b/b0;->a:Lb/e/f;

    invoke-virtual {v0, p1}, Lb/e/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/o/b/b0$a;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lb/o/b/b0$a;->b(Lb/o/b/b0$a;)V

    :cond_2
    return-void
.end method
