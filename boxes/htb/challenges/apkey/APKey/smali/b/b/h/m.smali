.class public Lb/b/h/m;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lb/h/j/p;
.implements Lb/h/k/h;


# instance fields
.field public final b:Lb/b/h/e;

.field public final c:Lb/b/h/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lb/b/h/l0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/h/k0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lb/b/h/e;

    invoke-direct {p1, p0}, Lb/b/h/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lb/b/h/m;->b:Lb/b/h/e;

    invoke-virtual {p1, p2, p3}, Lb/b/h/e;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lb/b/h/l;

    invoke-direct {p1, p0}, Lb/b/h/l;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lb/b/h/m;->c:Lb/b/h/l;

    invoke-virtual {p1, p2, p3}, Lb/b/h/l;->c(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->a()V

    :cond_0
    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/h/l;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/h/l;->b:Lb/b/h/m0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/h/m0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/h/l;->b:Lb/b/h/m0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/h/m0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    invoke-virtual {v0}, Lb/b/h/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/e;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/l;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/l;->a()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/l;->d(I)V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/l;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/l;->e(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/m;->c:Lb/b/h/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/l;->f(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
