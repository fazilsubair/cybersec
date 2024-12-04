.class public Lb/b/h/q$a;
.super Lb/h/c/b/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/h/q;->m(Landroid/content/Context;Lb/b/h/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Lb/b/h/q;


# direct methods
.method public constructor <init>(Lb/b/h/q;IILjava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/q$a;->d:Lb/b/h/q;

    iput p2, p0, Lb/b/h/q$a;->a:I

    iput p3, p0, Lb/b/h/q$a;->b:I

    iput-object p4, p0, Lb/b/h/q$a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lb/h/c/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget v0, p0, Lb/b/h/q$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lb/b/h/q$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lb/b/h/q$a;->d:Lb/b/h/q;

    iget-object v1, p0, Lb/b/h/q$a;->c:Ljava/lang/ref/WeakReference;

    .line 1
    iget-boolean v2, v0, Lb/b/h/q;->m:Z

    if-eqz v2, :cond_3

    iput-object p1, v0, Lb/b/h/q;->l:Landroid/graphics/Typeface;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lb/h/j/q;->t(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lb/b/h/q;->j:I

    new-instance v3, Lb/b/h/r;

    invoke-direct {v3, v0, v1, p1, v2}, Lb/b/h/r;-><init>(Lb/b/h/q;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    iget v0, v0, Lb/b/h/q;->j:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    :goto_1
    return-void
.end method
