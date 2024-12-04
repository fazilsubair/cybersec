.class public final Lc/c/a/a/l/o;
.super Lb/k/b/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lb/k/b/l;"
    }
.end annotation


# static fields
.field public static final synthetic A0:I


# instance fields
.field public final j0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lc/c/a/a/l/q<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field public final k0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field public final l0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field public final m0:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field public n0:I

.field public o0:Lc/c/a/a/l/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/l/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public p0:Lc/c/a/a/l/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/l/x<",
            "TS;>;"
        }
    .end annotation
.end field

.field public q0:Lc/c/a/a/l/a;

.field public r0:Lc/c/a/a/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/l/g<",
            "TS;>;"
        }
    .end annotation
.end field

.field public s0:I

.field public t0:Ljava/lang/CharSequence;

.field public u0:Z

.field public v0:I

.field public w0:Landroid/widget/TextView;

.field public x0:Lcom/google/android/material/internal/CheckableImageButton;

.field public y0:Lc/c/a/a/u/g;

.field public z0:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/k/b/l;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/c/a/a/l/o;->j0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/c/a/a/l/o;->k0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/c/a/a/l/o;->l0:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/c/a/a/l/o;->m0:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static w0(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0600e8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1
    invoke-static {}, Lc/c/a/a/l/a0;->d()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {v1}, Lc/c/a/a/l/a0;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    const v1, 0x7f0600ee

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0600fc

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v5

    add-int/2addr v1, v0

    sub-int/2addr v5, v3

    mul-int v5, v5, p0

    add-int/2addr v5, v1

    return v5
.end method

.method public static x0(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x101020d

    invoke-static {p0, v0}, Lc/c/a/a/l/o;->y0(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static y0(Landroid/content/Context;I)Z
    .locals 3

    const-class v0, Lc/c/a/a/l/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f03022b

    invoke-static {p0, v1, v0}, Lc/c/a/a/a;->r(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method


# virtual methods
.method public final A0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    invoke-virtual {p0}, Lb/k/b/m;->j()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/a/a/l/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/c/a/a/l/o;->w0:Landroid/widget/TextView;

    const v2, 0x7f0e0040

    invoke-virtual {p0, v2}, Lb/k/b/m;->B(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lc/c/a/a/l/o;->w0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final B0(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v0, :cond_0

    const v0, 0x7f0e0059

    goto :goto_0

    :cond_0
    const v0, 0x7f0e005b

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final L(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/k/b/l;->L(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/k/b/m;->g:Landroid/os/Bundle;

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/c/a/a/l/o;->n0:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/d;

    iput-object v0, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/a;

    iput-object v0, p0, Lc/c/a/a/l/o;->q0:Lc/c/a/a/l/a;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/c/a/a/l/o;->s0:I

    const-string v0, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/a/l/o;->t0:Ljava/lang/CharSequence;

    const-string v0, "INPUT_MODE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lc/c/a/a/l/o;->v0:I

    return-void
.end method

.method public final O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iget-boolean p3, p0, Lc/c/a/a/l/o;->u0:Z

    if-eqz p3, :cond_0

    const p3, 0x7f0b004f

    goto :goto_0

    :cond_0
    const p3, 0x7f0b004e

    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-boolean p3, p0, Lc/c/a/a/l/o;->u0:Z

    const v0, 0x7f0800f3

    if-eqz p3, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lc/c/a/a/l/o;->w0(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    const p3, 0x7f0800f4

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p2}, Lc/c/a/a/l/o;->w0(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lb/k/b/m;->i0()Landroid/content/Context;

    move-result-object p3

    .line 1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0600ff

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f060100

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v2, v1

    const v1, 0x7f0600fe

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v2

    const v2, 0x7f0600ef

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v4, Lc/c/a/a/l/t;->g:I

    const v5, 0x7f0600ea

    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int v5, v5, v4

    add-int/2addr v4, v3

    const v3, 0x7f0600fd

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    mul-int v3, v3, v4

    add-int/2addr v3, v5

    const v4, 0x7f0600e7

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_1
    const p3, 0x7f0800ff

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lc/c/a/a/l/o;->w0:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lb/h/j/q;->G(Landroid/view/View;I)V

    const p3, 0x7f080101

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p3, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    const p3, 0x7f080105

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v1, p0, Lc/c/a/a/l/o;->t0:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget v1, p0, Lc/c/a/a/l/o;->s0:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    :goto_2
    iget-object p3, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    const-string v1, "TOGGLE_BUTTON_TAG"

    invoke-virtual {p3, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget-object p3, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v0, [I

    const v3, 0x10100a0

    const/4 v4, 0x0

    aput v3, v2, v4

    const v3, 0x7f07006f

    invoke-static {p2, v3}, Lb/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v4, [I

    const v3, 0x7f070071

    invoke-static {p2, v3}, Lb/b/d/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p3, v1}, Lb/b/h/k;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    iget p3, p0, Lc/c/a/a/l/o;->v0:I

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    goto :goto_3

    :cond_3
    const/4 p3, 0x0

    :goto_3
    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p2, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lb/h/j/q;->F(Landroid/view/View;Lb/h/j/a;)V

    iget-object p2, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p2}, Lc/c/a/a/l/o;->B0(Lcom/google/android/material/internal/CheckableImageButton;)V

    iget-object p2, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance p3, Lc/c/a/a/l/p;

    invoke-direct {p3, p0}, Lc/c/a/a/l/p;-><init>(Lc/c/a/a/l/o;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08006e

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    iget-object p2, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    invoke-interface {p2}, Lc/c/a/a/l/d;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_4
    iget-object p2, p0, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    const-string p3, "CONFIRM_BUTTON_TAG"

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    new-instance p3, Lc/c/a/a/l/o$a;

    invoke-direct {p3, p0}, Lc/c/a/a/l/o$a;-><init>(Lc/c/a/a/l/o;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08005a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const-string p3, "CANCEL_BUTTON_TAG"

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance p3, Lc/c/a/a/l/o$b;

    invoke-direct {p3, p0}, Lc/c/a/a/l/o$b;-><init>(Lc/c/a/a/l/o;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final Z(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lb/k/b/l;->Z(Landroid/os/Bundle;)V

    iget v0, p0, Lc/c/a/a/l/o;->n0:I

    const-string v1, "OVERRIDE_THEME_RES_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v0, Lc/c/a/a/l/a$b;

    iget-object v1, p0, Lc/c/a/a/l/o;->q0:Lc/c/a/a/l/a;

    invoke-direct {v0, v1}, Lc/c/a/a/l/a$b;-><init>(Lc/c/a/a/l/a;)V

    iget-object v1, p0, Lc/c/a/a/l/o;->r0:Lc/c/a/a/l/g;

    .line 1
    iget-object v1, v1, Lc/c/a/a/l/g;->Y:Lc/c/a/a/l/s;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, v1, Lc/c/a/a/l/s;->g:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lc/c/a/a/l/a$b;->c:Ljava/lang/Long;

    .line 4
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lc/c/a/a/l/a$b;->d:Lc/c/a/a/l/a$c;

    const-string v3, "DEEP_COPY_VALIDATOR_KEY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v2, Lc/c/a/a/l/a;

    iget-wide v4, v0, Lc/c/a/a/l/a$b;->a:J

    invoke-static {v4, v5}, Lc/c/a/a/l/s;->l(J)Lc/c/a/a/l/s;

    move-result-object v5

    iget-wide v6, v0, Lc/c/a/a/l/a$b;->b:J

    invoke-static {v6, v7}, Lc/c/a/a/l/s;->l(J)Lc/c/a/a/l/s;

    move-result-object v6

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lc/c/a/a/l/a$c;

    iget-object v0, v0, Lc/c/a/a/l/a$b;->c:Ljava/lang/Long;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc/c/a/a/l/s;->l(J)Lc/c/a/a/l/s;

    move-result-object v0

    :goto_0
    move-object v8, v0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lc/c/a/a/l/a;-><init>(Lc/c/a/a/l/s;Lc/c/a/a/l/s;Lc/c/a/a/l/a$c;Lc/c/a/a/l/s;Lc/c/a/a/l/a$a;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v0, p0, Lc/c/a/a/l/o;->s0:I

    const-string v1, "TITLE_TEXT_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/c/a/a/l/o;->t0:Ljava/lang/CharSequence;

    const-string v1, "TITLE_TEXT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a0()V
    .locals 9

    invoke-super {p0}, Lb/k/b/l;->a0()V

    invoke-virtual {p0}, Lb/k/b/l;->v0()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lc/c/a/a/l/o;->u0:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lc/c/a/a/l/o;->y0:Lc/c/a/a/u/g;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lb/k/b/m;->x()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lc/c/a/a/l/o;->y0:Lc/c/a/a/u/g;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lc/c/a/a/m/a;

    invoke-virtual {p0}, Lb/k/b/l;->v0()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lc/c/a/a/m/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    invoke-virtual {p0}, Lc/c/a/a/l/o;->z0()V

    return-void
.end method

.method public b0()V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/l/o;->p0:Lc/c/a/a/l/x;

    .line 1
    iget-object v0, v0, Lc/c/a/a/l/x;->U:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lb/k/b/m;->D:Z

    .line 3
    iget-object v0, p0, Lb/k/b/l;->f0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/l/o;->l0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/l/o;->m0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lb/k/b/m;->F:Landroid/view/View;

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-super {p0, p1}, Lb/k/b/l;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final u0(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lb/k/b/m;->i0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lb/k/b/m;->i0()Landroid/content/Context;

    move-result-object v1

    .line 1
    iget v2, p0, Lc/c/a/a/l/o;->n0:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    invoke-interface {v2, v1}, Lc/c/a/a/l/d;->f(Landroid/content/Context;)I

    move-result v2

    .line 2
    :goto_0
    invoke-direct {p1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/a/l/o;->x0(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lc/c/a/a/l/o;->u0:Z

    const v1, 0x7f0300c8

    const-class v2, Lc/c/a/a/l/o;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc/c/a/a/a;->r(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    new-instance v2, Lc/c/a/a/u/g;

    const/4 v3, 0x0

    const v4, 0x7f03022b

    const v5, 0x7f0f028e

    .line 3
    invoke-static {v0, v3, v4, v5}, Lc/c/a/a/u/j;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)Lc/c/a/a/u/j$b;

    move-result-object v3

    invoke-virtual {v3}, Lc/c/a/a/u/j$b;->a()Lc/c/a/a/u/j;

    move-result-object v3

    invoke-direct {v2, v3}, Lc/c/a/a/u/g;-><init>(Lc/c/a/a/u/j;)V

    .line 4
    iput-object v2, p0, Lc/c/a/a/l/o;->y0:Lc/c/a/a/u/g;

    .line 5
    iget-object v3, v2, Lc/c/a/a/u/g;->b:Lc/c/a/a/u/g$b;

    new-instance v4, Lc/c/a/a/n/a;

    invoke-direct {v4, v0}, Lc/c/a/a/n/a;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lc/c/a/a/u/g$b;->b:Lc/c/a/a/n/a;

    invoke-virtual {v2}, Lc/c/a/a/u/g;->w()V

    .line 6
    iget-object v0, p0, Lc/c/a/a/l/o;->y0:Lc/c/a/a/u/g;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/a/u/g;->p(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lc/c/a/a/l/o;->y0:Lc/c/a/a/u/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lb/h/j/q;->m(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Lc/c/a/a/u/g;->o(F)V

    return-object p1
.end method

.method public final z0()V
    .locals 7

    invoke-virtual {p0}, Lb/k/b/m;->i0()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget v1, p0, Lc/c/a/a/l/o;->n0:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    invoke-interface {v1, v0}, Lc/c/a/a/l/d;->f(Landroid/content/Context;)I

    move-result v1

    .line 2
    :goto_0
    iget-object v0, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    iget-object v2, p0, Lc/c/a/a/l/o;->q0:Lc/c/a/a/l/a;

    .line 3
    new-instance v3, Lc/c/a/a/l/g;

    invoke-direct {v3}, Lc/c/a/a/l/g;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "THEME_RES_ID_KEY"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "GRID_SELECTOR_KEY"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v2, v2, Lc/c/a/a/l/a;->e:Lc/c/a/a/l/s;

    const-string v6, "CURRENT_MONTH_KEY"

    .line 5
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v4}, Lb/k/b/m;->n0(Landroid/os/Bundle;)V

    .line 6
    iput-object v3, p0, Lc/c/a/a/l/o;->r0:Lc/c/a/a/l/g;

    iget-object v2, p0, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    iget-object v3, p0, Lc/c/a/a/l/o;->q0:Lc/c/a/a/l/a;

    .line 7
    new-instance v4, Lc/c/a/a/l/r;

    invoke-direct {v4}, Lc/c/a/a/l/r;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v6}, Lb/k/b/m;->n0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lc/c/a/a/l/o;->r0:Lc/c/a/a/l/g;

    :goto_1
    iput-object v4, p0, Lc/c/a/a/l/o;->p0:Lc/c/a/a/l/x;

    invoke-virtual {p0}, Lc/c/a/a/l/o;->A0()V

    invoke-virtual {p0}, Lb/k/b/m;->i()Lb/k/b/c0;

    move-result-object v0

    .line 9
    new-instance v1, Lb/k/b/a;

    invoke-direct {v1, v0}, Lb/k/b/a;-><init>(Lb/k/b/c0;)V

    const v0, 0x7f0800f3

    .line 10
    iget-object v2, p0, Lc/c/a/a/l/o;->p0:Lc/c/a/a/l/x;

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v0, v2, v4, v3}, Lb/k/b/a;->e(ILb/k/b/m;Ljava/lang/String;I)V

    .line 12
    iget-boolean v0, v1, Lb/k/b/k0;->g:Z

    if-nez v0, :cond_2

    .line 13
    iget-object v0, v1, Lb/k/b/a;->p:Lb/k/b/c0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/k/b/c0;->D(Lb/k/b/c0$l;Z)V

    .line 14
    iget-object v0, p0, Lc/c/a/a/l/o;->p0:Lc/c/a/a/l/x;

    new-instance v1, Lc/c/a/a/l/o$c;

    invoke-direct {v1, p0}, Lc/c/a/a/l/o$c;-><init>(Lc/c/a/a/l/o;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/l/x;->t0(Lc/c/a/a/l/w;)Z

    return-void

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
