.class public Lb/b/h/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Lb/b/h/m0;

.field public c:Lb/b/h/m0;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v0, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lb/b/h/w;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_d

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-le v1, v3, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_c

    .line 2
    iget-object v5, p0, Lb/b/h/l;->c:Lb/b/h/m0;

    if-nez v5, :cond_3

    new-instance v5, Lb/b/h/m0;

    invoke-direct {v5}, Lb/b/h/m0;-><init>()V

    iput-object v5, p0, Lb/b/h/l;->c:Lb/b/h/m0;

    :cond_3
    iget-object v5, p0, Lb/b/h/l;->c:Lb/b/h/m0;

    const/4 v6, 0x0

    .line 3
    iput-object v6, v5, Lb/b/h/m0;->a:Landroid/content/res/ColorStateList;

    iput-boolean v4, v5, Lb/b/h/m0;->d:Z

    iput-object v6, v5, Lb/b/h/m0;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v4, v5, Lb/b/h/m0;->c:Z

    .line 4
    iget-object v7, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    if-lt v1, v3, :cond_4

    .line 5
    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v7

    goto :goto_1

    :cond_4
    instance-of v8, v7, Lb/h/k/h;

    if-eqz v8, :cond_5

    check-cast v7, Lb/h/k/h;

    invoke-interface {v7}, Lb/h/k/h;->getSupportImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v7

    goto :goto_1

    :cond_5
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_6

    .line 6
    iput-boolean v2, v5, Lb/b/h/m0;->d:Z

    iput-object v7, v5, Lb/b/h/m0;->a:Landroid/content/res/ColorStateList;

    :cond_6
    iget-object v7, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    if-lt v1, v3, :cond_7

    .line 7
    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    goto :goto_2

    :cond_7
    instance-of v1, v7, Lb/h/k/h;

    if-eqz v1, :cond_8

    check-cast v7, Lb/h/k/h;

    invoke-interface {v7}, Lb/h/k/h;->getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    :cond_8
    :goto_2
    if-eqz v6, :cond_9

    .line 8
    iput-boolean v2, v5, Lb/b/h/m0;->c:Z

    iput-object v6, v5, Lb/b/h/m0;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_9
    iget-boolean v1, v5, Lb/b/h/m0;->d:Z

    if-nez v1, :cond_b

    iget-boolean v1, v5, Lb/b/h/m0;->c:Z

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    iget-object v1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-static {v0, v5, v1}, Lb/b/h/i;->f(Landroid/graphics/drawable/Drawable;Lb/b/h/m0;[I)V

    :goto_4
    if-eqz v2, :cond_c

    return-void

    .line 9
    :cond_c
    iget-object v1, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    if-eqz v1, :cond_d

    iget-object v2, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lb/b/h/i;->f(Landroid/graphics/drawable/Drawable;Lb/b/h/m0;[I)V

    :cond_d
    return-void
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object v0, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lb/b/b;->f:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v3, p2, v1}, Lb/b/h/o0;->p(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lb/b/h/o0;

    move-result-object v0

    iget-object v1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1
    iget-object v5, v0, Lb/b/h/o0;->b:Landroid/content/res/TypedArray;

    const/4 v7, 0x0

    move-object v4, p1

    move v6, p2

    .line 2
    invoke-static/range {v1 .. v7}, Lb/h/j/q;->E(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    iget-object p1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lb/b/h/o0;->k(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object p1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lb/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lb/b/h/w;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lb/b/h/o0;->n(I)Z

    move-result v1

    const/16 v2, 0x15

    if-eqz v1, :cond_4

    iget-object v1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lb/b/h/o0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_3

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    if-ne v3, v2, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    instance-of v3, v1, Lb/h/k/h;

    if-eqz v3, :cond_4

    check-cast v1, Lb/h/k/h;

    invoke-interface {v1, p1}, Lb/h/k/h;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_1
    const/4 p1, 0x3

    .line 4
    invoke-virtual {v0, p1}, Lb/b/h/o0;->n(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, p2}, Lb/b/h/o0;->i(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lb/b/h/w;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_6

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-ne p2, v2, :cond_7

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    instance-of p2, v1, Lb/h/k/h;

    if-eqz p2, :cond_7

    check-cast v1, Lb/h/k/h;

    invoke-interface {v1, p1}, Lb/h/k/h;->setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_7
    :goto_2
    iget-object p1, v0, Lb/b/h/o0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_3
    iget-object p2, v0, Lb/b/h/o0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    throw p1
.end method

.method public d(I)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lb/b/h/w;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lb/b/h/l;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lb/b/h/l;->a()V

    return-void
.end method

.method public e(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/h/m0;

    invoke-direct {v0}, Lb/b/h/m0;-><init>()V

    iput-object v0, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    :cond_0
    iget-object v0, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    iput-object p1, v0, Lb/b/h/m0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/b/h/m0;->d:Z

    invoke-virtual {p0}, Lb/b/h/l;->a()V

    return-void
.end method

.method public f(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/h/m0;

    invoke-direct {v0}, Lb/b/h/m0;-><init>()V

    iput-object v0, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    :cond_0
    iget-object v0, p0, Lb/b/h/l;->b:Lb/b/h/m0;

    iput-object p1, v0, Lb/b/h/m0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/b/h/m0;->c:Z

    invoke-virtual {p0}, Lb/b/h/l;->a()V

    return-void
.end method