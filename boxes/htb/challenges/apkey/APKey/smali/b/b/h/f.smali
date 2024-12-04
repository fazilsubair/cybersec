.class public Lb/b/h/f;
.super Landroid/widget/Button;
.source ""

# interfaces
.implements Lb/h/j/p;
.implements Lb/h/k/b;
.implements Lb/h/k/g;


# instance fields
.field public final b:Lb/b/h/e;

.field public final c:Lb/b/h/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030074

    invoke-direct {p0, p1, p2, v0}, Lb/b/h/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-static {p1}, Lb/b/h/l0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/h/k0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lb/b/h/e;

    invoke-direct {p1, p0}, Lb/b/h/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lb/b/h/f;->b:Lb/b/h/e;

    invoke-virtual {p1, p2, p3}, Lb/b/h/e;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lb/b/h/q;

    invoke-direct {p1, p0}, Lb/b/h/q;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    invoke-virtual {p1, p2, p3}, Lb/b/h/q;->e(Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Lb/b/h/q;->b()V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    iget-object v0, p0, Lb/b/h/f;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->a()V

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/h/q;->b()V

    :cond_1
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lb/b/h/q;->i:Lb/b/h/t;

    .line 2
    iget v0, v0, Lb/b/h/t;->e:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lb/b/h/q;->i:Lb/b/h/t;

    .line 2
    iget v0, v0, Lb/b/h/t;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lb/b/h/q;->i:Lb/b/h/t;

    .line 2
    iget v0, v0, Lb/b/h/t;->c:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    .line 1
    iget-object v0, v0, Lb/b/h/q;->i:Lb/b/h/t;

    .line 2
    iget-object v0, v0, Lb/b/h/t;->f:[I

    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-boolean v0, Lb/h/k/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/Button;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_2

    .line 1
    iget-object v0, v0, Lb/b/h/q;->i:Lb/b/h/t;

    .line 2
    iget v0, v0, Lb/b/h/t;->a:I

    return v0

    :cond_2
    return v1
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->b:Lb/b/h/e;

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

    iget-object v0, p0, Lb/b/h/f;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/h/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    .line 1
    iget-object v0, v0, Lb/b/h/q;->h:Lb/b/h/m0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/h/m0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    .line 1
    iget-object v0, v0, Lb/b/h/q;->h:Lb/b/h/m0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb/b/h/m0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    iget-object p1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz p1, :cond_0

    .line 1
    sget-boolean p2, Lb/h/k/b;->a:Z

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p1, Lb/b/h/q;->i:Lb/b/h/t;

    invoke-virtual {p1}, Lb/b/h/t;->a()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz p1, :cond_0

    sget-boolean p2, Lb/h/k/b;->a:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lb/b/h/q;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    .line 1
    iget-object p1, p1, Lb/b/h/q;->i:Lb/b/h/t;

    invoke-virtual {p1}, Lb/b/h/t;->a()V

    :cond_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/b/h/q;->h(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lb/b/h/q;->i([II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/Button;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lb/b/h/q;->j(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/b/h/f;->b:Lb/b/h/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/h/e;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lb/b/h/f;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->f(I)V

    :cond_0
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lb/h/b/a;->m0(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setSupportAllCaps(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lb/b/h/q;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->b:Lb/b/h/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/h/e;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    invoke-virtual {v0, p1}, Lb/b/h/q;->k(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    invoke-virtual {p1}, Lb/b/h/q;->b()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    invoke-virtual {v0, p1}, Lb/b/h/q;->l(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    invoke-virtual {p1}, Lb/b/h/q;->b()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lb/b/h/q;->f(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    sget-boolean v0, Lb/h/k/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/h/f;->c:Lb/b/h/q;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1
    invoke-virtual {v1}, Lb/b/h/q;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, v1, Lb/b/h/q;->i:Lb/b/h/t;

    invoke-virtual {v0, p1, p2}, Lb/b/h/t;->f(IF)V

    :cond_1
    :goto_0
    return-void
.end method
