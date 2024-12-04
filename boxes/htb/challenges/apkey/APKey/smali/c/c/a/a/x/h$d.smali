.class public Lc/c/a/a/x/h$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/x/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 12

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/a/x/h;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lc/c/a/a/x/h;->q:Z

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_1

    iget-object v5, v1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v1, v1, Lc/c/a/a/x/h;->m:Lc/c/a/a/u/g;

    goto :goto_0

    :cond_0
    if-ne v5, v3, :cond_1

    iget-object v1, v1, Lc/c/a/a/x/h;->l:Landroid/graphics/drawable/StateListDrawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    :cond_1
    iget-object v1, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    goto/16 :goto_3

    .line 5
    :cond_3
    iget-object v5, v1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    move-result v5

    iget-object v7, v1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackground()Lc/c/a/a/u/g;

    move-result-object v7

    const v8, 0x7f0300b9

    invoke-static {v0, v8}, Lc/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v8

    new-array v9, v4, [[I

    new-array v10, v3, [I

    const v11, 0x10100a7

    aput v11, v10, v6

    aput-object v10, v9, v6

    new-array v10, v6, [I

    aput-object v10, v9, v3

    const v10, 0x3dcccccd    # 0.1f

    if-ne v5, v4, :cond_5

    const v1, 0x7f0300c8

    .line 6
    invoke-static {v0, v1}, Lc/c/a/a/a;->e(Landroid/view/View;I)I

    move-result v1

    new-instance v5, Lc/c/a/a/u/g;

    .line 7
    iget-object v11, v7, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v11, v11, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    .line 8
    invoke-direct {v5, v11}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/j;)V

    invoke-static {v8, v1, v10}, Lc/c/a/a/a;->l(IIF)I

    move-result v8

    new-array v10, v4, [I

    aput v8, v10, v6

    aput v6, v10, v3

    new-instance v11, Landroid/content/res/ColorStateList;

    invoke-direct {v11, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v11}, Lc/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    if-eqz v2, :cond_4

    invoke-virtual {v5, v1}, Lc/c/a/a/u/g;->setTint(I)V

    new-array v10, v4, [I

    aput v8, v10, v6

    aput v1, v10, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v8, Lc/c/a/a/u/g;

    .line 9
    iget-object v9, v7, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v9, v9, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    .line 10
    invoke-direct {v8, v9}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/j;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lc/c/a/a/u/g;->setTint(I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v9, v1, v5, v8}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v9, v1, v6

    aput-object v7, v1, v3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v6

    aput-object v7, v1, v3

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_2
    sget-object v1, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    if-ne v5, v3, :cond_8

    .line 12
    iget-object v1, v1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundColor()I

    move-result v1

    invoke-static {v8, v1, v10}, Lc/c/a/a/a;->l(IIF)I

    move-result v5

    new-array v8, v4, [I

    aput v5, v8, v6

    aput v1, v8, v3

    if-eqz v2, :cond_6

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v5, v1, v7, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget-object v1, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 14
    :cond_6
    new-instance v1, Lc/c/a/a/u/g;

    .line 15
    iget-object v5, v7, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    iget-object v5, v5, Lc/c/a/a/u/g$b;->a:Lc/c/a/a/u/j;

    .line 16
    invoke-direct {v1, v5}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/j;)V

    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v9, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v5}, Lc/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v7, v5, v6

    aput-object v1, v5, v3

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lb/h/j/q;->q(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getPaddingTop()I

    move-result v7

    invoke-static {v0}, Lb/h/j/q;->p(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getPaddingBottom()I

    move-result v9

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v1, v10, :cond_7

    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v5, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    :cond_8
    :goto_3
    iget-object v1, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lc/c/a/a/x/j;

    invoke-direct {v5, v1, v0}, Lc/c/a/a/x/j;-><init>(Lc/c/a/a/x/h;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, v1, Lc/c/a/a/x/h;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz v2, :cond_9

    new-instance v2, Lc/c/a/a/x/k;

    invoke-direct {v2, v1}, Lc/c/a/a/x/k;-><init>(Lc/c/a/a/x/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnDismissListener(Landroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 21
    :cond_9
    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    .line 22
    iget-object v1, v1, Lc/c/a/a/x/h;->d:Landroid/text/TextWatcher;

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    .line 24
    iget-object v1, v1, Lc/c/a/a/x/h;->d:Landroid/text/TextWatcher;

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-virtual {v0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v6, 0x1

    :cond_a
    if-nez v6, :cond_b

    .line 27
    iget-object v0, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    iget-object v0, v0, Lc/c/a/a/x/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {v0, v4}, Lb/h/j/q;->I(Landroid/view/View;I)V

    :cond_b
    iget-object v0, p0, Lc/c/a/a/x/h$d;->a:Lc/c/a/a/x/h;

    .line 28
    iget-object v0, v0, Lc/c/a/a/x/h;->f:Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
