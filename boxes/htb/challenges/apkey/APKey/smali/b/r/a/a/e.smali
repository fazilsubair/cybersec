.class public Lb/r/a/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public a:[F

.field public b:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lb/r/a/a/a;->l:[I

    invoke-static {v0, p1, p2, v1}, Lb/h/c/b/h;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "pathData"

    .line 2
    invoke-static {p3, p2}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-static {p1, p3, p2, v0}, Lb/h/c/b/h;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/h/b/a;->t(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, Lb/r/a/a/e;->a(Landroid/graphics/Path;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Landroid/view/InflateException;

    const-string p3, "The path is null, which is created from "

    invoke-static {p3, p2}, Lc/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "controlX1"

    invoke-static {p3, p2}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "controlY1"

    invoke-static {p3, v0}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 3
    invoke-static {p3, p2}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v4, p2

    :goto_0
    const/4 p2, 0x1

    invoke-static {p3, v0}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v5, p2

    :goto_1
    const-string p2, "controlX2"

    .line 4
    invoke-static {p3, p2}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "controlY2"

    invoke-static {p3, v1}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-ne v0, v3, :cond_7

    if-nez v0, :cond_4

    .line 5
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4, v5, p3, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0, p2}, Lb/r/a/a/e;->a(Landroid/graphics/Path;)V

    goto :goto_4

    :cond_4
    const/4 v0, 0x2

    .line 6
    invoke-static {p3, p2}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x0

    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v6, p2

    :goto_2
    const/4 p2, 0x3

    invoke-static {p3, v1}, Lb/h/c/b/h;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p2, 0x0

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    move v7, p2

    .line 7
    :goto_3
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p2, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-virtual {p0, p2}, Lb/r/a/a/e;->a(Landroid/graphics/Path;)V

    .line 8
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 9
    :cond_7
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Landroid/view/InflateException;

    const-string p2, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;)V
    .locals 10

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    const v2, 0x3b03126f    # 0.002f

    div-float v2, p1, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0xbb8

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_5

    new-array v4, v2, [F

    iput-object v4, p0, Lb/r/a/a/e;->a:[F

    new-array v4, v2, [F

    iput-object v4, p0, Lb/r/a/a/e;->b:[F

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    int-to-float v6, v5

    mul-float v6, v6, p1

    add-int/lit8 v7, v2, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object v6, p0, Lb/r/a/a/e;->a:[F

    aget v7, v4, v1

    aput v7, v6, v5

    iget-object v6, p0, Lb/r/a/a/e;->b:[F

    aget v7, v4, v3

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/r/a/a/e;->a:[F

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double p1, v4, v6

    if-gtz p1, :cond_4

    iget-object p1, p0, Lb/r/a/a/e;->b:[F

    aget p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    cmpl-double p1, v4, v6

    if-gtz p1, :cond_4

    iget-object p1, p0, Lb/r/a/a/e;->a:[F

    add-int/lit8 v4, v2, -0x1

    aget p1, p1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v8, p1

    cmpl-double p1, v8, v6

    if-gtz p1, :cond_4

    iget-object p1, p0, Lb/r/a/a/e;->b:[F

    aget p1, p1, v4

    sub-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v4, p1

    cmpl-double p1, v4, v6

    if-gtz p1, :cond_4

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lb/r/a/a/e;->a:[F

    add-int/lit8 v5, v3, 0x1

    aget v3, v4, v3

    cmpg-float p1, v3, p1

    if-ltz p1, :cond_1

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    move v3, v5

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Path cannot loop back on itself, x :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path should be continuous, can\'t have 2+ contours"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Path must start at (0,0) and end at (1,1) start: "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lb/r/a/a/e;->a:[F

    aget v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lb/r/a/a/e;->b:[F

    aget v1, v5, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/r/a/a/e;->a:[F

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/r/a/a/e;->b:[F

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Path has a invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getInterpolation(F)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Lb/r/a/a/e;->a:[F

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    sub-int v4, v2, v1

    if-le v4, v3, :cond_3

    add-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lb/r/a/a/e;->a:[F

    aget v5, v5, v4

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lb/r/a/a/e;->a:[F

    aget v4, v3, v2

    aget v5, v3, v1

    sub-float/2addr v4, v5

    cmpl-float v0, v4, v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lb/r/a/a/e;->b:[F

    aget p1, p1, v1

    return p1

    :cond_4
    aget v0, v3, v1

    sub-float/2addr p1, v0

    div-float/2addr p1, v4

    iget-object v0, p0, Lb/r/a/a/e;->b:[F

    aget v1, v0, v1

    aget v0, v0, v2

    invoke-static {v0, v1, p1, v1}, Lc/a/a/a/a;->a(FFFF)F

    move-result p1

    return p1
.end method
