.class public Lb/h/j/b0$i;
.super Lb/h/j/b0$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/j/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public n:Lb/h/d/b;


# direct methods
.method public constructor <init>(Lb/h/j/b0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/j/b0$h;-><init>(Lb/h/j/b0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/j/b0$i;->n:Lb/h/d/b;

    return-void
.end method


# virtual methods
.method public f()Lb/h/d/b;
    .locals 4

    iget-object v0, p0, Lb/h/j/b0$i;->n:Lb/h/d/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v0}, Lb/h/d/b;->a(IIII)Lb/h/d/b;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lb/h/j/b0$i;->n:Lb/h/d/b;

    :cond_0
    iget-object v0, p0, Lb/h/j/b0$i;->n:Lb/h/d/b;

    return-object v0
.end method

.method public i(IIII)Lb/h/j/b0;
    .locals 1

    iget-object v0, p0, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/h/j/b0;->h(Landroid/view/WindowInsets;)Lb/h/j/b0;

    move-result-object p1

    return-object p1
.end method

.method public n(Lb/h/d/b;)V
    .locals 0

    return-void
.end method
