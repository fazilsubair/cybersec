.class public Lc/c/a/a/j/b;
.super Lc/c/a/a/u/g;
.source ""

# interfaces
.implements Lb/h/d/l/a;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lc/c/a/a/q/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/j/b$a;
    }
.end annotation


# static fields
.field public static final I0:[I

.field public static final J0:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field public A:Landroid/content/res/ColorStateList;

.field public A0:[I

.field public B:F

.field public B0:Z

.field public C:F

.field public C0:Landroid/content/res/ColorStateList;

.field public D:Landroid/content/res/ColorStateList;

.field public D0:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/c/a/a/j/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public E:F

.field public E0:Landroid/text/TextUtils$TruncateAt;

.field public F:Landroid/content/res/ColorStateList;

.field public F0:Z

.field public G:Ljava/lang/CharSequence;

.field public G0:I

.field public H:Z

.field public H0:Z

.field public I:Landroid/graphics/drawable/Drawable;

.field public J:Landroid/content/res/ColorStateList;

.field public K:F

.field public L:Z

.field public M:Z

.field public N:Landroid/graphics/drawable/Drawable;

.field public O:Landroid/graphics/drawable/Drawable;

.field public P:Landroid/content/res/ColorStateList;

.field public Q:F

.field public R:Ljava/lang/CharSequence;

.field public S:Z

.field public T:Z

.field public U:Landroid/graphics/drawable/Drawable;

.field public V:Landroid/content/res/ColorStateList;

.field public W:Lc/c/a/a/c/g;

.field public X:Lc/c/a/a/c/g;

.field public Y:F

.field public Z:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:F

.field public final g0:Landroid/content/Context;

.field public final h0:Landroid/graphics/Paint;

.field public final i0:Landroid/graphics/Paint$FontMetrics;

.field public final j0:Landroid/graphics/RectF;

.field public final k0:Landroid/graphics/PointF;

.field public final l0:Landroid/graphics/Path;

.field public final m0:Lc/c/a/a/q/i;

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public t0:Z

.field public u0:I

.field public v0:I

.field public w0:Landroid/graphics/ColorFilter;

.field public x0:Landroid/graphics/PorterDuffColorFilter;

.field public y0:Landroid/content/res/ColorStateList;

.field public z:Landroid/content/res/ColorStateList;

.field public z0:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lc/c/a/a/j/b;->I0:[I

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lc/c/a/a/j/b;->J0:Landroid/graphics/drawable/ShapeDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lc/c/a/a/u/j;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc/c/a/a/u/j$b;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/a/u/j$b;->a()Lc/c/a/a/u/j;

    move-result-object p2

    invoke-direct {p0, p2}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/j;)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 2
    iput p2, p0, Lc/c/a/a/j/b;->C:F

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lc/c/a/a/j/b;->i0:Landroid/graphics/Paint$FontMetrics;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lc/c/a/a/j/b;->k0:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lc/c/a/a/j/b;->l0:Landroid/graphics/Path;

    const/16 p2, 0xff

    iput p2, p0, Lc/c/a/a/j/b;->v0:I

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lc/c/a/a/j/b;->z0:Landroid/graphics/PorterDuff$Mode;

    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lc/c/a/a/j/b;->D0:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object p2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    new-instance p4, Lc/c/a/a/n/a;

    invoke-direct {p4, p1}, Lc/c/a/a/n/a;-><init>(Landroid/content/Context;)V

    iput-object p4, p2, Lc/c/a/a/u/g$b;->b:Lc/c/a/a/n/a;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->w()V

    .line 4
    iput-object p1, p0, Lc/c/a/a/j/b;->g0:Landroid/content/Context;

    new-instance p2, Lc/c/a/a/q/i;

    invoke-direct {p2, p0}, Lc/c/a/a/q/i;-><init>(Lc/c/a/a/q/i$b;)V

    iput-object p2, p0, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    const-string p4, ""

    iput-object p4, p0, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    .line 5
    iget-object p2, p2, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    sget-object p1, Lc/c/a/a/j/b;->I0:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->d0([I)Z

    iput-boolean p3, p0, Lc/c/a/a/j/b;->F0:Z

    sget-boolean p1, Lc/c/a/a/s/b;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Lc/c/a/a/j/b;->J0:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method public static G(Landroid/content/res/ColorStateList;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static H(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lc/c/a/a/j/b;->f0:F

    iget v1, p0, Lc/c/a/a/j/b;->e0:F

    add-float/2addr v0, v1

    invoke-static {p0}, Lb/h/b/a;->A(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    iget v0, p0, Lc/c/a/a/j/b;->Q:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p0, Lc/c/a/a/j/b;->Q:F

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lc/c/a/a/j/b;->Q:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public final B(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lc/c/a/a/j/b;->f0:F

    iget v1, p0, Lc/c/a/a/j/b;->e0:F

    add-float/2addr v0, v1

    iget v1, p0, Lc/c/a/a/j/b;->Q:F

    add-float/2addr v0, v1

    iget v1, p0, Lc/c/a/a/j/b;->d0:F

    add-float/2addr v0, v1

    iget v1, p0, Lc/c/a/a/j/b;->c0:F

    add-float/2addr v0, v1

    invoke-static {p0}, Lb/h/b/a;->A(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public C()F
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lc/c/a/a/j/b;->d0:F

    iget v1, p0, Lc/c/a/a/j/b;->Q:F

    add-float/2addr v0, v1

    iget v1, p0, Lc/c/a/a/j/b;->e0:F

    add-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public D()F
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/u/g;->l()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lc/c/a/a/j/b;->C:F

    :goto_0
    return v0
.end method

.method public E()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1
    instance-of v1, v0, Lb/h/d/l/b;

    if-eqz v1, :cond_1

    check-cast v0, Lb/h/d/l/b;

    invoke-interface {v0}, Lb/h/d/l/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final F()F
    .locals 3

    iget-boolean v0, p0, Lc/c/a/a/j/b;->t0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lc/c/a/a/j/b;->K:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_1
    return v1
.end method

.method public I()V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->D0:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/j/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/a/j/b$a;->a()V

    :cond_0
    return-void
.end method

.method public final J([I[I)Z
    .locals 8

    invoke-super {p0, p1}, Lc/c/a/a/u/g;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lc/c/a/a/j/b;->z:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lc/c/a/a/j/b;->n0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lc/c/a/a/u/g;->e(I)I

    move-result v1

    iget v3, p0, Lc/c/a/a/j/b;->n0:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    iput v1, p0, Lc/c/a/a/j/b;->n0:I

    const/4 v0, 0x1

    :cond_1
    iget-object v3, p0, Lc/c/a/a/j/b;->A:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget v5, p0, Lc/c/a/a/j/b;->o0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, v3}, Lc/c/a/a/u/g;->e(I)I

    move-result v3

    iget v5, p0, Lc/c/a/a/j/b;->o0:I

    if-eq v5, v3, :cond_3

    iput v3, p0, Lc/c/a/a/j/b;->o0:I

    const/4 v0, 0x1

    .line 1
    :cond_3
    invoke-static {v3, v1}, Lb/h/d/a;->a(II)I

    move-result v1

    .line 2
    iget v3, p0, Lc/c/a/a/j/b;->p0:I

    if-eq v3, v1, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 3
    :goto_2
    iget-object v5, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v5, v5, Lc/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 4
    iput v1, p0, Lc/c/a/a/j/b;->p0:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x1

    :cond_6
    iget-object v1, p0, Lc/c/a/a/j/b;->D:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget v3, p0, Lc/c/a/a/j/b;->q0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iget v3, p0, Lc/c/a/a/j/b;->q0:I

    if-eq v3, v1, :cond_8

    iput v1, p0, Lc/c/a/a/j/b;->q0:I

    const/4 v0, 0x1

    :cond_8
    iget-object v1, p0, Lc/c/a/a/j/b;->C0:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    invoke-static {p1}, Lc/c/a/a/s/b;->b([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lc/c/a/a/j/b;->C0:Landroid/content/res/ColorStateList;

    iget v3, p0, Lc/c/a/a/j/b;->r0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    iget v3, p0, Lc/c/a/a/j/b;->r0:I

    if-eq v3, v1, :cond_a

    iput v1, p0, Lc/c/a/a/j/b;->r0:I

    iget-boolean v1, p0, Lc/c/a/a/j/b;->B0:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    iget-object v1, p0, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 5
    iget-object v1, v1, Lc/c/a/a/q/i;->f:Lc/c/a/a/r/b;

    if-eqz v1, :cond_b

    .line 6
    iget-object v1, v1, Lc/c/a/a/r/b;->a:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget v3, p0, Lc/c/a/a/j/b;->s0:I

    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    iget v3, p0, Lc/c/a/a/j/b;->s0:I

    if-eq v3, v1, :cond_c

    iput v1, p0, Lc/c/a/a/j/b;->s0:I

    const/4 v0, 0x1

    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    if-nez v1, :cond_e

    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 7
    :cond_e
    array-length v5, v1

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_d

    aget v7, v1, v6

    if-ne v7, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :goto_8
    if-eqz v1, :cond_10

    .line 8
    iget-boolean v1, p0, Lc/c/a/a/j/b;->S:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    iget-boolean v3, p0, Lc/c/a/a/j/b;->t0:Z

    if-eq v3, v1, :cond_12

    iget-object v3, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v0

    iput-boolean v1, p0, Lc/c/a/a/j/b;->t0:Z

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x1

    :cond_12
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p0, Lc/c/a/a/j/b;->y0:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_13

    iget v5, p0, Lc/c/a/a/j/b;->u0:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    iget v5, p0, Lc/c/a/a/j/b;->u0:I

    if-eq v5, v3, :cond_14

    iput v3, p0, Lc/c/a/a/j/b;->u0:I

    iget-object v0, p0, Lc/c/a/a/j/b;->y0:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lc/c/a/a/j/b;->z0:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lc/c/a/a/a;->u(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/a/j/b;->x0:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_c

    :cond_14
    move v4, v0

    :goto_c
    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lc/c/a/a/j/b;->H(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_15
    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lc/c/a/a/j/b;->H(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v4, v0

    :cond_16
    iget-object v0, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lc/c/a/a/j/b;->H(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_17

    array-length v0, p1

    array-length v3, p2

    add-int/2addr v0, v3

    new-array v0, v0, [I

    array-length v3, p1

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_17
    sget-boolean p1, Lc/c/a/a/s/b;->a:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lc/c/a/a/j/b;->O:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lc/c/a/a/j/b;->H(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lc/c/a/a/j/b;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v4, p1

    :cond_18
    if-eqz v4, :cond_19

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_19
    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_1a
    return v4
.end method

.method public K(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->S:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lc/c/a/a/j/b;->S:Z

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lc/c/a/a/j/b;->t0:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/a/a/j/b;->t0:Z

    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result p1

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_1
    return-void
.end method

.method public L(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v0

    iput-object p1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result p1

    iget-object v1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lc/c/a/a/j/b;->r0(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lc/c/a/a/j/b;->x(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public M(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->V:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lc/c/a/a/j/b;->V:Landroid/content/res/ColorStateList;

    .line 1
    iget-boolean v0, p0, Lc/c/a/a/j/b;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/a/j/b;->S:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public N(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->T:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v0

    iput-boolean p1, p0, Lc/c/a/a/j/b;->T:Z

    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->x(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->r0(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_2
    return-void
.end method

.method public O(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->A:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/c/a/a/j/b;->A:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public P(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lc/c/a/a/j/b;->C:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->C:F

    .line 1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    .line 2
    invoke-virtual {v0, p1}, Lc/c/a/a/u/j;->e(F)Lc/c/a/a/u/j;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput-object p1, v0, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public Q(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->f0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->f0:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public R(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    instance-of v2, v0, Lb/h/d/l/b;

    if-eqz v2, :cond_1

    check-cast v0, Lb/h/d/l/b;

    invoke-interface {v0}, Lb/h/d/l/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eq v0, p1, :cond_4

    .line 3
    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v2

    if-eqz p1, :cond_2

    invoke-static {p1}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result p1

    invoke-virtual {p0, v0}, Lc/c/a/a/j/b;->r0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lc/c/a/a/j/b;->x(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_4
    return-void
.end method

.method public S(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->K:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v0

    iput p1, p0, Lc/c/a/a/j/b;->K:F

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result p1

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public T(Landroid/content/res/ColorStateList;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/j/b;->L:Z

    iget-object v0, p0, Lc/c/a/a/j/b;->J:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/c/a/a/j/b;->J:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public U(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v0

    iput-boolean p1, p0, Lc/c/a/a/j/b;->H:Z

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->x(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->r0(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_2
    return-void
.end method

.method public V(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->B:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->B:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public W(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->Y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->Y:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public X(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->D:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/c/a/a/j/b;->D:Landroid/content/res/ColorStateList;

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->t(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public Y(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->E:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lc/c/a/a/j/b;->E:F

    iget-object v0, p0, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H0:Z

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput p1, v0, Lc/c/a/a/u/g$b;->l:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public Z(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-virtual {p0}, Lc/c/a/a/j/b;->E()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lc/c/a/a/j/b;->C()F

    move-result v1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    sget-boolean p1, Lc/c/a/a/s/b;->a:Z

    if-eqz p1, :cond_1

    .line 1
    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    .line 2
    iget-object v2, p0, Lc/c/a/a/j/b;->F:Landroid/content/res/ColorStateList;

    .line 3
    invoke-static {v2}, Lc/c/a/a/s/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lc/c/a/a/j/b;->J0:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1, v2, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lc/c/a/a/j/b;->O:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/c/a/a/j/b;->C()F

    move-result p1

    invoke-virtual {p0, v0}, Lc/c/a/a/j/b;->r0(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lc/c/a/a/j/b;->x(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_3
    return-void
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    return-void
.end method

.method public a0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->e0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->e0:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public b0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->Q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->Q:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public c0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->d0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->d0:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public d0([I)Z
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->A0:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lc/c/a/a/j/b;->A0:[I

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lc/c/a/a/j/b;->J([I[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1
    iget v12, v6, Lc/c/a/a/j/b;->v0:I

    if-nez v12, :cond_0

    goto/16 :goto_b

    :cond_0
    const/16 v13, 0xff

    const/4 v11, 0x0

    if-ge v12, v13, :cond_2

    .line 2
    iget v0, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    int-to-float v9, v0

    iget v0, v15, Landroid/graphics/Rect;->right:I

    int-to-float v10, v0

    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v10

    move v5, v12

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    move-result v0

    move v11, v0

    const/16 v4, 0xff

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f

    move-object/from16 v7, p1

    const/4 v5, 0x0

    move v11, v4

    const/16 v4, 0xff

    move v13, v0

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    move v11, v0

    :goto_0
    move v13, v11

    goto :goto_1

    :cond_2
    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 4
    :goto_1
    iget-boolean v0, v6, Lc/c/a/a/j/b;->H0:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lc/c/a/a/j/b;->n0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->D()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->D()F

    move-result v2

    iget-object v3, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5
    :cond_3
    iget-boolean v0, v6, Lc/c/a/a/j/b;->H0:Z

    if-nez v0, :cond_5

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lc/c/a/a/j/b;->o0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    .line 6
    iget-object v1, v6, Lc/c/a/a/j/b;->w0:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v6, Lc/c/a/a/j/b;->x0:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->D()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->D()F

    move-result v2

    iget-object v3, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 8
    :cond_5
    iget-boolean v0, v6, Lc/c/a/a/j/b;->H0:Z

    if-eqz v0, :cond_6

    invoke-super/range {p0 .. p1}, Lc/c/a/a/u/g;->draw(Landroid/graphics/Canvas;)V

    .line 9
    :cond_6
    iget v0, v6, Lc/c/a/a/j/b;->E:F

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    cmpl-float v0, v0, v8

    if-lez v0, :cond_9

    iget-boolean v0, v6, Lc/c/a/a/j/b;->H0:Z

    if-nez v0, :cond_9

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lc/c/a/a/j/b;->q0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-boolean v0, v6, Lc/c/a/a/j/b;->H0:Z

    if-nez v0, :cond_8

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    .line 10
    iget-object v1, v6, Lc/c/a/a/j/b;->w0:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, v6, Lc/c/a/a/j/b;->x0:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_8
    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v6, Lc/c/a/a/j/b;->E:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v3, v15, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget v9, v15, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v2

    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v2

    invoke-virtual {v0, v1, v3, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, v6, Lc/c/a/a/j/b;->C:F

    iget v1, v6, Lc/c/a/a/j/b;->E:F

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    iget-object v1, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    iget-object v2, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 12
    :cond_9
    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    iget v1, v6, Lc/c/a/a/j/b;->r0:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v0, v15}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, v6, Lc/c/a/a/j/b;->H0:Z

    if-nez v0, :cond_a

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->D()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->D()F

    move-result v2

    iget-object v3, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    const/16 v12, 0xff

    goto :goto_4

    :cond_a
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v15}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lc/c/a/a/j/b;->l0:Landroid/graphics/Path;

    invoke-virtual {v6, v0, v1}, Lc/c/a/a/u/g;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v2, v6, Lc/c/a/a/j/b;->h0:Landroid/graphics/Paint;

    iget-object v3, v6, Lc/c/a/a/j/b;->l0:Landroid/graphics/Path;

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v9

    .line 13
    iget-object v0, v6, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v10, v0, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v12, 0xff

    move-object v4, v10

    const/4 v11, 0x0

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lc/c/a/a/u/g;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/c/a/a/u/j;Landroid/graphics/RectF;)V

    .line 14
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v6, v15, v0}, Lc/c/a/a/j/b;->y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v6, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v11, v11, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v6, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 15
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v6, v15, v0}, Lc/c/a/a/j/b;->y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v6, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    iget-object v3, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v11, v11, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v6, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    :cond_c
    iget-boolean v0, v6, Lc/c/a/a/j/b;->F0:Z

    if-eqz v0, :cond_15

    .line 17
    iget-object v0, v6, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iget-object v0, v6, Lc/c/a/a/j/b;->k0:Landroid/graphics/PointF;

    .line 18
    invoke-virtual {v0, v8, v8}, Landroid/graphics/PointF;->set(FF)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, v6, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    if-eqz v2, :cond_e

    iget v1, v6, Lc/c/a/a/j/b;->Y:F

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->z()F

    move-result v2

    add-float/2addr v2, v1

    iget v1, v6, Lc/c/a/a/j/b;->b0:F

    add-float/2addr v2, v1

    invoke-static/range {p0 .. p0}, Lb/h/b/a;->A(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_d

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_5

    :cond_d
    iget v1, v15, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_5
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    .line 19
    iget-object v3, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 20
    iget-object v3, v3, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    .line 21
    iget-object v4, v6, Lc/c/a/a/j/b;->i0:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    iget-object v3, v6, Lc/c/a/a/j/b;->i0:Landroid/graphics/Paint$FontMetrics;

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v4, v3

    div-float/2addr v4, v7

    sub-float/2addr v2, v4

    .line 22
    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 23
    :cond_e
    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v2, v6, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    if-eqz v2, :cond_10

    iget v2, v6, Lc/c/a/a/j/b;->Y:F

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->z()F

    move-result v3

    add-float/2addr v3, v2

    iget v2, v6, Lc/c/a/a/j/b;->b0:F

    add-float/2addr v3, v2

    iget v2, v6, Lc/c/a/a/j/b;->f0:F

    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->C()F

    move-result v4

    add-float/2addr v4, v2

    iget v2, v6, Lc/c/a/a/j/b;->c0:F

    add-float/2addr v4, v2

    invoke-static/range {p0 .. p0}, Lb/h/b/a;->A(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_f

    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    goto :goto_6

    :cond_f
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v15, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    :goto_6
    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 25
    :cond_10
    iget-object v0, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 26
    iget-object v2, v0, Lc/c/a/a/q/i;->f:Lc/c/a/a/r/b;

    if-eqz v2, :cond_11

    .line 27
    iget-object v0, v0, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v2

    iput-object v2, v0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v0, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    iget-object v2, v6, Lc/c/a/a/j/b;->g0:Landroid/content/Context;

    .line 29
    iget-object v3, v0, Lc/c/a/a/q/i;->f:Lc/c/a/a/r/b;

    iget-object v4, v0, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    iget-object v0, v0, Lc/c/a/a/q/i;->b:Lc/c/a/a/r/d;

    invoke-virtual {v3, v2, v4, v0}, Lc/c/a/a/r/b;->c(Landroid/content/Context;Landroid/text/TextPaint;Lc/c/a/a/r/d;)V

    .line 30
    :cond_11
    iget-object v0, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 31
    iget-object v0, v0, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    .line 32
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 33
    iget-object v1, v6, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/a/q/i;->a(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_7

    :cond_12
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-object v2, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    :goto_8
    iget-object v2, v6, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    iget-object v3, v6, Lc/c/a/a/j/b;->E0:Landroid/text/TextUtils$TruncateAt;

    if-eqz v3, :cond_14

    iget-object v3, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 35
    iget-object v3, v3, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    .line 36
    iget-object v4, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, v6, Lc/c/a/a/j/b;->E0:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_14
    move-object v8, v2

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v2, v6, Lc/c/a/a/j/b;->k0:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v4, v6, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 37
    iget-object v4, v4, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    move-object/from16 v7, p1

    const/4 v5, 0x0

    move v11, v3

    const/16 v3, 0xff

    move v12, v2

    move v2, v13

    move-object v13, v4

    .line 38
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_16

    invoke-virtual {v14, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_9

    :cond_15
    move v2, v13

    const/16 v3, 0xff

    const/4 v5, 0x0

    .line 39
    :cond_16
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v6, v15, v0}, Lc/c/a/a/j/b;->A(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    iget-object v0, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, v6, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    iget-object v7, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, v6, Lc/c/a/a/j/b;->j0:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v5, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v4, Lc/c/a/a/s/b;->a:Z

    if-eqz v4, :cond_17

    iget-object v4, v6, Lc/c/a/a/j/b;->O:Landroid/graphics/drawable/Drawable;

    iget-object v5, v6, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, v6, Lc/c/a/a/j/b;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v4, v6, Lc/c/a/a/j/b;->O:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    :cond_17
    iget-object v4, v6, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    :goto_a
    invoke-virtual {v4, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {v14, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    :cond_18
    iget v0, v6, Lc/c/a/a/j/b;->v0:I

    if-ge v0, v3, :cond_19

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_19
    :goto_b
    return-void
.end method

.method public e0(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->P:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/c/a/a/j/b;->P:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public f0(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->M:Z

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v0

    iput-boolean p1, p0, Lc/c/a/a/j/b;->M:Z

    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->x(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->r0(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_2
    return-void
.end method

.method public g0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->a0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v0

    iput p1, p0, Lc/c/a/a/j/b;->a0:F

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result p1

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->v0:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->w0:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->B:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    iget v0, p0, Lc/c/a/a/j/b;->Y:F

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lc/c/a/a/j/b;->b0:F

    add-float/2addr v1, v0

    iget-object v0, p0, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 1
    iget-object v2, p0, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    .line 2
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/c/a/a/q/i;->a(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v0, v1

    iget v1, p0, Lc/c/a/a/j/b;->c0:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lc/c/a/a/j/b;->C()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lc/c/a/a/j/b;->f0:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lc/c/a/a/j/b;->G0:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lc/c/a/a/u/g;->getOutline(Landroid/graphics/Outline;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lc/c/a/a/j/b;->C:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->getIntrinsicWidth()I

    move-result v5

    .line 1
    iget v0, p0, Lc/c/a/a/j/b;->B:F

    float-to-int v6, v0

    .line 2
    iget v7, p0, Lc/c/a/a/j/b;->C:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 3
    :goto_0
    iget v0, p0, Lc/c/a/a/j/b;->v0:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public h0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->Z:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result v0

    iput p1, p0, Lc/c/a/a/j/b;->Z:F

    invoke-virtual {p0}, Lc/c/a/a/j/b;->z()F

    move-result p1

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public i0(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->F:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lc/c/a/a/j/b;->F:Landroid/content/res/ColorStateList;

    .line 1
    iget-boolean v0, p0, Lc/c/a/a/j/b;->B0:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/c/a/a/s/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc/c/a/a/j/b;->C0:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 3

    iget-object v0, p0, Lc/c/a/a/j/b;->z:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lc/c/a/a/j/b;->G(Landroid/content/res/ColorStateList;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/j/b;->A:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lc/c/a/a/j/b;->G(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/j/b;->D:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lc/c/a/a/j/b;->G(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lc/c/a/a/j/b;->B0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->C0:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lc/c/a/a/j/b;->G(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    .line 1
    iget-object v0, v0, Lc/c/a/a/q/i;->f:Lc/c/a/a/r/b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lc/c/a/a/r/b;->a:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lc/c/a/a/j/b;->T:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lc/c/a/a/j/b;->S:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lc/c/a/a/j/b;->H(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lc/c/a/a/j/b;->H(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/j/b;->y0:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lc/c/a/a/j/b;->G(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    return v1
.end method

.method public j0(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v0, p0, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lc/c/a/a/j/b;->G:Ljava/lang/CharSequence;

    iget-object p1, p0, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lc/c/a/a/q/i;->d:Z

    .line 2
    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_1
    return-void
.end method

.method public k0(Lc/c/a/a/r/b;)V
    .locals 5

    iget-object v0, p0, Lc/c/a/a/j/b;->m0:Lc/c/a/a/q/i;

    iget-object v1, p0, Lc/c/a/a/j/b;->g0:Landroid/content/Context;

    .line 1
    iget-object v2, v0, Lc/c/a/a/q/i;->f:Lc/c/a/a/r/b;

    if-eq v2, p1, :cond_2

    iput-object p1, v0, Lc/c/a/a/q/i;->f:Lc/c/a/a/r/b;

    if-eqz p1, :cond_1

    iget-object v2, v0, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    iget-object v3, v0, Lc/c/a/a/q/i;->b:Lc/c/a/a/r/d;

    .line 2
    invoke-virtual {p1}, Lc/c/a/a/r/b;->a()V

    iget-object v4, p1, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {p1, v2, v4}, Lc/c/a/a/r/b;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v4, Lc/c/a/a/r/c;

    invoke-direct {v4, p1, v2, v3}, Lc/c/a/a/r/c;-><init>(Lc/c/a/a/r/b;Landroid/text/TextPaint;Lc/c/a/a/r/d;)V

    invoke-virtual {p1, v1, v4}, Lc/c/a/a/r/b;->b(Landroid/content/Context;Lc/c/a/a/r/d;)V

    .line 4
    iget-object v2, v0, Lc/c/a/a/q/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/a/q/i$b;

    if-eqz v2, :cond_0

    iget-object v3, v0, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    invoke-interface {v2}, Lc/c/a/a/q/i$b;->getState()[I

    move-result-object v2

    iput-object v2, v3, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    iget-object v2, v0, Lc/c/a/a/q/i;->a:Landroid/text/TextPaint;

    iget-object v3, v0, Lc/c/a/a/q/i;->b:Lc/c/a/a/r/d;

    invoke-virtual {p1, v1, v2, v3}, Lc/c/a/a/r/b;->c(Landroid/content/Context;Landroid/text/TextPaint;Lc/c/a/a/r/d;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lc/c/a/a/q/i;->d:Z

    :cond_1
    iget-object p1, v0, Lc/c/a/a/q/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/q/i$b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lc/c/a/a/q/i$b;->a()V

    invoke-interface {p1}, Lc/c/a/a/q/i$b;->getState()[I

    move-result-object v0

    invoke-interface {p1, v0}, Lc/c/a/a/q/i$b;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public l0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->c0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->c0:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public m0(F)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->b0:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->b0:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->I()V

    :cond_0
    return-void
.end method

.method public n0(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->B0:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lc/c/a/a/j/b;->B0:Z

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lc/c/a/a/j/b;->F:Landroid/content/res/ColorStateList;

    invoke-static {p1}, Lc/c/a/a/s/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc/c/a/a/j/b;->C0:Landroid/content/res/ColorStateList;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public final o0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/c/a/a/j/b;->t0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lb/h/b/a;->Y(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lb/h/b/a;->Y(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Lb/h/b/a;->Y(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onLevelChange(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H0:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lc/c/a/a/u/g;->onStateChange([I)Z

    .line 1
    :cond_0
    iget-object v0, p0, Lc/c/a/a/j/b;->A0:[I

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/c/a/a/j/b;->J([I[I)Z

    move-result p1

    return p1
.end method

.method public final p0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/j/b;->M:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r0(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget v0, p0, Lc/c/a/a/j/b;->v0:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lc/c/a/a/j/b;->v0:I

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->w0:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/c/a/a/j/b;->w0:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->y0:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/c/a/a/j/b;->y0:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/j/b;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/j/b;->z0:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lc/c/a/a/j/b;->z0:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lc/c/a/a/j/b;->y0:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lc/c/a/a/a;->u(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/j/b;->x0:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lc/c/a/a/j/b;->q0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final x(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, Lb/h/b/a;->A(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Lb/h/b/a;->Y(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lc/c/a/a/j/b;->N:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, p0, Lc/c/a/a/j/b;->A0:[I

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget-object v0, p0, Lc/c/a/a/j/b;->P:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lc/c/a/a/j/b;->L:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lc/c/a/a/j/b;->J:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public final y(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget v0, p0, Lc/c/a/a/j/b;->Y:F

    iget v1, p0, Lc/c/a/a/j/b;->Z:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lc/c/a/a/j/b;->F()F

    move-result v1

    invoke-static {p0}, Lb/h/b/a;->A(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 1
    :goto_0
    iget-boolean v0, p0, Lc/c/a/a/j/b;->t0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/j/b;->U:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/c/a/a/j/b;->I:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget v1, p0, Lc/c/a/a/j/b;->K:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lc/c/a/a/j/b;->g0:Landroid/content/Context;

    const/16 v2, 0x18

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v1, v1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    move v0, v1

    .line 4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    sub-float/2addr p1, v1

    iput p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_4
    return-void
.end method

.method public z()F
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/j/b;->p0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/a/j/b;->o0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lc/c/a/a/j/b;->Z:F

    invoke-virtual {p0}, Lc/c/a/a/j/b;->F()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lc/c/a/a/j/b;->a0:F

    add-float/2addr v1, v0

    return v1
.end method