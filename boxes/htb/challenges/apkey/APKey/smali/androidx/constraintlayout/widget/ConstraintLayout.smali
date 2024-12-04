.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$a;,
        Landroidx/constraintlayout/widget/ConstraintLayout$b;
    }
.end annotation


# instance fields
.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lb/f/b/h/e;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I

.field public k:Lb/f/c/d;

.field public l:Lb/f/c/c;

.field public m:I

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lb/f/b/h/d;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    new-instance p1, Lb/f/b/h/e;

    invoke-direct {p1}, Lb/f/b/h/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/f/c/c;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    new-instance p1, Lb/f/b/h/e;

    invoke-direct {p1}, Lb/f/b/h/e;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/16 v0, 0x101

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/f/c/c;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    if-lez v1, :cond_1

    move v2, v1

    :cond_1
    return v2
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method public c(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    return p1
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/c/b;

    invoke-virtual {v4}, Lb/f/c/b;->j()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float v9, v9, v3

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float v10, v10, v4

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v5

    mul-float v11, v11, v3

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float v8, v8, v4

    float-to-int v8, v8

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final e(Landroid/view/View;)Lb/f/b/h/d;
    .locals 0

    if-ne p1, p0, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lb/f/b/h/d;

    :goto_0
    return-object p1
.end method

.method public final f(Landroid/util/AttributeSet;II)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 1
    iput-object p0, v0, Lb/f/b/h/d;->b0:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 3
    iput-object v1, v0, Lb/f/b/h/e;->o0:Lb/f/b/h/l/b$b;

    iget-object v0, v0, Lb/f/b/h/e;->n0:Lb/f/b/h/l/e;

    .line 4
    iput-object v1, v0, Lb/f/b/h/l/e;->f:Lb/f/b/h/l/b$b;

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lb/f/c/i;->b:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    goto :goto_2

    :cond_0
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_1
    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    :cond_3
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_4

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    :cond_4
    const/16 v3, 0x27

    if-ne v2, v3, :cond_5

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 6
    :try_start_0
    new-instance v3, Lb/f/c/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0, v2}, Lb/f/c/c;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/f/c/c;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/f/c/c;

    goto :goto_2

    :cond_5
    const/16 v3, 0x12

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    :try_start_1
    new-instance v3, Lb/f/c/d;

    invoke-direct {v3}, Lb/f/c/d;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lb/f/c/d;->e(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, p2}, Lb/f/b/h/e;->Z(I)V

    return-void
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public g()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 1
    iget v0, v0, Lb/f/b/h/e;->x0:I

    return v0
.end method

.method public h(IIIIZZ)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    return-void
.end method

.method public i(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final j()Z
    .locals 29

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4c

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/f/b/h/d;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Lb/f/b/h/d;->B()V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v3, :cond_9

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v5, :cond_9

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v2, v10, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->i(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v7, :cond_4

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_5

    .line 2
    :cond_5
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-nez v11, :cond_6

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_6

    if-eq v11, v0, :cond_6

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-ne v9, v0, :cond_6

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_6
    if-ne v11, v0, :cond_7

    :goto_5
    iget-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    goto :goto_6

    :cond_7
    if-nez v11, :cond_8

    move-object v9, v6

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v9, v9, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lb/f/b/h/d;

    .line 3
    :goto_6
    iput-object v10, v9, Lb/f/b/h/d;->d0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 4
    :cond_9
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-eq v8, v7, :cond_b

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v5, :cond_b

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v10

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-ne v10, v11, :cond_a

    instance-of v10, v9, Lb/f/c/e;

    if-eqz v10, :cond_a

    check-cast v9, Lb/f/c/e;

    invoke-virtual {v9}, Lb/f/c/e;->getConstraintSet()Lb/f/c/d;

    move-result-object v9

    iput-object v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_b
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    if-eqz v8, :cond_c

    invoke-virtual {v8, v0, v4}, Lb/f/c/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    :cond_c
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 5
    iget-object v8, v8, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-lez v8, :cond_14

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v8, :cond_14

    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lb/f/c/b;

    .line 7
    invoke-virtual {v11}, Landroid/view/View;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v11, Lb/f/c/b;->f:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lb/f/c/b;->setIds(Ljava/lang/String;)V

    :cond_d
    iget-object v12, v11, Lb/f/c/b;->e:Lb/f/b/h/g;

    if-nez v12, :cond_e

    goto/16 :goto_b

    :cond_e
    check-cast v12, Lb/f/b/h/h;

    .line 8
    iput v2, v12, Lb/f/b/h/h;->m0:I

    iget-object v12, v12, Lb/f/b/h/h;->l0:[Lb/f/b/h/d;

    invoke-static {v12, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x0

    .line 9
    :goto_9
    iget v13, v11, Lb/f/c/b;->c:I

    if-ge v12, v13, :cond_13

    iget-object v13, v11, Lb/f/c/b;->b:[I

    aget v13, v13, v12

    invoke-virtual {v0, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_f

    iget-object v15, v11, Lb/f/c/b;->h:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v0, v13}, Lb/f/c/b;->e(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_f

    iget-object v14, v11, Lb/f/c/b;->b:[I

    aput v15, v14, v12

    iget-object v14, v11, Lb/f/c/b;->h:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v15}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(I)Landroid/view/View;

    move-result-object v14

    :cond_f
    if-eqz v14, :cond_12

    iget-object v6, v11, Lb/f/c/b;->e:Lb/f/b/h/g;

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/f/b/h/d;

    move-result-object v13

    check-cast v6, Lb/f/b/h/h;

    .line 10
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v13, v6, :cond_12

    if-nez v13, :cond_10

    goto :goto_a

    :cond_10
    iget v14, v6, Lb/f/b/h/h;->m0:I

    add-int/2addr v14, v4

    iget-object v15, v6, Lb/f/b/h/h;->l0:[Lb/f/b/h/d;

    array-length v2, v15

    if-le v14, v2, :cond_11

    array-length v2, v15

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lb/f/b/h/d;

    iput-object v2, v6, Lb/f/b/h/h;->l0:[Lb/f/b/h/d;

    :cond_11
    iget-object v2, v6, Lb/f/b/h/h;->l0:[Lb/f/b/h/d;

    iget v14, v6, Lb/f/b/h/h;->m0:I

    aput-object v13, v2, v14

    add-int/2addr v14, v4

    iput v14, v6, Lb/f/b/h/h;->m0:I

    :cond_12
    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto :goto_9

    .line 11
    :cond_13
    iget-object v2, v11, Lb/f/c/b;->e:Lb/f/b/h/g;

    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-interface {v2, v6}, Lb/f/b/h/g;->a(Lb/f/b/h/e;)V

    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_14
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v5, :cond_17

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Lb/f/c/g;

    if-eqz v8, :cond_16

    check-cast v6, Lb/f/c/g;

    .line 13
    iget v8, v6, Lb/f/c/g;->b:I

    if-ne v8, v7, :cond_15

    invoke-virtual {v6}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-nez v8, :cond_15

    iget v8, v6, Lb/f/c/g;->d:I

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    iget v8, v6, Lb/f/c/g;->b:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v6, Lb/f/c/g;->c:Landroid/view/View;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iput-boolean v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    iget-object v8, v6, Lb/f/c/g;->c:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_16
    const/4 v10, 0x0

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v10, 0x0

    .line 14
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v2, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v2, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v5, :cond_18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/f/b/h/d;

    move-result-object v8

    iget-object v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v10, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v5, :cond_4c

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/f/b/h/d;

    move-result-object v6

    if-nez v6, :cond_19

    move/from16 v18, v1

    move/from16 v17, v5

    goto/16 :goto_10

    :cond_19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 15
    iget-object v12, v11, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v12, v6, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v12, :cond_1a

    .line 17
    check-cast v12, Lb/f/b/h/k;

    .line 18
    iget-object v12, v12, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lb/f/b/h/d;->B()V

    .line 19
    :cond_1a
    iput-object v11, v6, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    .line 20
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Landroid/util/SparseArray;

    .line 21
    sget-object v12, Lb/f/b/h/d$a;->e:Lb/f/b/h/d$a;

    sget-object v13, Lb/f/b/h/d$a;->c:Lb/f/b/h/d$a;

    sget-object v14, Lb/f/b/h/d$a;->b:Lb/f/b/h/d$a;

    sget-object v15, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    sget-object v9, Lb/f/b/h/c$a;->e:Lb/f/b/h/c$a;

    sget-object v7, Lb/f/b/h/c$a;->c:Lb/f/b/h/c$a;

    sget-object v4, Lb/f/b/h/c$a;->f:Lb/f/b/h/c$a;

    move/from16 v17, v5

    sget-object v5, Lb/f/b/h/c$a;->d:Lb/f/b/h/c$a;

    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    move/from16 v18, v1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 22
    iput v1, v6, Lb/f/b/h/d;->c0:I

    .line 23
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v6, Lb/f/b/h/d;->z:Z

    const/16 v1, 0x8

    .line 25
    iput v1, v6, Lb/f/b/h/d;->c0:I

    .line 26
    :cond_1b
    iput-object v2, v6, Lb/f/b/h/d;->b0:Ljava/lang/Object;

    .line 27
    instance-of v1, v2, Lb/f/c/b;

    if-eqz v1, :cond_1c

    check-cast v2, Lb/f/c/b;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 28
    iget-boolean v1, v1, Lb/f/b/h/e;->p0:Z

    .line 29
    invoke-virtual {v2, v6, v1}, Lb/f/c/b;->g(Lb/f/b/h/d;Z)V

    :cond_1c
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    const/16 v2, 0x11

    if-eqz v1, :cond_21

    check-cast v6, Lb/f/b/h/f;

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i0:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j0:I

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k0:F

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v2, :cond_1d

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    iget v4, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    :cond_1d
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v7, v5, v2

    if-eqz v7, :cond_1e

    cmpl-float v1, v5, v2

    if-lez v1, :cond_20

    .line 30
    iput v5, v6, Lb/f/b/h/f;->l0:F

    const/4 v5, -0x1

    iput v5, v6, Lb/f/b/h/f;->m0:I

    iput v5, v6, Lb/f/b/h/f;->n0:I

    goto :goto_10

    :cond_1e
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1f

    if-le v1, v5, :cond_20

    .line 31
    iput v2, v6, Lb/f/b/h/f;->l0:F

    iput v1, v6, Lb/f/b/h/f;->m0:I

    iput v5, v6, Lb/f/b/h/f;->n0:I

    goto :goto_10

    :cond_1f
    if-eq v4, v5, :cond_20

    if-le v4, v5, :cond_20

    .line 32
    iput v2, v6, Lb/f/b/h/f;->l0:F

    iput v5, v6, Lb/f/b/h/f;->m0:I

    iput v4, v6, Lb/f/b/h/f;->n0:I

    :cond_20
    :goto_10
    move/from16 v22, v3

    move/from16 v19, v10

    const/4 v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto/16 :goto_24

    .line 33
    :cond_21
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b0:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c0:I

    move/from16 v20, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d0:I

    move/from16 v21, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e0:I

    move/from16 v22, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f0:I

    move/from16 v23, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g0:I

    move/from16 v24, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h0:F

    move/from16 v25, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v26, v2

    const/16 v2, 0x11

    if-ge v1, v2, :cond_28

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    move/from16 v19, v10

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    move-object/from16 v27, v13

    iget v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    move-object/from16 v28, v14

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    move/from16 v20, v14

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    move/from16 v21, v14

    iget v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    move/from16 v22, v14

    const/4 v14, -0x1

    if-ne v1, v14, :cond_23

    if-ne v2, v14, :cond_23

    move/from16 v16, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    if-eq v1, v14, :cond_22

    goto :goto_12

    :cond_22
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    if-eq v1, v14, :cond_24

    move v2, v1

    goto :goto_11

    :cond_23
    move/from16 v16, v1

    :cond_24
    :goto_11
    move/from16 v1, v16

    :goto_12
    if-ne v10, v14, :cond_26

    if-ne v13, v14, :cond_26

    move/from16 v23, v1

    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    if-eq v1, v14, :cond_25

    move v10, v1

    goto :goto_13

    :cond_25
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    if-eq v1, v14, :cond_27

    move v13, v1

    goto :goto_13

    :cond_26
    move/from16 v23, v1

    :cond_27
    :goto_13
    move v1, v10

    move v10, v1

    move/from16 v14, v21

    move/from16 v1, v23

    move-object/from16 v21, v15

    move v15, v2

    move/from16 v2, v20

    move-object/from16 v20, v12

    move/from16 v12, v22

    move/from16 v22, v3

    goto :goto_14

    :cond_28
    move/from16 v19, v10

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move/from16 v1, v20

    move/from16 v10, v21

    move/from16 v13, v22

    move/from16 v2, v23

    move/from16 v14, v24

    move/from16 v22, v3

    move-object/from16 v20, v12

    move-object/from16 v21, v15

    move/from16 v12, v25

    move/from16 v15, v26

    :goto_14
    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    move/from16 v23, v12

    const/4 v12, -0x1

    if-eq v3, v12, :cond_29

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_34

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 34
    sget-object v10, Lb/f/b/h/c$a;->h:Lb/f/b/h/c$a;

    .line 35
    invoke-virtual {v6, v10}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v11

    invoke-virtual {v1, v10}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual {v11, v1, v3, v10, v12}, Lb/f/b/h/c;->a(Lb/f/b/h/c;IIZ)Z

    .line 36
    iput v2, v6, Lb/f/b/h/d;->x:F

    goto/16 :goto_1a

    :cond_29
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2a

    .line 37
    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_2b

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 38
    invoke-virtual {v6, v7}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v15

    invoke-virtual {v1, v7}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    :goto_15
    const/4 v3, 0x1

    goto :goto_16

    :cond_2a
    if-eq v15, v3, :cond_2b

    .line 39
    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_2b

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 40
    invoke-virtual {v6, v7}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v15

    invoke-virtual {v1, v9}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    goto :goto_15

    :goto_16
    invoke-virtual {v15, v1, v12, v2, v3}, Lb/f/b/h/c;->a(Lb/f/b/h/c;IIZ)Z

    :cond_2b
    const/4 v1, -0x1

    if-eq v10, v1, :cond_2c

    .line 41
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/b/h/d;

    if-eqz v2, :cond_2d

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 42
    invoke-virtual {v6, v9}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v10

    invoke-virtual {v2, v7}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v2

    goto :goto_17

    :cond_2c
    if-eq v13, v1, :cond_2d

    .line 43
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_2d

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 44
    invoke-virtual {v6, v9}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v10

    invoke-virtual {v1, v9}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v2

    :goto_17
    const/4 v1, 0x1

    invoke-virtual {v10, v2, v3, v14, v1}, Lb/f/b/h/c;->a(Lb/f/b/h/c;IIZ)Z

    .line 45
    :cond_2d
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2e

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_2f

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 46
    invoke-virtual {v6, v5}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v12

    invoke-virtual {v1, v5}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    goto :goto_18

    .line 47
    :cond_2e
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    if-eq v1, v2, :cond_2f

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_2f

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 48
    invoke-virtual {v6, v5}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v12

    invoke-virtual {v1, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    :goto_18
    const/4 v2, 0x1

    invoke-virtual {v12, v1, v3, v10, v2}, Lb/f/b/h/c;->a(Lb/f/b/h/c;IIZ)Z

    .line 49
    :cond_2f
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_31

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 50
    invoke-virtual {v6, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v12

    invoke-virtual {v1, v5}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    goto :goto_19

    .line 51
    :cond_30
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    if-eq v1, v2, :cond_31

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    if-eqz v1, :cond_31

    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 52
    invoke-virtual {v6, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v12

    invoke-virtual {v1, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    :goto_19
    const/4 v2, 0x1

    invoke-virtual {v12, v1, v3, v10, v2}, Lb/f/b/h/c;->a(Lb/f/b/h/c;IIZ)Z

    .line 53
    :cond_31
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_32

    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/b/h/d;

    if-eqz v2, :cond_32

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v3, 0x1

    iput-boolean v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    iput-boolean v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    sget-object v10, Lb/f/b/h/c$a;->g:Lb/f/b/h/c$a;

    invoke-virtual {v6, v10}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v11

    invoke-virtual {v2, v10}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v2

    const/4 v10, -0x1

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v12, v10, v3}, Lb/f/b/h/c;->a(Lb/f/b/h/c;IIZ)Z

    .line 54
    iput-boolean v3, v6, Lb/f/b/h/d;->y:Z

    .line 55
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lb/f/b/h/d;

    .line 56
    iput-boolean v3, v1, Lb/f/b/h/d;->y:Z

    .line 57
    invoke-virtual {v6, v5}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/f/b/h/c;->h()V

    invoke-virtual {v6, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    invoke-virtual {v1}, Lb/f/b/h/c;->h()V

    :cond_32
    const/4 v1, 0x0

    cmpl-float v2, v23, v1

    if-ltz v2, :cond_33

    move/from16 v2, v23

    .line 58
    iput v2, v6, Lb/f/b/h/d;->Z:F

    .line 59
    :cond_33
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    cmpl-float v3, v2, v1

    if-ltz v3, :cond_34

    .line 60
    iput v2, v6, Lb/f/b/h/d;->a0:F

    :cond_34
    :goto_1a
    if-eqz v22, :cond_36

    .line 61
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_35

    iget v3, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    if-eq v3, v2, :cond_36

    :cond_35
    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 62
    iput v1, v6, Lb/f/b/h/d;->U:I

    iput v2, v6, Lb/f/b/h/d;->V:I

    .line 63
    :cond_36
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    const/4 v2, -0x2

    if-nez v1, :cond_39

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_38

    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    if-eqz v1, :cond_37

    .line 64
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    const/4 v3, 0x0

    aput-object v21, v1, v3

    goto :goto_1b

    :cond_37
    const/4 v3, 0x0

    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v20, v1, v3

    .line 65
    :goto_1b
    invoke-virtual {v6, v7}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v1, Lb/f/b/h/c;->g:I

    invoke-virtual {v6, v9}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v7, v1, Lb/f/b/h/c;->g:I

    goto :goto_1c

    :cond_38
    const/4 v3, 0x0

    .line 66
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v21, v1, v3

    .line 67
    invoke-virtual {v6, v3}, Lb/f/b/h/d;->M(I)V

    goto :goto_1c

    :cond_39
    const/4 v3, 0x0

    .line 68
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v28, v1, v3

    .line 69
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v6, v1}, Lb/f/b/h/d;->M(I)V

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v2, :cond_3a

    .line 70
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v27, v1, v3

    .line 71
    :cond_3a
    :goto_1c
    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v1, :cond_3d

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3c

    iget-boolean v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    if-eqz v1, :cond_3b

    .line 72
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    const/4 v7, 0x1

    aput-object v21, v1, v7

    goto :goto_1d

    :cond_3b
    const/4 v7, 0x1

    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v20, v1, v7

    .line 73
    :goto_1d
    invoke-virtual {v6, v5}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v1, Lb/f/b/h/c;->g:I

    invoke-virtual {v6, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v2, v1, Lb/f/b/h/c;->g:I

    goto :goto_1e

    :cond_3c
    const/4 v7, 0x1

    .line 74
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v21, v1, v7

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v6, v1}, Lb/f/b/h/d;->H(I)V

    goto :goto_1e

    :cond_3d
    const/4 v3, -0x1

    const/4 v7, 0x1

    .line 76
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v28, v1, v7

    .line 77
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v6, v1}, Lb/f/b/h/d;->H(I)V

    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v2, :cond_3e

    .line 78
    iget-object v1, v6, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v27, v1, v7

    .line 79
    :cond_3e
    :goto_1e
    iget-object v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_22

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_42

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_42

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v5, "W"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v10, 0x0

    goto :goto_1f

    :cond_40
    const-string v5, "H"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v10, 0x1

    goto :goto_1f

    :cond_41
    const/4 v10, -0x1

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    move v5, v10

    move v10, v4

    goto :goto_20

    :cond_42
    const/4 v5, -0x1

    const/4 v10, 0x0

    :goto_20
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_44

    add-int/lit8 v2, v2, -0x1

    if-ge v4, v2, :cond_44

    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_45

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_45

    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v7, v2, v4

    if-lez v7, :cond_45

    cmpl-float v7, v1, v4

    if-lez v7, :cond_45

    const/4 v4, 0x1

    if-ne v5, v4, :cond_43

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_21

    :cond_43
    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_21

    :cond_44
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_45

    :try_start_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_21

    :catch_1
    :cond_45
    const/4 v1, 0x0

    :goto_21
    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_47

    iput v1, v6, Lb/f/b/h/d;->S:F

    iput v5, v6, Lb/f/b/h/d;->T:I

    goto :goto_23

    :cond_46
    :goto_22
    const/4 v2, 0x0

    iput v2, v6, Lb/f/b/h/d;->S:F

    .line 81
    :cond_47
    :goto_23
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    .line 82
    iget-object v2, v6, Lb/f/b/h/d;->g0:[F

    const/4 v10, 0x0

    aput v1, v2, v10

    .line 83
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    const/4 v4, 0x1

    .line 84
    aput v1, v2, v4

    .line 85
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    .line 86
    iput v1, v6, Lb/f/b/h/d;->e0:I

    .line 87
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 88
    iput v1, v6, Lb/f/b/h/d;->f0:I

    .line 89
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iget v2, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v5, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v7, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    .line 90
    iput v1, v6, Lb/f/b/h/d;->l:I

    iput v2, v6, Lb/f/b/h/d;->o:I

    const v2, 0x7fffffff

    if-ne v5, v2, :cond_48

    const/4 v5, 0x0

    :cond_48
    iput v5, v6, Lb/f/b/h/d;->p:I

    iput v7, v6, Lb/f/b/h/d;->q:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    cmpl-float v11, v7, v9

    if-lez v11, :cond_49

    cmpg-float v7, v7, v5

    if-gez v7, :cond_49

    if-nez v1, :cond_49

    const/4 v1, 0x2

    iput v1, v6, Lb/f/b/h/d;->l:I

    .line 91
    :cond_49
    iget v1, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v7, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 92
    iput v1, v6, Lb/f/b/h/d;->m:I

    iput v7, v6, Lb/f/b/h/d;->r:I

    if-ne v9, v2, :cond_4a

    const/4 v9, 0x0

    :cond_4a
    iput v9, v6, Lb/f/b/h/d;->s:I

    iput v8, v6, Lb/f/b/h/d;->t:F

    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-lez v2, :cond_4b

    cmpg-float v2, v8, v5

    if-gez v2, :cond_4b

    if-nez v1, :cond_4b

    const/4 v1, 0x2

    iput v1, v6, Lb/f/b/h/d;->m:I

    goto :goto_24

    :cond_4b
    const/4 v1, 0x2

    :goto_24
    add-int/lit8 v2, v19, 0x1

    move v10, v2

    move/from16 v5, v17

    move/from16 v1, v18

    move/from16 v3, v22

    const/4 v7, -0x1

    const/4 v9, 0x2

    goto/16 :goto_f

    :cond_4c
    move/from16 v18, v1

    return v18
.end method

.method public onLayout(ZIIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lb/f/b/h/d;

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lb/f/b/h/d;->s()I

    move-result v0

    invoke-virtual {v1}, Lb/f/b/h/d;->t()I

    move-result v2

    invoke-virtual {v1}, Lb/f/b/h/d;->r()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1}, Lb/f/b/h/d;->l()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    instance-of v4, p5, Lb/f/c/g;

    if-eqz v4, :cond_2

    check-cast p5, Lb/f/c/g;

    invoke-virtual {p5}, Lb/f/c/g;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/f/c/b;

    invoke-virtual {p2}, Lb/f/c/b;->h()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 30

    move-object/from16 v7, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isLayoutRequested()Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v0, :cond_3

    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    if-ne v0, v1, :cond_2

    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    if-ne v8, v2, :cond_2

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 1
    iget-boolean v5, v0, Lb/f/b/h/e;->y0:Z

    .line 2
    :goto_2
    iget-boolean v6, v0, Lb/f/b/h/e;->z0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3
    :goto_3
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->h(IIIIZZ)V

    return-void

    :cond_2
    if-ne v0, v1, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v5, :cond_3

    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v8}, Lb/f/b/h/d;->l()I

    move-result v8

    if-lt v0, v8, :cond_3

    iput v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 4
    iget-boolean v5, v0, Lb/f/b/h/e;->y0:Z

    goto :goto_2

    .line 5
    :cond_3
    iput v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    iput v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:I

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Z

    move-result v8

    .line 6
    iput-boolean v8, v0, Lb/f/b/h/e;->p0:Z

    .line 7
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    if-eqz v0, :cond_4

    iput-boolean v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 8
    iget-object v8, v0, Lb/f/b/h/e;->m0:Lb/f/b/h/l/b;

    invoke-virtual {v8, v0}, Lb/f/b/h/l/b;->c(Lb/f/b/h/e;)V

    .line 9
    :cond_4
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    iget v8, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 10
    sget-object v9, Lb/f/b/h/d$a;->b:Lb/f/b/h/d$a;

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v3, v14, v15

    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v6

    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 11
    iput v14, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    iput v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    iput v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iput v1, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    iput v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 12
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x11

    if-lt v5, v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    if-gtz v5, :cond_5

    if-lez v15, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Z

    move-result v19

    if-eqz v19, :cond_7

    move v5, v15

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_7
    :goto_4
    sub-int/2addr v11, v6

    sub-int/2addr v13, v3

    .line 13
    sget-object v3, Lb/f/b/h/d$a;->c:Lb/f/b/h/d$a;

    iget-object v6, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->r:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v15, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    iget v6, v6, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    const/high16 v4, -0x80000000

    if-eq v10, v4, :cond_b

    if-eqz v10, :cond_9

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v10, v4, :cond_8

    move-object v4, v9

    goto :goto_5

    :cond_8
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v4, v6

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v4

    move-object v4, v9

    goto :goto_8

    :cond_9
    if-nez v19, :cond_a

    goto :goto_6

    :cond_a
    move-object v4, v3

    :goto_5
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    if-nez v19, :cond_c

    :goto_6
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_7

    :cond_c
    move v4, v11

    :goto_7
    move v1, v4

    move-object v4, v3

    :goto_8
    const/high16 v2, -0x80000000

    if-eq v12, v2, :cond_10

    if-eqz v12, :cond_e

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_d

    move-object v2, v9

    goto :goto_9

    :cond_d
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v2, v15

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v19, v3

    move-object/from16 v18, v9

    move v9, v2

    move-object/from16 v2, v18

    goto :goto_c

    :cond_e
    if-nez v19, :cond_f

    goto :goto_a

    :cond_f
    move-object v2, v3

    :goto_9
    move-object/from16 v19, v3

    move-object/from16 v18, v9

    const/4 v9, 0x0

    goto :goto_c

    :cond_10
    if-nez v19, :cond_11

    :goto_a
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    move-object/from16 v18, v9

    const/4 v9, 0x0

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_b

    :cond_11
    move-object/from16 v18, v9

    move v2, v13

    :goto_b
    move v9, v2

    move-object v2, v3

    move-object/from16 v19, v2

    :goto_c
    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v3

    if-ne v1, v3, :cond_13

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v3

    if-eq v9, v3, :cond_12

    goto :goto_d

    :cond_12
    move/from16 v21, v13

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto :goto_e

    .line 14
    :cond_13
    :goto_d
    iget-object v3, v0, Lb/f/b/h/e;->n0:Lb/f/b/h/l/e;

    move/from16 v21, v13

    const/4 v13, 0x1

    .line 15
    iput-boolean v13, v3, Lb/f/b/h/l/e;->c:Z

    const/4 v3, 0x0

    .line 16
    :goto_e
    iput v3, v0, Lb/f/b/h/d;->U:I

    .line 17
    iput v3, v0, Lb/f/b/h/d;->V:I

    .line 18
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    sub-int/2addr v13, v6

    move/from16 v22, v11

    .line 19
    iget-object v11, v0, Lb/f/b/h/d;->w:[I

    aput v13, v11, v3

    .line 20
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v13, v15

    const/16 v16, 0x1

    .line 21
    aput v13, v11, v16

    .line 22
    invoke-virtual {v0, v3}, Lb/f/b/h/d;->K(I)V

    invoke-virtual {v0, v3}, Lb/f/b/h/d;->J(I)V

    .line 23
    iget-object v11, v0, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v4, v11, v3

    .line 24
    invoke-virtual {v0, v1}, Lb/f/b/h/d;->M(I)V

    .line 25
    iget-object v1, v0, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    aput-object v2, v1, v16

    .line 26
    invoke-virtual {v0, v9}, Lb/f/b/h/d;->H(I)V

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lb/f/b/h/d;->K(I)V

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Lb/f/b/h/d;->J(I)V

    .line 27
    iput v5, v0, Lb/f/b/h/e;->r0:I

    iput v14, v0, Lb/f/b/h/e;->s0:I

    iget-object v1, v0, Lb/f/b/h/e;->m0:Lb/f/b/h/l/b;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    sget-object v2, Lb/f/b/h/c$a;->f:Lb/f/b/h/c$a;

    sget-object v3, Lb/f/b/h/c$a;->e:Lb/f/b/h/c$a;

    sget-object v4, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    iget-object v5, v0, Lb/f/b/h/e;->o0:Lb/f/b/h/l/b$b;

    .line 30
    iget-object v6, v0, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v9

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v11

    const/16 v13, 0x80

    invoke-static {v8, v13}, Lb/f/b/h/i;->b(II)Z

    move-result v13

    const/16 v14, 0x40

    if-nez v13, :cond_15

    invoke-static {v8, v14}, Lb/f/b/h/i;->b(II)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_f

    :cond_14
    const/4 v8, 0x0

    goto :goto_10

    :cond_15
    :goto_f
    const/4 v8, 0x1

    :goto_10
    if-eqz v8, :cond_1e

    const/4 v14, 0x0

    :goto_11
    if-ge v14, v6, :cond_1e

    iget-object v15, v0, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lb/f/b/h/d;

    move/from16 v24, v8

    invoke-virtual {v15}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v8

    if-ne v8, v4, :cond_16

    const/4 v8, 0x1

    goto :goto_12

    :cond_16
    const/4 v8, 0x0

    :goto_12
    invoke-virtual {v15}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v7

    if-ne v7, v4, :cond_17

    const/4 v7, 0x1

    goto :goto_13

    :cond_17
    const/4 v7, 0x0

    :goto_13
    if-eqz v8, :cond_18

    if-eqz v7, :cond_18

    .line 31
    iget v7, v15, Lb/f/b/h/d;->S:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    const/4 v7, 0x1

    goto :goto_14

    :cond_18
    const/4 v7, 0x0

    .line 32
    :goto_14
    invoke-virtual {v15}, Lb/f/b/h/d;->w()Z

    move-result v8

    if-eqz v8, :cond_19

    if-eqz v7, :cond_19

    goto :goto_15

    :cond_19
    invoke-virtual {v15}, Lb/f/b/h/d;->x()Z

    move-result v8

    if-eqz v8, :cond_1a

    if-eqz v7, :cond_1a

    goto :goto_15

    :cond_1a
    instance-of v7, v15, Lb/f/b/h/j;

    if-eqz v7, :cond_1b

    goto :goto_15

    :cond_1b
    invoke-virtual {v15}, Lb/f/b/h/d;->w()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-virtual {v15}, Lb/f/b/h/d;->x()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_15

    :cond_1c
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p0

    move/from16 v8, v24

    goto :goto_11

    :cond_1d
    :goto_15
    const/high16 v7, 0x40000000    # 2.0f

    const/16 v24, 0x0

    goto :goto_16

    :cond_1e
    move/from16 v24, v8

    const/high16 v7, 0x40000000    # 2.0f

    :goto_16
    if-ne v10, v7, :cond_1f

    if-eq v12, v7, :cond_20

    :cond_1f
    if-eqz v13, :cond_21

    :cond_20
    const/4 v7, 0x1

    goto :goto_17

    :cond_21
    const/4 v7, 0x0

    :goto_17
    and-int v7, v24, v7

    if-eqz v7, :cond_40

    .line 33
    iget-object v14, v0, Lb/f/b/h/d;->w:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move/from16 v15, v22

    .line 34
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 35
    iget-object v15, v0, Lb/f/b/h/d;->w:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    move/from16 v8, v21

    .line 36
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v10, v15, :cond_22

    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v15

    if-eq v15, v14, :cond_22

    invoke-virtual {v0, v14}, Lb/f/b/h/d;->M(I)V

    invoke-virtual {v0}, Lb/f/b/h/e;->W()V

    :cond_22
    const/high16 v14, 0x40000000    # 2.0f

    if-ne v12, v14, :cond_23

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v15

    if-eq v15, v8, :cond_23

    invoke-virtual {v0, v8}, Lb/f/b/h/d;->H(I)V

    invoke-virtual {v0}, Lb/f/b/h/e;->W()V

    :cond_23
    if-ne v10, v14, :cond_39

    if-ne v12, v14, :cond_39

    .line 37
    iget-object v8, v0, Lb/f/b/h/e;->n0:Lb/f/b/h/l/e;

    .line 38
    sget-object v14, Lb/f/b/h/d$a;->e:Lb/f/b/h/d$a;

    const/4 v15, 0x1

    and-int/2addr v13, v15

    iget-boolean v15, v8, Lb/f/b/h/l/e;->b:Z

    if-nez v15, :cond_25

    iget-boolean v15, v8, Lb/f/b/h/l/e;->c:Z

    if-eqz v15, :cond_24

    goto :goto_18

    :cond_24
    move/from16 v21, v7

    const/4 v15, 0x0

    goto :goto_1a

    :cond_25
    :goto_18
    iget-object v15, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v15, v15, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_19
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_26

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v24, v15

    move-object/from16 v15, v21

    check-cast v15, Lb/f/b/h/d;

    invoke-virtual {v15}, Lb/f/b/h/d;->h()V

    move/from16 v21, v7

    const/4 v7, 0x0

    iput-boolean v7, v15, Lb/f/b/h/d;->a:Z

    iget-object v7, v15, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    invoke-virtual {v7}, Lb/f/b/h/l/k;->n()V

    iget-object v7, v15, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    invoke-virtual {v7}, Lb/f/b/h/l/m;->m()V

    move/from16 v7, v21

    move-object/from16 v15, v24

    goto :goto_19

    :cond_26
    move/from16 v21, v7

    iget-object v7, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    invoke-virtual {v7}, Lb/f/b/h/d;->h()V

    iget-object v7, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    const/4 v15, 0x0

    iput-boolean v15, v7, Lb/f/b/h/d;->a:Z

    iget-object v7, v7, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    invoke-virtual {v7}, Lb/f/b/h/l/k;->n()V

    iget-object v7, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v7, v7, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    invoke-virtual {v7}, Lb/f/b/h/l/m;->m()V

    iput-boolean v15, v8, Lb/f/b/h/l/e;->c:Z

    :goto_1a
    iget-object v7, v8, Lb/f/b/h/l/e;->d:Lb/f/b/h/e;

    invoke-virtual {v8, v7}, Lb/f/b/h/l/e;->b(Lb/f/b/h/e;)Z

    iget-object v7, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    .line 39
    iput v15, v7, Lb/f/b/h/d;->U:I

    .line 40
    iput v15, v7, Lb/f/b/h/d;->V:I

    .line 41
    invoke-virtual {v7, v15}, Lb/f/b/h/d;->k(I)Lb/f/b/h/d$a;

    move-result-object v7

    iget-object v15, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    move-object/from16 v24, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lb/f/b/h/d;->k(I)Lb/f/b/h/d$a;

    move-result-object v15

    iget-boolean v2, v8, Lb/f/b/h/l/e;->b:Z

    if-eqz v2, :cond_27

    invoke-virtual {v8}, Lb/f/b/h/l/e;->c()V

    :cond_27
    iget-object v2, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    invoke-virtual {v2}, Lb/f/b/h/d;->s()I

    move-result v2

    move-object/from16 v25, v3

    iget-object v3, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    invoke-virtual {v3}, Lb/f/b/h/d;->t()I

    move-result v3

    move-object/from16 v26, v5

    iget-object v5, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v5, v5, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v5, v5, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v5, v2}, Lb/f/b/h/l/f;->c(I)V

    iget-object v5, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v5, v5, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v5, v5, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v5, v3}, Lb/f/b/h/l/f;->c(I)V

    invoke-virtual {v8}, Lb/f/b/h/l/e;->g()V

    move-object/from16 v5, v19

    if-eq v7, v5, :cond_29

    if-ne v15, v5, :cond_28

    goto :goto_1b

    :cond_28
    move/from16 v27, v9

    move/from16 v28, v11

    goto :goto_1d

    :cond_29
    :goto_1b
    move/from16 v19, v13

    if-eqz v13, :cond_2b

    iget-object v13, v8, Lb/f/b/h/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lb/f/b/h/l/o;

    invoke-virtual/range {v27 .. v27}, Lb/f/b/h/l/o;->k()Z

    move-result v27

    if-nez v27, :cond_2a

    const/16 v19, 0x0

    :cond_2b
    if-eqz v19, :cond_2c

    if-ne v7, v5, :cond_2c

    iget-object v13, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    move/from16 v27, v9

    .line 42
    iget-object v9, v13, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    move/from16 v28, v11

    const/4 v11, 0x0

    aput-object v18, v9, v11

    .line 43
    invoke-virtual {v8, v13, v11}, Lb/f/b/h/l/e;->d(Lb/f/b/h/e;I)I

    move-result v9

    invoke-virtual {v13, v9}, Lb/f/b/h/d;->M(I)V

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v11, v9, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v11, v11, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v9}, Lb/f/b/h/d;->r()I

    move-result v9

    invoke-virtual {v11, v9}, Lb/f/b/h/l/g;->c(I)V

    goto :goto_1c

    :cond_2c
    move/from16 v27, v9

    move/from16 v28, v11

    :goto_1c
    if-eqz v19, :cond_2d

    if-ne v15, v5, :cond_2d

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    .line 44
    iget-object v11, v9, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    const/4 v13, 0x1

    aput-object v18, v11, v13

    .line 45
    invoke-virtual {v8, v9, v13}, Lb/f/b/h/l/e;->d(Lb/f/b/h/e;I)I

    move-result v11

    invoke-virtual {v9, v11}, Lb/f/b/h/d;->H(I)V

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v11, v9, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v11, v11, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v9}, Lb/f/b/h/d;->l()I

    move-result v9

    invoke-virtual {v11, v9}, Lb/f/b/h/l/g;->c(I)V

    :cond_2d
    :goto_1d
    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v11, v9, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    move-object/from16 v19, v5

    const/4 v13, 0x0

    aget-object v5, v11, v13

    move-object/from16 v29, v1

    move-object/from16 v1, v18

    if-eq v5, v1, :cond_2f

    aget-object v5, v11, v13

    if-ne v5, v14, :cond_2e

    goto :goto_1e

    :cond_2e
    const/4 v1, 0x0

    goto :goto_1f

    :cond_2f
    :goto_1e
    invoke-virtual {v9}, Lb/f/b/h/d;->r()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v9, v9, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v9, v9, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-virtual {v9, v5}, Lb/f/b/h/l/f;->c(I)V

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v9, v9, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v9, v9, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sub-int/2addr v5, v2

    invoke-virtual {v9, v5}, Lb/f/b/h/l/g;->c(I)V

    invoke-virtual {v8}, Lb/f/b/h/l/e;->g()V

    iget-object v2, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v5, v2, Lb/f/b/h/d;->O:[Lb/f/b/h/d$a;

    const/4 v9, 0x1

    aget-object v11, v5, v9

    if-eq v11, v1, :cond_30

    aget-object v1, v5, v9

    if-ne v1, v14, :cond_31

    :cond_30
    invoke-virtual {v2}, Lb/f/b/h/d;->l()I

    move-result v1

    add-int/2addr v1, v3

    iget-object v2, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v2, v2, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v2, v2, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-virtual {v2, v1}, Lb/f/b/h/l/f;->c(I)V

    iget-object v2, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v2, v2, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v2, v2, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lb/f/b/h/l/g;->c(I)V

    :cond_31
    invoke-virtual {v8}, Lb/f/b/h/l/e;->g()V

    const/4 v1, 0x1

    :goto_1f
    iget-object v2, v8, Lb/f/b/h/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/b/h/l/o;

    iget-object v5, v3, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    if-ne v5, v9, :cond_32

    iget-boolean v5, v3, Lb/f/b/h/l/o;->g:Z

    if-nez v5, :cond_32

    goto :goto_20

    :cond_32
    invoke-virtual {v3}, Lb/f/b/h/l/o;->e()V

    goto :goto_20

    :cond_33
    iget-object v2, v8, Lb/f/b/h/l/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/b/h/l/o;

    if-nez v1, :cond_35

    iget-object v5, v3, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v9, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    if-ne v5, v9, :cond_35

    goto :goto_21

    :cond_35
    iget-object v5, v3, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v5, v5, Lb/f/b/h/l/f;->j:Z

    if-nez v5, :cond_36

    goto :goto_22

    :cond_36
    iget-object v5, v3, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-boolean v5, v5, Lb/f/b/h/l/f;->j:Z

    if-nez v5, :cond_37

    instance-of v5, v3, Lb/f/b/h/l/i;

    if-nez v5, :cond_37

    goto :goto_22

    :cond_37
    iget-object v5, v3, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v5, v5, Lb/f/b/h/l/f;->j:Z

    if-nez v5, :cond_34

    instance-of v5, v3, Lb/f/b/h/l/c;

    if-nez v5, :cond_34

    instance-of v3, v3, Lb/f/b/h/l/i;

    if-nez v3, :cond_34

    :goto_22
    const/4 v1, 0x0

    goto :goto_23

    :cond_38
    const/4 v1, 0x1

    :goto_23
    iget-object v2, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    invoke-virtual {v2, v7}, Lb/f/b/h/d;->I(Lb/f/b/h/d$a;)V

    iget-object v2, v8, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    invoke-virtual {v2, v15}, Lb/f/b/h/d;->L(Lb/f/b/h/d$a;)V

    move v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v5, 0x2

    goto/16 :goto_27

    :cond_39
    move-object/from16 v29, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move/from16 v21, v7

    move/from16 v27, v9

    move/from16 v28, v11

    .line 46
    iget-object v1, v0, Lb/f/b/h/e;->n0:Lb/f/b/h/l/e;

    .line 47
    iget-boolean v2, v1, Lb/f/b/h/l/e;->b:Z

    if-eqz v2, :cond_3b

    iget-object v2, v1, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v2, v2, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/b/h/d;

    invoke-virtual {v3}, Lb/f/b/h/d;->h()V

    const/4 v5, 0x0

    iput-boolean v5, v3, Lb/f/b/h/d;->a:Z

    iget-object v7, v3, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v8, v7, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v5, v8, Lb/f/b/h/l/f;->j:Z

    iput-boolean v5, v7, Lb/f/b/h/l/o;->g:Z

    invoke-virtual {v7}, Lb/f/b/h/l/k;->n()V

    iget-object v3, v3, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v7, v3, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v5, v7, Lb/f/b/h/l/f;->j:Z

    iput-boolean v5, v3, Lb/f/b/h/l/o;->g:Z

    invoke-virtual {v3}, Lb/f/b/h/l/m;->m()V

    goto :goto_24

    :cond_3a
    const/4 v5, 0x0

    iget-object v2, v1, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    invoke-virtual {v2}, Lb/f/b/h/d;->h()V

    iget-object v2, v1, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iput-boolean v5, v2, Lb/f/b/h/d;->a:Z

    iget-object v2, v2, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v3, v2, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v5, v3, Lb/f/b/h/l/f;->j:Z

    iput-boolean v5, v2, Lb/f/b/h/l/o;->g:Z

    invoke-virtual {v2}, Lb/f/b/h/l/k;->n()V

    iget-object v2, v1, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v2, v2, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v3, v2, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v5, v3, Lb/f/b/h/l/f;->j:Z

    iput-boolean v5, v2, Lb/f/b/h/l/o;->g:Z

    invoke-virtual {v2}, Lb/f/b/h/l/m;->m()V

    invoke-virtual {v1}, Lb/f/b/h/l/e;->c()V

    goto :goto_25

    :cond_3b
    const/4 v5, 0x0

    :goto_25
    iget-object v2, v1, Lb/f/b/h/l/e;->d:Lb/f/b/h/e;

    invoke-virtual {v1, v2}, Lb/f/b/h/l/e;->b(Lb/f/b/h/e;)Z

    iget-object v2, v1, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    .line 48
    iput v5, v2, Lb/f/b/h/d;->U:I

    .line 49
    iput v5, v2, Lb/f/b/h/d;->V:I

    .line 50
    iget-object v2, v2, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v2, v2, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v2, v5}, Lb/f/b/h/l/f;->c(I)V

    iget-object v1, v1, Lb/f/b/h/l/e;->a:Lb/f/b/h/e;

    iget-object v1, v1, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v1, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v1, v5}, Lb/f/b/h/l/f;->c(I)V

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v10, v1, :cond_3c

    .line 51
    invoke-virtual {v0, v13, v5}, Lb/f/b/h/e;->V(ZI)Z

    move-result v2

    const/4 v3, 0x1

    and-int/lit8 v16, v2, 0x1

    move/from16 v2, v16

    const/4 v5, 0x1

    goto :goto_26

    :cond_3c
    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_26
    if-ne v12, v1, :cond_3d

    invoke-virtual {v0, v13, v3}, Lb/f/b/h/e;->V(ZI)Z

    move-result v7

    and-int/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    :cond_3d
    :goto_27
    if-eqz v2, :cond_41

    if-ne v10, v1, :cond_3e

    const/4 v3, 0x1

    goto :goto_28

    :cond_3e
    const/4 v3, 0x0

    :goto_28
    if-ne v12, v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_29

    :cond_3f
    const/4 v1, 0x0

    :goto_29
    invoke-virtual {v0, v3, v1}, Lb/f/b/h/e;->N(ZZ)V

    goto :goto_2a

    :cond_40
    move-object/from16 v29, v1

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v5

    move/from16 v21, v7

    move/from16 v27, v9

    move/from16 v28, v11

    const/4 v2, 0x0

    const/4 v5, 0x0

    :cond_41
    :goto_2a
    if-eqz v2, :cond_42

    const/4 v1, 0x2

    if-eq v5, v1, :cond_6f

    .line 52
    :cond_42
    iget v1, v0, Lb/f/b/h/e;->x0:I

    if-lez v6, :cond_51

    .line 53
    iget-object v2, v0, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Lb/f/b/h/e;->Y(I)Z

    move-result v3

    .line 54
    iget-object v5, v0, Lb/f/b/h/e;->o0:Lb/f/b/h/l/b$b;

    const/4 v7, 0x0

    :goto_2b
    if-ge v7, v2, :cond_4e

    .line 55
    iget-object v8, v0, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb/f/b/h/d;

    instance-of v9, v8, Lb/f/b/h/f;

    if-eqz v9, :cond_43

    goto :goto_2c

    :cond_43
    instance-of v9, v8, Lb/f/b/h/a;

    if-eqz v9, :cond_44

    goto :goto_2c

    .line 56
    :cond_44
    iget-boolean v9, v8, Lb/f/b/h/d;->A:Z

    if-eqz v9, :cond_45

    goto :goto_2c

    :cond_45
    if-eqz v3, :cond_46

    .line 57
    iget-object v9, v8, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    if-eqz v9, :cond_46

    iget-object v10, v8, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    if-eqz v10, :cond_46

    iget-object v9, v9, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v9, v9, Lb/f/b/h/l/f;->j:Z

    if-eqz v9, :cond_46

    iget-object v9, v10, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v9, v9, Lb/f/b/h/l/f;->j:Z

    if-eqz v9, :cond_46

    :goto_2c
    move-object/from16 v9, v29

    const/4 v10, 0x0

    goto :goto_2f

    :cond_46
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lb/f/b/h/d;->k(I)Lb/f/b/h/d$a;

    move-result-object v10

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lb/f/b/h/d;->k(I)Lb/f/b/h/d$a;

    move-result-object v11

    if-ne v10, v4, :cond_47

    iget v12, v8, Lb/f/b/h/d;->l:I

    if-eq v12, v9, :cond_47

    if-ne v11, v4, :cond_47

    iget v12, v8, Lb/f/b/h/d;->m:I

    if-eq v12, v9, :cond_47

    const/4 v12, 0x1

    goto :goto_2d

    :cond_47
    const/4 v12, 0x0

    :goto_2d
    if-nez v12, :cond_4b

    invoke-virtual {v0, v9}, Lb/f/b/h/e;->Y(I)Z

    move-result v13

    if-eqz v13, :cond_4b

    instance-of v9, v8, Lb/f/b/h/j;

    if-nez v9, :cond_4b

    if-ne v10, v4, :cond_48

    iget v9, v8, Lb/f/b/h/d;->l:I

    if-nez v9, :cond_48

    if-eq v11, v4, :cond_48

    invoke-virtual {v8}, Lb/f/b/h/d;->w()Z

    move-result v9

    if-nez v9, :cond_48

    const/4 v12, 0x1

    :cond_48
    if-ne v11, v4, :cond_49

    iget v9, v8, Lb/f/b/h/d;->m:I

    if-nez v9, :cond_49

    if-eq v10, v4, :cond_49

    invoke-virtual {v8}, Lb/f/b/h/d;->w()Z

    move-result v9

    if-nez v9, :cond_49

    const/4 v12, 0x1

    :cond_49
    if-eq v10, v4, :cond_4a

    if-ne v11, v4, :cond_4b

    :cond_4a
    iget v9, v8, Lb/f/b/h/d;->S:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4c

    const/4 v12, 0x1

    goto :goto_2e

    :cond_4b
    const/4 v10, 0x0

    :cond_4c
    :goto_2e
    move-object/from16 v9, v29

    if-eqz v12, :cond_4d

    goto :goto_2f

    :cond_4d
    const/4 v11, 0x0

    invoke-virtual {v9, v5, v8, v11}, Lb/f/b/h/l/b;->a(Lb/f/b/h/l/b$b;Lb/f/b/h/d;I)Z

    :goto_2f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v29, v9

    goto/16 :goto_2b

    :cond_4e
    move-object/from16 v9, v29

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 58
    iget-object v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v2, :cond_50

    iget-object v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Lb/f/c/g;

    if-eqz v7, :cond_4f

    check-cast v4, Lb/f/c/g;

    invoke-virtual {v4}, Lb/f/c/g;->a()V

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_50
    iget-object v2, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 59
    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_52

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_52

    iget-object v4, v5, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/f/c/b;

    invoke-virtual {v4}, Lb/f/c/b;->i()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_51
    move-object/from16 v9, v29

    .line 63
    :cond_52
    invoke-virtual {v9, v0}, Lb/f/b/h/l/b;->c(Lb/f/b/h/e;)V

    iget-object v2, v9, Lb/f/b/h/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, v27

    move/from16 v4, v28

    if-lez v6, :cond_53

    invoke-virtual {v9, v0, v3, v4}, Lb/f/b/h/l/b;->b(Lb/f/b/h/e;II)V

    :cond_53
    if-lez v2, :cond_6e

    invoke-virtual {v0}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v5

    move-object/from16 v6, v19

    if-ne v5, v6, :cond_54

    const/4 v5, 0x1

    goto :goto_32

    :cond_54
    const/4 v5, 0x0

    :goto_32
    invoke-virtual {v0}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v7

    if-ne v7, v6, :cond_55

    const/4 v6, 0x1

    goto :goto_33

    :cond_55
    const/4 v6, 0x0

    :goto_33
    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v7

    iget-object v8, v9, Lb/f/b/h/l/b;->c:Lb/f/b/h/e;

    .line 64
    iget v8, v8, Lb/f/b/h/d;->X:I

    .line 65
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v8

    iget-object v10, v9, Lb/f/b/h/l/b;->c:Lb/f/b/h/e;

    .line 66
    iget v10, v10, Lb/f/b/h/d;->Y:I

    .line 67
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v10, v7

    move v11, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_34
    if-ge v7, v2, :cond_5b

    iget-object v12, v9, Lb/f/b/h/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lb/f/b/h/d;

    instance-of v13, v12, Lb/f/b/h/j;

    if-nez v13, :cond_56

    move/from16 v17, v1

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    move-object/from16 v15, v26

    const/4 v1, 0x0

    goto/16 :goto_39

    :cond_56
    invoke-virtual {v12}, Lb/f/b/h/d;->r()I

    move-result v13

    invoke-virtual {v12}, Lb/f/b/h/d;->l()I

    move-result v14

    move/from16 v17, v1

    move-object/from16 v15, v26

    const/4 v1, 0x1

    invoke-virtual {v9, v15, v12, v1}, Lb/f/b/h/l/b;->a(Lb/f/b/h/l/b$b;Lb/f/b/h/d;I)Z

    move-result v18

    or-int v1, v8, v18

    invoke-virtual {v12}, Lb/f/b/h/d;->r()I

    move-result v8

    move/from16 v18, v1

    invoke-virtual {v12}, Lb/f/b/h/d;->l()I

    move-result v1

    if-eq v8, v13, :cond_58

    invoke-virtual {v12, v8}, Lb/f/b/h/d;->M(I)V

    if-eqz v5, :cond_57

    invoke-virtual {v12}, Lb/f/b/h/d;->p()I

    move-result v8

    if-le v8, v10, :cond_57

    invoke-virtual {v12}, Lb/f/b/h/d;->p()I

    move-result v8

    move-object/from16 v13, v25

    invoke-virtual {v12, v13}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lb/f/b/h/c;->d()I

    move-result v18

    add-int v8, v18, v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_35

    :cond_57
    move-object/from16 v13, v25

    :goto_35
    const/16 v18, 0x1

    goto :goto_36

    :cond_58
    move-object/from16 v13, v25

    :goto_36
    if-eq v1, v14, :cond_5a

    invoke-virtual {v12, v1}, Lb/f/b/h/d;->H(I)V

    if-eqz v6, :cond_59

    invoke-virtual {v12}, Lb/f/b/h/d;->j()I

    move-result v1

    if-le v1, v11, :cond_59

    invoke-virtual {v12}, Lb/f/b/h/d;->j()I

    move-result v1

    move-object/from16 v14, v24

    invoke-virtual {v12, v14}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v8

    invoke-virtual {v8}, Lb/f/b/h/c;->d()I

    move-result v8

    add-int/2addr v8, v1

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v1

    goto :goto_37

    :cond_59
    move-object/from16 v14, v24

    :goto_37
    const/16 v18, 0x1

    goto :goto_38

    :cond_5a
    move-object/from16 v14, v24

    :goto_38
    check-cast v12, Lb/f/b/h/j;

    const/4 v1, 0x0

    or-int/lit8 v8, v18, 0x0

    :goto_39
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v25, v13

    move-object/from16 v24, v14

    move-object/from16 v26, v15

    move/from16 v1, v17

    goto/16 :goto_34

    :cond_5b
    move/from16 v17, v1

    move-object/from16 v14, v24

    move-object/from16 v13, v25

    move-object/from16 v15, v26

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_3a
    const/4 v12, 0x2

    if-ge v7, v12, :cond_6a

    move/from16 v18, v8

    const/4 v8, 0x0

    :goto_3b
    if-ge v8, v2, :cond_68

    iget-object v1, v9, Lb/f/b/h/l/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/d;

    instance-of v12, v1, Lb/f/b/h/g;

    if-eqz v12, :cond_5c

    instance-of v12, v1, Lb/f/b/h/j;

    if-eqz v12, :cond_5d

    :cond_5c
    instance-of v12, v1, Lb/f/b/h/f;

    if-eqz v12, :cond_5e

    :cond_5d
    move/from16 v19, v2

    goto :goto_3c

    .line 68
    :cond_5e
    iget v12, v1, Lb/f/b/h/d;->c0:I

    move/from16 v19, v2

    const/16 v2, 0x8

    if-ne v12, v2, :cond_5f

    goto :goto_3c

    :cond_5f
    if-eqz v21, :cond_60

    .line 69
    iget-object v2, v1, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v2, v2, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v2, v2, Lb/f/b/h/l/f;->j:Z

    if-eqz v2, :cond_60

    iget-object v2, v1, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v2, v2, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v2, v2, Lb/f/b/h/l/f;->j:Z

    if-eqz v2, :cond_60

    goto :goto_3c

    :cond_60
    instance-of v2, v1, Lb/f/b/h/j;

    if-eqz v2, :cond_61

    :goto_3c
    move-object/from16 v23, v0

    move/from16 v27, v3

    move-object/from16 v26, v15

    goto/16 :goto_3d

    :cond_61
    invoke-virtual {v1}, Lb/f/b/h/d;->r()I

    move-result v2

    invoke-virtual {v1}, Lb/f/b/h/d;->l()I

    move-result v12

    move-object/from16 v23, v0

    .line 70
    iget v0, v1, Lb/f/b/h/d;->W:I

    move/from16 v27, v3

    const/4 v3, 0x1

    if-ne v7, v3, :cond_62

    const/4 v3, 0x2

    .line 71
    :cond_62
    invoke-virtual {v9, v15, v1, v3}, Lb/f/b/h/l/b;->a(Lb/f/b/h/l/b$b;Lb/f/b/h/d;I)Z

    move-result v3

    or-int v3, v3, v18

    move/from16 v18, v3

    invoke-virtual {v1}, Lb/f/b/h/d;->r()I

    move-result v3

    move-object/from16 v26, v15

    invoke-virtual {v1}, Lb/f/b/h/d;->l()I

    move-result v15

    if-eq v3, v2, :cond_64

    invoke-virtual {v1, v3}, Lb/f/b/h/d;->M(I)V

    if-eqz v5, :cond_63

    invoke-virtual {v1}, Lb/f/b/h/d;->p()I

    move-result v2

    if-le v2, v10, :cond_63

    invoke-virtual {v1}, Lb/f/b/h/d;->p()I

    move-result v2

    invoke-virtual {v1, v13}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_63
    const/16 v18, 0x1

    :cond_64
    if-eq v15, v12, :cond_66

    invoke-virtual {v1, v15}, Lb/f/b/h/d;->H(I)V

    if-eqz v6, :cond_65

    invoke-virtual {v1}, Lb/f/b/h/d;->j()I

    move-result v2

    if-le v2, v11, :cond_65

    invoke-virtual {v1}, Lb/f/b/h/d;->j()I

    move-result v2

    invoke-virtual {v1, v14}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v3

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v11, v2

    :cond_65
    const/16 v18, 0x1

    .line 72
    :cond_66
    iget-boolean v2, v1, Lb/f/b/h/d;->y:Z

    if-eqz v2, :cond_67

    .line 73
    iget v1, v1, Lb/f/b/h/d;->W:I

    if-eq v0, v1, :cond_67

    const/16 v18, 0x1

    :cond_67
    :goto_3d
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v19

    move-object/from16 v0, v23

    move-object/from16 v15, v26

    move/from16 v3, v27

    const/4 v1, 0x0

    const/4 v12, 0x2

    goto/16 :goto_3b

    :cond_68
    move-object/from16 v23, v0

    move/from16 v19, v2

    move/from16 v27, v3

    move-object/from16 v26, v15

    if-eqz v18, :cond_69

    move-object/from16 v0, v23

    move/from16 v1, v27

    .line 74
    invoke-virtual {v9, v0, v1, v4}, Lb/f/b/h/l/b;->b(Lb/f/b/h/e;II)V

    add-int/lit8 v7, v7, 0x1

    move v3, v1

    move/from16 v2, v19

    move-object/from16 v15, v26

    const/4 v1, 0x0

    const/4 v8, 0x0

    goto/16 :goto_3a

    :cond_69
    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v8, v18

    goto :goto_3e

    :cond_6a
    move v1, v3

    :goto_3e
    if-eqz v8, :cond_6d

    invoke-virtual {v9, v0, v1, v4}, Lb/f/b/h/l/b;->b(Lb/f/b/h/e;II)V

    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v2

    if-ge v2, v10, :cond_6b

    invoke-virtual {v0, v10}, Lb/f/b/h/d;->M(I)V

    const/16 v20, 0x1

    goto :goto_3f

    :cond_6b
    const/16 v20, 0x0

    :goto_3f
    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v2

    if-ge v2, v11, :cond_6c

    invoke-virtual {v0, v11}, Lb/f/b/h/d;->H(I)V

    const/4 v3, 0x1

    goto :goto_40

    :cond_6c
    move/from16 v3, v20

    :goto_40
    if-eqz v3, :cond_6d

    invoke-virtual {v9, v0, v1, v4}, Lb/f/b/h/l/b;->b(Lb/f/b/h/e;II)V

    :cond_6d
    move/from16 v1, v17

    :cond_6e
    invoke-virtual {v0, v1}, Lb/f/b/h/e;->Z(I)V

    :cond_6f
    move-object/from16 v7, p0

    .line 75
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v0}, Lb/f/b/h/d;->r()I

    move-result v3

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    invoke-virtual {v0}, Lb/f/b/h/d;->l()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 76
    iget-boolean v5, v0, Lb/f/b/h/e;->y0:Z

    .line 77
    iget-boolean v6, v0, Lb/f/b/h/e;->z0:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_3
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/f/b/h/d;

    move-result-object v0

    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    instance-of v0, v0, Lb/f/b/h/f;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    new-instance v1, Lb/f/b/h/f;

    invoke-direct {v1}, Lb/f/b/h/f;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lb/f/b/h/d;

    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    check-cast v1, Lb/f/b/h/f;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    invoke-virtual {v1, v0}, Lb/f/b/h/f;->Q(I)V

    :cond_0
    instance-of v0, p1, Lb/f/c/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lb/f/c/b;

    invoke-virtual {v0}, Lb/f/c/b;->k()V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/view/View;)Lb/f/b/h/d;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 1
    iget-object v1, v1, Lb/f/b/h/k;->l0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lb/f/b/h/d;->B()V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(Lb/f/c/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Lb/f/c/d;

    return-void
.end method

.method public setId(I)V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:I

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lb/f/c/f;)V
    .locals 0

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Lb/f/c/c;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Lb/f/b/h/e;

    .line 1
    iput p1, v0, Lb/f/b/h/e;->x0:I

    const/16 p1, 0x200

    invoke-virtual {v0, p1}, Lb/f/b/h/e;->Y(I)Z

    move-result p1

    sput-boolean p1, Lb/f/b/d;->p:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
