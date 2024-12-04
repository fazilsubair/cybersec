.class public Lc/c/a/a/u/g;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lb/h/d/l/a;
.implements Lc/c/a/a/u/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/u/g$b;
    }
.end annotation


# static fields
.field public static final x:Ljava/lang/String;

.field public static final y:Landroid/graphics/Paint;


# instance fields
.field public b:Lc/c/a/a/u/g$b;

.field public final c:[Lc/c/a/a/u/m$f;

.field public final d:[Lc/c/a/a/u/m$f;

.field public final e:Ljava/util/BitSet;

.field public f:Z

.field public final g:Landroid/graphics/Matrix;

.field public final h:Landroid/graphics/Path;

.field public final i:Landroid/graphics/Path;

.field public final j:Landroid/graphics/RectF;

.field public final k:Landroid/graphics/RectF;

.field public final l:Landroid/graphics/Region;

.field public final m:Landroid/graphics/Region;

.field public n:Lc/c/a/a/u/j;

.field public final o:Landroid/graphics/Paint;

.field public final p:Landroid/graphics/Paint;

.field public final q:Lc/c/a/a/t/a;

.field public final r:Lc/c/a/a/u/k$b;

.field public final s:Lc/c/a/a/u/k;

.field public t:Landroid/graphics/PorterDuffColorFilter;

.field public u:Landroid/graphics/PorterDuffColorFilter;

.field public final v:Landroid/graphics/RectF;

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lc/c/a/a/u/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/c/a/a/u/g;->x:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lc/c/a/a/u/g;->y:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lc/c/a/a/u/j;

    invoke-direct {v0}, Lc/c/a/a/u/j;-><init>()V

    invoke-direct {p0, v0}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/j;)V

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/u/g$b;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lc/c/a/a/u/m$f;

    iput-object v1, p0, Lc/c/a/a/u/g;->c:[Lc/c/a/a/u/m$f;

    new-array v0, v0, [Lc/c/a/a/u/m$f;

    iput-object v0, p0, Lc/c/a/a/u/g;->d:[Lc/c/a/a/u/m$f;

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lc/c/a/a/u/g;->e:Ljava/util/BitSet;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->g:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->i:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->l:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lc/c/a/a/u/g;->m:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    new-instance v3, Lc/c/a/a/t/a;

    invoke-direct {v3}, Lc/c/a/a/t/a;-><init>()V

    iput-object v3, p0, Lc/c/a/a/u/g;->q:Lc/c/a/a/t/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1
    sget-object v3, Lc/c/a/a/u/k$a;->a:Lc/c/a/a/u/k;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v3, Lc/c/a/a/u/k;

    invoke-direct {v3}, Lc/c/a/a/u/k;-><init>()V

    :goto_0
    iput-object v3, p0, Lc/c/a/a/u/g;->s:Lc/c/a/a/u/k;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lc/c/a/a/u/g;->v:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lc/c/a/a/u/g;->w:Z

    iput-object p1, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Lc/c/a/a/u/g;->y:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->v()Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->u([I)Z

    new-instance p1, Lc/c/a/a/u/g$a;

    invoke-direct {p1, p0}, Lc/c/a/a/u/g$a;-><init>(Lc/c/a/a/u/g;)V

    iput-object p1, p0, Lc/c/a/a/u/g;->r:Lc/c/a/a/u/k$b;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/u/j;)V
    .locals 2

    new-instance v0, Lc/c/a/a/u/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lc/c/a/a/u/g$b;-><init>(Lc/c/a/a/u/j;Lc/c/a/a/n/a;)V

    invoke-direct {p0, v0}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/g$b;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lc/c/a/a/u/g;->c(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v0, v0, Lc/c/a/a/u/g$b;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/u/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lc/c/a/a/u/g;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v1, Lc/c/a/a/u/g$b;->j:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lc/c/a/a/u/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lc/c/a/a/u/g;->v:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public final c(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lc/c/a/a/u/g;->s:Lc/c/a/a/u/k;

    iget-object v1, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v2, v1, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    iget v3, v1, Lc/c/a/a/u/g$b;->k:F

    iget-object v4, p0, Lc/c/a/a/u/g;->r:Lc/c/a/a/u/k$b;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lc/c/a/a/u/k;->a(Lc/c/a/a/u/j;FLandroid/graphics/RectF;Lc/c/a/a/u/k$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public final d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->e(I)I

    move-result p1

    :cond_1
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->e(I)I

    move-result p2

    if-eq p2, p1, :cond_3

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lc/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v2, v2, Lc/c/a/a/u/g$b;->m:I

    ushr-int/lit8 v3, v2, 0x7

    add-int/2addr v2, v3

    mul-int v2, v2, v0

    ushr-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/a/a/u/g;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v2, v2, Lc/c/a/a/u/g$b;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v3, v3, Lc/c/a/a/u/g$b;->m:I

    ushr-int/lit8 v4, v3, 0x7

    add-int/2addr v3, v4

    mul-int v3, v3, v1

    ushr-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lc/c/a/a/u/g;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/u/g;->k()F

    move-result v2

    neg-float v2, v2

    .line 2
    iget-object v4, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v4, v4, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v5, Lc/c/a/a/u/j$b;

    invoke-direct {v5, v4}, Lc/c/a/a/u/j$b;-><init>(Lc/c/a/a/u/j;)V

    .line 5
    iget-object v6, v4, Lc/c/a/a/u/j;->e:Lc/c/a/a/u/c;

    .line 6
    instance-of v7, v6, Lc/c/a/a/u/h;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lc/c/a/a/u/b;

    invoke-direct {v7, v2, v6}, Lc/c/a/a/u/b;-><init>(FLc/c/a/a/u/c;)V

    move-object v6, v7

    .line 7
    :goto_0
    iput-object v6, v5, Lc/c/a/a/u/j$b;->e:Lc/c/a/a/u/c;

    .line 8
    iget-object v6, v4, Lc/c/a/a/u/j;->f:Lc/c/a/a/u/c;

    .line 9
    instance-of v7, v6, Lc/c/a/a/u/h;

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lc/c/a/a/u/b;

    invoke-direct {v7, v2, v6}, Lc/c/a/a/u/b;-><init>(FLc/c/a/a/u/c;)V

    move-object v6, v7

    .line 10
    :goto_1
    iput-object v6, v5, Lc/c/a/a/u/j$b;->f:Lc/c/a/a/u/c;

    .line 11
    iget-object v6, v4, Lc/c/a/a/u/j;->h:Lc/c/a/a/u/c;

    .line 12
    instance-of v7, v6, Lc/c/a/a/u/h;

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Lc/c/a/a/u/b;

    invoke-direct {v7, v2, v6}, Lc/c/a/a/u/b;-><init>(FLc/c/a/a/u/c;)V

    move-object v6, v7

    .line 13
    :goto_2
    iput-object v6, v5, Lc/c/a/a/u/j$b;->h:Lc/c/a/a/u/c;

    .line 14
    iget-object v4, v4, Lc/c/a/a/u/j;->g:Lc/c/a/a/u/c;

    .line 15
    instance-of v6, v4, Lc/c/a/a/u/h;

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    new-instance v6, Lc/c/a/a/u/b;

    invoke-direct {v6, v2, v4}, Lc/c/a/a/u/b;-><init>(FLc/c/a/a/u/c;)V

    move-object v4, v6

    .line 16
    :goto_3
    iput-object v4, v5, Lc/c/a/a/u/j$b;->g:Lc/c/a/a/u/c;

    .line 17
    invoke-virtual {v5}, Lc/c/a/a/u/j$b;->a()Lc/c/a/a/u/j;

    move-result-object v7

    .line 18
    iput-object v7, p0, Lc/c/a/a/u/g;->n:Lc/c/a/a/u/j;

    iget-object v6, p0, Lc/c/a/a/u/g;->s:Lc/c/a/a/u/k;

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v8, v2, Lc/c/a/a/u/g$b;->k:F

    .line 19
    iget-object v2, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lc/c/a/a/u/g;->k()F

    move-result v2

    iget-object v4, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v9, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    .line 20
    iget-object v11, p0, Lc/c/a/a/u/g;->i:Landroid/graphics/Path;

    const/4 v10, 0x0

    .line 21
    invoke-virtual/range {v6 .. v11}, Lc/c/a/a/u/k;->a(Lc/c/a/a/u/j;FLandroid/graphics/RectF;Lc/c/a/a/u/k$b;Landroid/graphics/Path;)V

    .line 22
    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v4, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v4}, Lc/c/a/a/u/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iput-boolean v3, p0, Lc/c/a/a/u/g;->f:Z

    .line 23
    :cond_4
    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v4, v2, Lc/c/a/a/u/g$b;->q:I

    const/16 v5, 0x15

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    iget v8, v2, Lc/c/a/a/u/g$b;->r:I

    if-lez v8, :cond_8

    if-eq v4, v6, :cond_7

    .line 24
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_6

    .line 25
    iget-object v2, v2, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v2, v8}, Lc/c/a/a/u/j;->d(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 26
    iget-object v2, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v2, 0x1d

    if-ge v4, v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_9

    goto/16 :goto_8

    .line 27
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    invoke-virtual {p0}, Lc/c/a/a/u/g;->i()I

    move-result v2

    invoke-virtual {p0}, Lc/c/a/a/u/g;->j()I

    move-result v4

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v5, :cond_a

    iget-boolean v5, p0, Lc/c/a/a/u/g;->w:Z

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v8, v8, Lc/c/a/a/u/g$b;->r:I

    neg-int v8, v8

    invoke-virtual {v5, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    sget-object v8, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_a
    int-to-float v2, v2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-boolean v2, p0, Lc/c/a/a/u/g;->w:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->f(Landroid/graphics/Canvas;)V

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lc/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lc/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    if-ltz v2, :cond_10

    if-ltz v4, :cond_10

    iget-object v5, p0, Lc/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v8, v8, Lc/c/a/a/u/g$b;->r:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    add-int/2addr v8, v2

    iget-object v5, p0, Lc/c/a/a/u/g;->v:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    iget-object v9, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v9, v9, Lc/c/a/a/u/g$b;->r:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v5

    add-int/2addr v9, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v9, v9, Lc/c/a/a/u/g$b;->r:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    int-to-float v2, v8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v9, v9, Lc/c/a/a/u/g$b;->r:I

    sub-int/2addr v8, v9

    sub-int/2addr v8, v4

    int-to-float v4, v8

    neg-float v8, v2

    neg-float v9, v4

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v6}, Lc/c/a/a/u/g;->f(Landroid/graphics/Canvas;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 30
    :goto_8
    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v4, v2, Lc/c/a/a/u/g$b;->v:Landroid/graphics/Paint$Style;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v4, v5, :cond_c

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v4, v5, :cond_d

    :cond_c
    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_e

    .line 31
    iget-object v6, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    iget-object v7, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    iget-object v8, v2, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lc/c/a/a/u/g;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/c/a/a/u/j;Landroid/graphics/RectF;)V

    .line 32
    :cond_e
    invoke-virtual {p0}, Lc/c/a/a/u/g;->m()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 33
    iget-object v5, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    iget-object v6, p0, Lc/c/a/a/u/g;->i:Landroid/graphics/Path;

    iget-object v7, p0, Lc/c/a/a/u/g;->n:Lc/c/a/a/u/j;

    .line 34
    iget-object v2, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lc/c/a/a/u/g;->k()F

    move-result v2

    iget-object v3, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v8, p0, Lc/c/a/a/u/g;->k:Landroid/graphics/RectF;

    move-object v3, p0

    move-object v4, p1

    .line 35
    invoke-virtual/range {v3 .. v8}, Lc/c/a/a/u/g;->g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/c/a/a/u/j;Landroid/graphics/RectF;)V

    .line 36
    :cond_f
    iget-object p1, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 37
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->o:F

    .line 2
    iget v2, v0, Lc/c/a/a/u/g$b;->p:F

    add-float/2addr v1, v2

    .line 3
    iget v2, v0, Lc/c/a/a/u/g$b;->n:F

    add-float/2addr v1, v2

    .line 4
    iget-object v0, v0, Lc/c/a/a/u/g$b;->b:Lc/c/a/a/n/a;

    if-eqz v0, :cond_3

    .line 5
    iget-boolean v2, v0, Lc/c/a/a/n/a;->a:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xff

    .line 6
    invoke-static {p1, v2}, Lb/h/d/a;->c(II)I

    move-result v3

    iget v4, v0, Lc/c/a/a/n/a;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 7
    iget v3, v0, Lc/c/a/a/n/a;->d:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-lez v5, :cond_2

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    div-float/2addr v1, v3

    const/high16 v3, 0x40900000    # 4.5f

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v1, v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 8
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1, v2}, Lb/h/d/a;->c(II)I

    move-result p1

    iget v0, v0, Lc/c/a/a/n/a;->b:I

    invoke-static {p1, v0, v4}, Lc/c/a/a/a;->l(IIF)I

    move-result p1

    invoke-static {p1, v1}, Lb/h/d/a;->c(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lc/c/a/a/u/g;->e:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lc/c/a/a/u/g;->x:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v0, v0, Lc/c/a/a/u/g$b;->s:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lc/c/a/a/u/g;->q:Lc/c/a/a/t/a;

    .line 1
    iget-object v1, v1, Lc/c/a/a/t/a;->a:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/u/g;->c:[Lc/c/a/a/u/m$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lc/c/a/a/u/g;->q:Lc/c/a/a/t/a;

    iget-object v3, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v3, v3, Lc/c/a/a/u/g$b;->r:I

    .line 3
    sget-object v4, Lc/c/a/a/u/m$f;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4, v2, v3, p1}, Lc/c/a/a/u/m$f;->a(Landroid/graphics/Matrix;Lc/c/a/a/t/a;ILandroid/graphics/Canvas;)V

    .line 4
    iget-object v1, p0, Lc/c/a/a/u/g;->d:[Lc/c/a/a/u/m$f;

    aget-object v1, v1, v0

    iget-object v2, p0, Lc/c/a/a/u/g;->q:Lc/c/a/a/t/a;

    iget-object v3, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v3, v3, Lc/c/a/a/u/g$b;->r:I

    .line 5
    invoke-virtual {v1, v4, v2, v3, p1}, Lc/c/a/a/u/m$f;->a(Landroid/graphics/Matrix;Lc/c/a/a/t/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-boolean v0, p0, Lc/c/a/a/u/g;->w:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lc/c/a/a/u/g;->i()I

    move-result v0

    invoke-virtual {p0}, Lc/c/a/a/u/g;->j()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    sget-object v3, Lc/c/a/a/u/g;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lc/c/a/a/u/j;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Lc/c/a/a/u/j;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object p3, p4, Lc/c/a/a/u/j;->f:Lc/c/a/a/u/c;

    .line 2
    invoke-interface {p3, p5}, Lc/c/a/a/u/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget p4, p4, Lc/c/a/a/u/g$b;->k:F

    mul-float p3, p3, p4

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->q:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, v0, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/a/u/j;->d(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/c/a/a/u/g;->l()F

    move-result v0

    iget-object v1, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v1, Lc/c/a/a/u/g$b;->k:F

    mul-float v0, v0, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lc/c/a/a/u/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/u/g;->l:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    invoke-virtual {p0, v0, v1}, Lc/c/a/a/u/g;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lc/c/a/a/u/g;->m:Landroid/graphics/Region;

    iget-object v1, p0, Lc/c/a/a/u/g;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lc/c/a/a/u/g;->l:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lc/c/a/a/u/g;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lc/c/a/a/u/g;->m:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lc/c/a/a/u/g;->l:Landroid/graphics/Region;

    return-object v0
.end method

.method public h()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/c/a/a/u/g;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public i()I
    .locals 5

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lc/c/a/a/u/g$b;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/u/g;->f:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()I
    .locals 5

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->s:I

    int-to-double v1, v1

    iget v0, v0, Lc/c/a/a/u/g$b;->t:I

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v0, v3

    return v0
.end method

.method public final k()F
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/u/g;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()F
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    .line 1
    iget-object v0, v0, Lc/c/a/a/u/j;->e:Lc/c/a/a/u/c;

    .line 2
    invoke-virtual {p0}, Lc/c/a/a/u/g;->h()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/a/a/u/c;->a(Landroid/graphics/RectF;)F

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lc/c/a/a/u/g$b;

    iget-object v1, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    invoke-direct {v0, v1}, Lc/c/a/a/u/g$b;-><init>(Lc/c/a/a/u/g$b;)V

    iput-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    return-object p0
.end method

.method public n(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    new-instance v1, Lc/c/a/a/n/a;

    invoke-direct {v1, p1}, Lc/c/a/a/n/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lc/c/a/a/u/g$b;->b:Lc/c/a/a/n/a;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->w()V

    return-void
.end method

.method public o(F)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/c/a/a/u/g$b;->o:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->w()V

    :cond_0
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/u/g;->f:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->u([I)Z

    move-result p1

    invoke-virtual {p0}, Lc/c/a/a/u/g;->v()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public p(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v1, v0, Lc/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lc/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public q(F)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lc/c/a/a/u/g$b;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/a/u/g;->f:Z

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public r(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput p1, v0, Lc/c/a/a/u/g$b;->l:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->t(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public s(FLandroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput p1, v0, Lc/c/a/a/u/g$b;->l:F

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    .line 2
    invoke-virtual {p0, p2}, Lc/c/a/a/u/g;->t(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lc/c/a/a/u/g$b;->m:I

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput-object p1, v0, Lc/c/a/a/u/g$b;->c:Landroid/graphics/ColorFilter;

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShapeAppearanceModel(Lc/c/a/a/u/j;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput-object p1, v0, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iput-object p1, v0, Lc/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->v()Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v1, v0, Lc/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lc/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Lc/c/a/a/u/g;->v()Z

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public t(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v1, v0, Lc/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lc/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/u/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final u([I)Z
    .locals 4

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v0, v0, Lc/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v2, v2, Lc/c/a/a/u/g$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v2, v2, Lc/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    iget-object v3, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v3, v3, Lc/c/a/a/u/g$b;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    iget-object v0, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final v()Z
    .locals 7

    iget-object v0, p0, Lc/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lc/c/a/a/u/g;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v3, v2, Lc/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lc/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lc/c/a/a/u/g;->o:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lc/c/a/a/u/g;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lc/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v3, v2, Lc/c/a/a/u/g$b;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lc/c/a/a/u/g$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lc/c/a/a/u/g;->p:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v2, v4, v6}, Lc/c/a/a/u/g;->d(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lc/c/a/a/u/g;->u:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-boolean v3, v2, Lc/c/a/a/u/g$b;->u:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc/c/a/a/u/g;->q:Lc/c/a/a/t/a;

    iget-object v2, v2, Lc/c/a/a/u/g$b;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v3, v2}, Lc/c/a/a/t/a;->a(I)V

    :cond_0
    iget-object v2, p0, Lc/c/a/a/u/g;->t:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Lb/h/b/a;->v(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/u/g;->u:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v0}, Lb/h/b/a;->v(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    return v5
.end method

.method public final w()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget v1, v0, Lc/c/a/a/u/g$b;->o:F

    .line 2
    iget v2, v0, Lc/c/a/a/u/g$b;->p:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v1

    float-to-double v2, v2

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lc/c/a/a/u/g$b;->r:I

    iget-object v0, p0, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lc/c/a/a/u/g$b;->s:I

    invoke-virtual {p0}, Lc/c/a/a/u/g;->v()Z

    .line 4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
