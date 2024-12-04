.class public Lb/f/b/h/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lb/f/b/h/i;->a:[Z

    return-void
.end method

.method public static a(Lb/f/b/h/e;Lb/f/b/d;Lb/f/b/h/d;)V
    .locals 7

    sget-object v0, Lb/f/b/h/d$a;->e:Lb/f/b/h/d$a;

    const/4 v1, -0x1

    iput v1, p2, Lb/f/b/h/d;->j:I

    iput v1, p2, Lb/f/b/h/d;->k:I

    iget-object v1, p0, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Lb/f/b/h/d$a;->c:Lb/f/b/h/d$a;

    const/4 v4, 0x2

    if-eq v1, v3, :cond_0

    iget-object v1, p2, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aget-object v1, v1, v2

    if-ne v1, v0, :cond_0

    iget-object v1, p2, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    iget v1, v1, Lb/f/b/h/c;->g:I

    invoke-virtual {p0}, Lb/f/b/h/d;->r()I

    move-result v2

    iget-object v5, p2, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget v5, v5, Lb/f/b/h/c;->g:I

    sub-int/2addr v2, v5

    iget-object v5, p2, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    invoke-virtual {p1, v5}, Lb/f/b/d;->l(Ljava/lang/Object;)Lb/f/b/g;

    move-result-object v6

    iput-object v6, v5, Lb/f/b/h/c;->i:Lb/f/b/g;

    iget-object v5, p2, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {p1, v5}, Lb/f/b/d;->l(Ljava/lang/Object;)Lb/f/b/g;

    move-result-object v6

    iput-object v6, v5, Lb/f/b/h/c;->i:Lb/f/b/g;

    iget-object v5, p2, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    iget-object v5, v5, Lb/f/b/h/c;->i:Lb/f/b/g;

    invoke-virtual {p1, v5, v1}, Lb/f/b/d;->e(Lb/f/b/g;I)V

    iget-object v5, p2, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v5, v5, Lb/f/b/h/c;->i:Lb/f/b/g;

    invoke-virtual {p1, v5, v2}, Lb/f/b/d;->e(Lb/f/b/g;I)V

    iput v4, p2, Lb/f/b/h/d;->j:I

    .line 1
    iput v1, p2, Lb/f/b/h/d;->U:I

    sub-int/2addr v2, v1

    iput v2, p2, Lb/f/b/h/d;->Q:I

    iget v1, p2, Lb/f/b/h/d;->X:I

    if-ge v2, v1, :cond_0

    iput v1, p2, Lb/f/b/h/d;->Q:I

    .line 2
    :cond_0
    iget-object v1, p0, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eq v1, v3, :cond_3

    iget-object v1, p2, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aget-object v1, v1, v2

    if-ne v1, v0, :cond_3

    iget-object v0, p2, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    iget v0, v0, Lb/f/b/h/c;->g:I

    invoke-virtual {p0}, Lb/f/b/h/d;->l()I

    move-result p0

    iget-object v1, p2, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget v1, v1, Lb/f/b/h/c;->g:I

    sub-int/2addr p0, v1

    iget-object v1, p2, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    invoke-virtual {p1, v1}, Lb/f/b/d;->l(Ljava/lang/Object;)Lb/f/b/g;

    move-result-object v2

    iput-object v2, v1, Lb/f/b/h/c;->i:Lb/f/b/g;

    iget-object v1, p2, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    invoke-virtual {p1, v1}, Lb/f/b/d;->l(Ljava/lang/Object;)Lb/f/b/g;

    move-result-object v2

    iput-object v2, v1, Lb/f/b/h/c;->i:Lb/f/b/g;

    iget-object v1, p2, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->i:Lb/f/b/g;

    invoke-virtual {p1, v1, v0}, Lb/f/b/d;->e(Lb/f/b/g;I)V

    iget-object v1, p2, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->i:Lb/f/b/g;

    invoke-virtual {p1, v1, p0}, Lb/f/b/d;->e(Lb/f/b/g;I)V

    iget v1, p2, Lb/f/b/h/d;->W:I

    if-gtz v1, :cond_1

    .line 3
    iget v1, p2, Lb/f/b/h/d;->c0:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 4
    :cond_1
    iget-object v1, p2, Lb/f/b/h/d;->H:Lb/f/b/h/c;

    invoke-virtual {p1, v1}, Lb/f/b/d;->l(Ljava/lang/Object;)Lb/f/b/g;

    move-result-object v2

    iput-object v2, v1, Lb/f/b/h/c;->i:Lb/f/b/g;

    iget-object v1, p2, Lb/f/b/h/d;->H:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->i:Lb/f/b/g;

    iget v2, p2, Lb/f/b/h/d;->W:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Lb/f/b/d;->e(Lb/f/b/g;I)V

    :cond_2
    iput v4, p2, Lb/f/b/h/d;->k:I

    .line 5
    iput v0, p2, Lb/f/b/h/d;->V:I

    sub-int/2addr p0, v0

    iput p0, p2, Lb/f/b/h/d;->R:I

    iget p1, p2, Lb/f/b/h/d;->Y:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lb/f/b/h/d;->R:I

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
