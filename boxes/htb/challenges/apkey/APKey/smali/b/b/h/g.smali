.class public Lb/b/h/g;
.super Landroid/widget/CheckBox;
.source ""

# interfaces
.implements Lb/h/k/f;
.implements Lb/h/j/p;


# instance fields
.field public final b:Lb/b/h/h;

.field public final c:Lb/b/h/e;

.field public final d:Lb/b/h/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030081

    invoke-direct {p0, p1, p2, v0}, Lb/b/h/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lb/b/h/l0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/h/k0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lb/b/h/h;

    invoke-direct {p1, p0}, Lb/b/h/h;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lb/b/h/g;->b:Lb/b/h/h;

    invoke-virtual {p1, p2, p3}, Lb/b/h/h;->c(Landroid/util/AttributeSet;I)V

    new-instance p1, Lb/b/h/e;

    invoke-direct {p1, p0}, Lb/b/h/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lb/b/h/g;->c:Lb/b/h/e;

    invoke-virtual {p1, p2, p3}, Lb/b/h/e;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lb/b/h/q;

    invoke-direct {p1, p0}, Lb/b/h/q;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lb/b/h/g;->d:Lb/b/h/q;

    invoke-virtual {p1, p2, p3}, Lb/b/h/q;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    iget-object v0, p0, Lb/b/h/g;->c:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->a()V

    :cond_0
    iget-object v0, p0, Lb/b/h/g;->d:Lb/b/h/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/h/q;->b()V

    :cond_1
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lb/b/h/g;->b:Lb/b/h/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lb/b/h/h;->b(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->c:Lb/b/h/e;

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

    iget-object v0, p0, Lb/b/h/g;->c:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->b:Lb/b/h/h;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/h/h;->b:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->b:Lb/b/h/h;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/h/h;->c:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/b/h/g;->c:Lb/b/h/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/e;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    iget-object v0, p0, Lb/b/h/g;->c:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->f(I)V

    :cond_0
    return-void
.end method

.method public setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/h/g;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/b/h/g;->b:Lb/b/h/h;

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lb/b/h/h;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Lb/b/h/h;->f:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/b/h/h;->f:Z

    invoke-virtual {p1}, Lb/b/h/h;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->c:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->c:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->b:Lb/b/h/h;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Lb/b/h/h;->b:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/b/h/h;->d:Z

    invoke-virtual {v0}, Lb/b/h/h;->a()V

    :cond_0
    return-void
.end method

.method public setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/g;->b:Lb/b/h/h;

    if-eqz v0, :cond_0

    .line 1
    iput-object p1, v0, Lb/b/h/h;->c:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lb/b/h/h;->e:Z

    invoke-virtual {v0}, Lb/b/h/h;->a()V

    :cond_0
    return-void
.end method
