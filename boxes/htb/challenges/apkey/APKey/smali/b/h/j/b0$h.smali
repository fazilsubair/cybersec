.class public Lb/h/j/b0$h;
.super Lb/h/j/b0$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/j/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# direct methods
.method public constructor <init>(Lb/h/j/b0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/h/j/b0$g;-><init>(Lb/h/j/b0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public a()Lb/h/j/b0;
    .locals 1

    iget-object v0, p0, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/h/j/b0;->h(Landroid/view/WindowInsets;)Lb/h/j/b0;

    move-result-object v0

    return-object v0
.end method

.method public e()Lb/h/j/d;
    .locals 2

    iget-object v0, p0, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lb/h/j/d;

    invoke-direct {v1, v0}, Lb/h/j/d;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb/h/j/b0$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb/h/j/b0$h;

    iget-object v1, p0, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    iget-object v3, p1, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/h/j/b0$f;->f:Lb/h/d/b;

    iget-object p1, p1, Lb/h/j/b0$f;->f:Lb/h/d/b;

    invoke-static {v1, p1}, La;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/h/j/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method
