.class public Lc/c/a/a/v/d;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final i:Landroid/view/View$OnTouchListener;


# instance fields
.field public b:Lc/c/a/a/v/c;

.field public c:Lc/c/a/a/v/b;

.field public d:I

.field public final e:F

.field public final f:F

.field public g:Landroid/content/res/ColorStateList;

.field public h:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/a/v/d$a;

    invoke-direct {v0}, Lc/c/a/a/v/d$a;-><init>()V

    sput-object v0, Lc/c/a/a/v/d;->i:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lc/c/a/a/y/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lc/c/a/a/b;->y:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x6

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 1
    sget-object v2, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->setElevation(F)V

    :cond_0
    const/4 v1, 0x2

    .line 2
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc/c/a/a/v/d;->d:I

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lc/c/a/a/v/d;->e:F

    const/4 v1, 0x4

    invoke-static {p1, p2, v1}, Lc/c/a/a/a;->f(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/v/d;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x5

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v1}, Lc/c/a/a/a;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a/v/d;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lc/c/a/a/v/d;->f:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p2, Lc/c/a/a/v/d;->i:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06015b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0}, Lc/c/a/a/v/d;->getBackgroundOverlayColorAlpha()F

    move-result p1

    const v0, 0x7f0300c8

    .line 4
    invoke-static {p0, v0}, Lc/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v0

    const v1, 0x7f0300c1

    invoke-static {p0, v1}, Lc/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v1

    invoke-static {v0, v1, p1}, Lc/c/a/a/a;->l(IIF)I

    move-result p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lc/c/a/a/v/d;->g:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    invoke-static {p2}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lc/c/a/a/v/d;->g:Landroid/content/res/ColorStateList;

    invoke-static {p1, p2}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 6
    :goto_0
    sget-object p2, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Lc/c/a/a/v/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getActionTextColorAlpha()F
    .locals 1

    iget v0, p0, Lc/c/a/a/v/d;->f:F

    return v0
.end method

.method public getAnimationMode()I
    .locals 1

    iget v0, p0, Lc/c/a/a/v/d;->d:I

    return v0
.end method

.method public getBackgroundOverlayColorAlpha()F
    .locals 1

    iget v0, p0, Lc/c/a/a/v/d;->e:F

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lc/c/a/a/v/d;->c:Lc/c/a/a/v/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lc/c/a/a/v/b;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 1
    :cond_0
    sget-object v0, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lc/c/a/a/v/d;->c:Lc/c/a/a/v/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lc/c/a/a/v/b;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lc/c/a/a/v/d;->b:Lc/c/a/a/v/c;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lc/c/a/a/v/c;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setAnimationMode(I)V
    .locals 0

    iput p1, p0, Lc/c/a/a/v/d;->d:I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/c/a/a/v/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/c/a/a/v/d;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/v/d;->g:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lc/c/a/a/v/d;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lb/h/b/a;->h0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lc/c/a/a/v/d;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lb/h/b/a;->g0(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lc/c/a/a/v/d;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p1}, Lb/h/b/a;->h0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lc/c/a/a/v/d;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lb/h/b/a;->l0(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lb/h/b/a;->h0(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnAttachStateChangeListener(Lc/c/a/a/v/b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/v/d;->c:Lc/c/a/a/v/b;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lc/c/a/a/v/d;->i:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnLayoutChangeListener(Lc/c/a/a/v/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/v/d;->b:Lc/c/a/a/v/c;

    return-void
.end method
