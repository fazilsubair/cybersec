.class public Lb/d/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/d/a/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/d/a/e;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Lb/d/a/e;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Lb/d/a/e;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public d(Lb/d/a/e;Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Lb/d/a/e;)F
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public f(Lb/d/a/e;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Lb/d/a/e;)F
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public h(Lb/d/a/e;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public i(Lb/d/a/e;)Landroid/content/res/ColorStateList;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public j(Lb/d/a/e;F)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public k(Lb/d/a/e;F)V
    .locals 4

    invoke-virtual {p0, p1}, Lb/d/a/c;->n(Lb/d/a/e;)Lb/d/a/g;

    move-result-object v0

    invoke-interface {p1}, Lb/d/a/e;->a()Z

    move-result v1

    invoke-interface {p1}, Lb/d/a/e;->d()Z

    move-result v2

    .line 1
    iget v3, v0, Lb/d/a/g;->b:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lb/d/a/g;->c:Z

    if-ne v3, v1, :cond_1

    iget-boolean v3, v0, Lb/d/a/g;->d:Z

    if-ne v3, v2, :cond_1

    .line 2
    invoke-interface {p1}, Lb/d/a/e;->a()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2, p2, p2, p2}, Lb/d/a/e;->b(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lb/d/a/c;->n(Lb/d/a/e;)Lb/d/a/g;

    move-result-object p2

    .line 4
    iget p2, p2, Lb/d/a/g;->b:F

    .line 5
    invoke-virtual {p0, p1}, Lb/d/a/c;->n(Lb/d/a/e;)Lb/d/a/g;

    move-result-object v0

    .line 6
    iget v0, v0, Lb/d/a/g;->a:F

    .line 7
    invoke-interface {p1}, Lb/d/a/e;->d()Z

    move-result v1

    invoke-static {p2, v0, v1}, Lb/d/a/h;->a(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1}, Lb/d/a/e;->d()Z

    move-result v2

    invoke-static {p2, v0, v2}, Lb/d/a/h;->b(FFZ)F

    move-result p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    invoke-interface {p1, v1, p2, v1, p2}, Lb/d/a/e;->b(IIII)V

    :goto_0
    return-void

    .line 8
    :cond_1
    iput p2, v0, Lb/d/a/g;->b:F

    iput-boolean v1, v0, Lb/d/a/g;->c:Z

    iput-boolean v2, v0, Lb/d/a/g;->d:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lb/d/a/g;->b(Landroid/graphics/Rect;)V

    throw p1
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m(Lb/d/a/e;F)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final n(Lb/d/a/e;)Lb/d/a/g;
    .locals 0

    invoke-interface {p1}, Lb/d/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lb/d/a/g;

    return-object p1
.end method
