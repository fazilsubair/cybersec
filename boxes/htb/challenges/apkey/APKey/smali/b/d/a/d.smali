.class public Lb/d/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/d/a/f;


# instance fields
.field public final a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lb/d/a/d;->a:Landroid/graphics/RectF;

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

    throw p1
.end method

.method public d(Lb/d/a/e;Landroid/content/res/ColorStateList;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Lb/d/a/e;)F
    .locals 6

    invoke-virtual {p0, p1}, Lb/d/a/d;->n(Lb/d/a/e;)Lb/d/a/h;

    move-result-object p1

    .line 1
    iget v0, p1, Lb/d/a/h;->b:F

    iget v1, p1, Lb/d/a/h;->a:F

    const/4 v2, 0x0

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v4, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v5

    iget p1, p1, Lb/d/a/h;->b:F

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    mul-float p1, p1, v5

    add-float/2addr p1, v0

    return p1
.end method

.method public f(Lb/d/a/e;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public g(Lb/d/a/e;)F
    .locals 5

    invoke-virtual {p0, p1}, Lb/d/a/d;->n(Lb/d/a/e;)Lb/d/a/h;

    move-result-object p1

    .line 1
    iget v0, p1, Lb/d/a/h;->b:F

    iget v1, p1, Lb/d/a/h;->a:F

    const/4 v2, 0x0

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    add-float/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v3

    iget p1, p1, Lb/d/a/h;->b:F

    add-float/2addr p1, v2

    mul-float p1, p1, v3

    add-float/2addr p1, v0

    return p1
.end method

.method public h(Lb/d/a/e;)V
    .locals 0

    return-void
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
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public l()V
    .locals 1

    new-instance v0, Lb/d/a/d$a;

    invoke-direct {v0, p0}, Lb/d/a/d$a;-><init>(Lb/d/a/d;)V

    sput-object v0, Lb/d/a/h;->h:Lb/d/a/h$a;

    return-void
.end method

.method public m(Lb/d/a/e;F)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final n(Lb/d/a/e;)Lb/d/a/h;
    .locals 0

    invoke-interface {p1}, Lb/d/a/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lb/d/a/h;

    return-object p1
.end method
