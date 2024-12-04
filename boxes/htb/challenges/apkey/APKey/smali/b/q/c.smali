.class public Lb/q/c;
.super Lb/q/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/c$i;
    }
.end annotation


# static fields
.field public static final A:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final B:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lb/q/c$i;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final C:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lb/q/c$i;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public static G:Lb/q/i;

.field public static final z:[Ljava/lang/String;


# instance fields
.field public y:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Lb/q/c;->z:[Ljava/lang/String;

    new-instance v0, Lb/q/c$a;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lb/q/c$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->A:Landroid/util/Property;

    new-instance v0, Lb/q/c$b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lb/q/c$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->B:Landroid/util/Property;

    new-instance v0, Lb/q/c$c;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Lb/q/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->C:Landroid/util/Property;

    new-instance v0, Lb/q/c$d;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lb/q/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->D:Landroid/util/Property;

    new-instance v0, Lb/q/c$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lb/q/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->E:Landroid/util/Property;

    new-instance v0, Lb/q/c$f;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lb/q/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->F:Landroid/util/Property;

    new-instance v0, Lb/q/i;

    invoke-direct {v0}, Lb/q/i;-><init>()V

    sput-object v0, Lb/q/c;->G:Lb/q/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/q/k;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lb/q/c;->y:[I

    return-void
.end method


# virtual methods
.method public final H(Lb/q/s;)V
    .locals 6

    iget-object v0, p1, Lb/q/s;->b:Landroid/view/View;

    invoke-static {v0}, Lb/h/j/q;->u(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lb/q/s;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v0, "android:changeBounds:bounds"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lb/q/s;->a:Ljava/util/Map;

    iget-object p1, p1, Lb/q/s;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v1, "android:changeBounds:parent"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public d(Lb/q/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/q/c;->H(Lb/q/s;)V

    return-void
.end method

.method public g(Lb/q/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/q/c;->H(Lb/q/s;)V

    return-void
.end method

.method public k(Landroid/view/ViewGroup;Lb/q/s;Lb/q/s;)Landroid/animation/Animator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v1, :cond_13

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v4, v1, Lb/q/s;->a:Ljava/util/Map;

    iget-object v5, v2, Lb/q/s;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:parent"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v4, :cond_12

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v4, v2, Lb/q/s;->b:Landroid/view/View;

    iget-object v5, v1, Lb/q/s;->a:Ljava/util/Map;

    const-string v6, "android:changeBounds:bounds"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v7, v2, Lb/q/s;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v6, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->right:I

    iget v12, v6, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v11, v7

    sub-int v14, v5, v9

    sub-int v15, v12, v8

    sub-int v3, v6, v10

    iget-object v1, v1, Lb/q/s;->a:Ljava/util/Map;

    const-string v0, "android:changeBounds:clip"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, v2, Lb/q/s;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    const/4 v2, 0x1

    if-eqz v13, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v15, :cond_7

    if-eqz v3, :cond_7

    :cond_3
    if-ne v7, v8, :cond_5

    if-eq v9, v10, :cond_4

    goto :goto_0

    :cond_4
    const/16 v16, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v16, 0x1

    :goto_1
    if-ne v11, v12, :cond_6

    if-eq v5, v6, :cond_8

    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    :cond_8
    :goto_2
    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    :cond_a
    add-int/lit8 v16, v16, 0x1

    :cond_b
    move/from16 v0, v16

    if-lez v0, :cond_11

    invoke-static {v4, v7, v9, v11, v5}, Lb/q/a0;->c(Landroid/view/View;IIII)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    if-ne v13, v15, :cond_c

    if-ne v14, v3, :cond_c

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lb/q/k;->u:Lb/q/f;

    int-to-float v3, v7

    int-to-float v5, v9

    int-to-float v6, v8

    int-to-float v7, v10

    .line 2
    invoke-virtual {v1, v3, v5, v6, v7}, Lb/q/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Lb/q/c;->F:Landroid/util/Property;

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    new-instance v3, Lb/q/c$i;

    invoke-direct {v3, v4}, Lb/q/c$i;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v13, v0, Lb/q/k;->u:Lb/q/f;

    int-to-float v7, v7

    int-to-float v9, v9

    int-to-float v8, v8

    int-to-float v10, v10

    .line 4
    invoke-virtual {v13, v7, v9, v8, v10}, Lb/q/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v7

    sget-object v8, Lb/q/c;->B:Landroid/util/Property;

    invoke-static {v3, v8, v7}, Lb/h/b/a;->M(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 5
    iget-object v8, v0, Lb/q/k;->u:Lb/q/f;

    int-to-float v9, v11

    int-to-float v5, v5

    int-to-float v10, v12

    int-to-float v6, v6

    .line 6
    invoke-virtual {v8, v9, v5, v10, v6}, Lb/q/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, Lb/q/c;->C:Landroid/util/Property;

    invoke-static {v3, v6, v5}, Lb/h/b/a;->M(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v7, v1, v8

    aput-object v5, v1, v2

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lb/q/c$g;

    invoke-direct {v1, v0, v3}, Lb/q/c$g;-><init>(Lb/q/c;Lb/q/c$i;)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    if-ne v7, v8, :cond_f

    if-eq v9, v10, :cond_e

    goto :goto_3

    .line 7
    :cond_e
    iget-object v1, v0, Lb/q/k;->u:Lb/q/f;

    int-to-float v3, v11

    int-to-float v5, v5

    int-to-float v7, v12

    int-to-float v6, v6

    .line 8
    invoke-virtual {v1, v3, v5, v7, v6}, Lb/q/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Lb/q/c;->D:Landroid/util/Property;

    goto :goto_4

    .line 9
    :cond_f
    :goto_3
    iget-object v1, v0, Lb/q/k;->u:Lb/q/f;

    int-to-float v3, v7

    int-to-float v5, v9

    int-to-float v6, v8

    int-to-float v7, v10

    .line 10
    invoke-virtual {v1, v3, v5, v6, v7}, Lb/q/f;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Lb/q/c;->E:Landroid/util/Property;

    :goto_4
    invoke-static {v4, v3, v1}, Lb/h/b/a;->M(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    :goto_5
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lb/q/x;->b(Landroid/view/ViewGroup;Z)V

    new-instance v2, Lb/q/c$h;

    invoke-direct {v2, v0, v1}, Lb/q/c$h;-><init>(Lb/q/c;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v2}, Lb/q/k;->a(Lb/q/k$d;)Lb/q/k;

    :cond_10
    return-object v6

    :cond_11
    move-object/from16 v0, p0

    const/4 v1, 0x0

    return-object v1

    :cond_12
    :goto_6
    const/4 v1, 0x0

    return-object v1

    :cond_13
    :goto_7
    const/4 v1, 0x0

    return-object v1
.end method

.method public p()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/q/c;->z:[Ljava/lang/String;

    return-object v0
.end method
