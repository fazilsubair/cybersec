.class public Lc/c/a/a/r/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/res/ColorStateList;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Z

.field public final j:F

.field public k:F

.field public final l:I

.field public m:Z

.field public n:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/r/b;->m:Z

    sget-object v1, Lc/c/a/a/b;->z:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lc/c/a/a/r/b;->k:F

    const/4 v3, 0x3

    invoke-static {p1, v1, v3}, Lc/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lc/c/a/a/r/b;->a:Landroid/content/res/ColorStateList;

    const/4 v3, 0x4

    invoke-static {p1, v1, v3}, Lc/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x5

    invoke-static {p1, v1, v3}, Lc/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lc/c/a/a/r/b;->d:I

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lc/c/a/a/r/b;->e:I

    const/16 v3, 0xc

    .line 1
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    .line 2
    :goto_0
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lc/c/a/a/r/b;->l:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc/c/a/a/r/b;->c:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    const/4 v3, 0x6

    invoke-static {p1, v1, v3}, Lc/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lc/c/a/a/r/b;->b:Landroid/content/res/ColorStateList;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lc/c/a/a/r/b;->f:F

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lc/c/a/a/r/b;->g:F

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lc/c/a/a/r/b;->h:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    sget-object v1, Lc/c/a/a/b;->s:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Lc/c/a/a/r/b;->i:Z

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lc/c/a/a/r/b;->j:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lc/c/a/a/r/b;->i:Z

    iput v2, p0, Lc/c/a/a/r/b;->j:F

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/r/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lc/c/a/a/r/b;->d:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    if-nez v0, :cond_4

    iget v0, p0, Lc/c/a/a/r/b;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    iget-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    iget v1, p0, Lc/c/a/a/r/b;->d:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    :cond_4
    return-void
.end method

.method public b(Landroid/content/Context;Lc/c/a/a/r/d;)V
    .locals 9

    invoke-virtual {p0}, Lc/c/a/a/r/b;->a()V

    iget v1, p0, Lc/c/a/a/r/b;->l:I

    const/4 v8, 0x1

    if-nez v1, :cond_0

    iput-boolean v8, p0, Lc/c/a/a/r/b;->m:Z

    :cond_0
    iget-boolean v0, p0, Lc/c/a/a/r/b;->m:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1, v8}, Lc/c/a/a/r/d;->b(Landroid/graphics/Typeface;Z)V

    return-void

    :cond_1
    :try_start_0
    new-instance v4, Lc/c/a/a/r/b$a;

    invoke-direct {v4, p0, p2}, Lc/c/a/a/r/b$a;-><init>(Lc/c/a/a/r/b;Lc/c/a/a/r/d;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, -0x4

    invoke-virtual {v4, p1, v0}, Lb/h/c/b/g;->a(ILandroid/os/Handler;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lb/h/c/b/h;->d(Landroid/content/Context;ILandroid/util/TypedValue;ILb/h/c/b/g;Landroid/os/Handler;ZZ)Landroid/graphics/Typeface;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error loading font "

    .line 2
    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/r/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextAppearance"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v8, p0, Lc/c/a/a/r/b;->m:Z

    const/4 p1, -0x3

    invoke-virtual {p2, p1}, Lc/c/a/a/r/d;->a(I)V

    goto :goto_0

    :catch_1
    iput-boolean v8, p0, Lc/c/a/a/r/b;->m:Z

    invoke-virtual {p2, v8}, Lc/c/a/a/r/d;->a(I)V

    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/text/TextPaint;Lc/c/a/a/r/d;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/r/b;->a()V

    iget-object v0, p0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    .line 2
    invoke-virtual {p0, p2, v0}, Lc/c/a/a/r/b;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    new-instance v0, Lc/c/a/a/r/c;

    invoke-direct {v0, p0, p2, p3}, Lc/c/a/a/r/c;-><init>(Lc/c/a/a/r/b;Landroid/text/TextPaint;Lc/c/a/a/r/d;)V

    invoke-virtual {p0, p1, v0}, Lc/c/a/a/r/b;->b(Landroid/content/Context;Lc/c/a/a/r/d;)V

    .line 3
    iget-object p1, p0, Lc/c/a/a/r/b;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    iget p1, p0, Lc/c/a/a/r/b;->h:F

    iget p3, p0, Lc/c/a/a/r/b;->f:F

    iget v0, p0, Lc/c/a/a/r/b;->g:F

    iget-object v1, p0, Lc/c/a/a/r/b;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Lc/c/a/a/r/b;->d:I

    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/high16 p2, -0x41800000    # -0.25f

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    iget p2, p0, Lc/c/a/a/r/b;->k:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_2

    iget-boolean p2, p0, Lc/c/a/a/r/b;->i:Z

    if-eqz p2, :cond_2

    iget p2, p0, Lc/c/a/a/r/b;->j:F

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    return-void
.end method
