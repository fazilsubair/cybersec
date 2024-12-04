.class public Lc/c/a/a/l/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lc/c/a/a/l/c0;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/c0;I)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/b0;->c:Lc/c/a/a/l/c0;

    iput p2, p0, Lc/c/a/a/l/b0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lc/c/a/a/l/b0;->b:I

    iget-object v0, p0, Lc/c/a/a/l/b0;->c:Lc/c/a/a/l/c0;

    .line 1
    iget-object v0, v0, Lc/c/a/a/l/c0;->c:Lc/c/a/a/l/g;

    .line 2
    iget-object v0, v0, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    .line 3
    iget v0, v0, Lc/c/a/a/l/s;->c:I

    invoke-static {p1, v0}, Lc/c/a/a/l/s;->k(II)Lc/c/a/a/l/s;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/l/b0;->c:Lc/c/a/a/l/c0;

    .line 4
    iget-object v0, v0, Lc/c/a/a/l/c0;->c:Lc/c/a/a/l/g;

    .line 5
    iget-object v0, v0, Lc/c/a/a/l/g;->X:Lc/c/a/a/l/a;

    .line 6
    iget-object v1, v0, Lc/c/a/a/l/a;->b:Lc/c/a/a/l/s;

    invoke-virtual {p1, v1}, Lc/c/a/a/l/s;->j(Lc/c/a/a/l/s;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object p1, v0, Lc/c/a/a/l/a;->b:Lc/c/a/a/l/s;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lc/c/a/a/l/a;->c:Lc/c/a/a/l/s;

    invoke-virtual {p1, v1}, Lc/c/a/a/l/s;->j(Lc/c/a/a/l/s;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object p1, v0, Lc/c/a/a/l/a;->c:Lc/c/a/a/l/s;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/c/a/a/l/b0;->c:Lc/c/a/a/l/c0;

    .line 8
    iget-object v0, v0, Lc/c/a/a/l/c0;->c:Lc/c/a/a/l/g;

    .line 9
    invoke-virtual {v0, p1}, Lc/c/a/a/l/g;->w0(Lc/c/a/a/l/s;)V

    iget-object p1, p0, Lc/c/a/a/l/b0;->c:Lc/c/a/a/l/c0;

    .line 10
    iget-object p1, p1, Lc/c/a/a/l/c0;->c:Lc/c/a/a/l/g;

    .line 11
    sget-object v0, Lc/c/a/a/l/g$e;->b:Lc/c/a/a/l/g$e;

    invoke-virtual {p1, v0}, Lc/c/a/a/l/g;->x0(Lc/c/a/a/l/g$e;)V

    return-void
.end method
