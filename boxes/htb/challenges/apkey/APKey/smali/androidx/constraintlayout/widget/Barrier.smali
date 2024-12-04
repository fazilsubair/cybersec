.class public Landroidx/constraintlayout/widget/Barrier;
.super Lb/f/c/b;
.source ""


# instance fields
.field public i:I

.field public j:I

.field public k:Lb/f/b/h/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/f/c/b;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/f/c/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public f(Landroid/util/AttributeSet;)V
    .locals 6

    invoke-super {p0, p1}, Lb/f/c/b;->f(Landroid/util/AttributeSet;)V

    new-instance v0, Lb/f/b/h/a;

    invoke-direct {v0}, Lb/f/b/h/a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lb/f/c/i;->b:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_1

    :cond_0
    const/16 v4, 0xe

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 1
    iput-boolean v3, v4, Lb/f/b/h/a;->o0:Z

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    if-ne v3, v4, :cond_2

    .line 2
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    .line 3
    iput v3, v4, Lb/f/b/h/a;->p0:I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    iput-object p1, p0, Lb/f/c/b;->e:Lb/f/b/h/g;

    invoke-virtual {p0}, Lb/f/c/b;->k()V

    return-void
.end method

.method public g(Lb/f/b/h/d;Z)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    .line 1
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->j:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x11

    if-ge v1, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_3

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    :goto_0
    const/4 p2, 0x0

    :goto_1
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->j:I

    goto :goto_3

    :cond_4
    if-ne v0, v2, :cond_5

    :goto_2
    const/4 p2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    instance-of p2, p1, Lb/f/b/h/a;

    if-eqz p2, :cond_6

    check-cast p1, Lb/f/b/h/a;

    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->j:I

    .line 2
    iput p2, p1, Lb/f/b/h/a;->n0:I

    :cond_6
    return-void
.end method

.method public getMargin()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    .line 1
    iget v0, v0, Lb/f/b/h/a;->p0:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    .line 1
    iput-boolean p1, v0, Lb/f/b/h/a;->o0:Z

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    .line 1
    iput p1, v0, Lb/f/b/h/a;->p0:I

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->k:Lb/f/b/h/a;

    .line 1
    iput p1, v0, Lb/f/b/h/a;->p0:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->i:I

    return-void
.end method
