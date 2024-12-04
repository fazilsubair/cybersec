.class public Lb/h/j/b0$c;
.super Lb/h/j/b0$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/j/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/h/j/b0$e;-><init>()V

    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Lb/h/j/b0$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public constructor <init>(Lb/h/j/b0;)V
    .locals 1

    invoke-direct {p0}, Lb/h/j/b0$e;-><init>()V

    invoke-virtual {p1}, Lb/h/j/b0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    new-instance v0, Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Lb/h/j/b0$c;->b:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method public a()Lb/h/j/b0;
    .locals 3

    iget-object v0, p0, Lb/h/j/b0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/h/j/b0;->h(Landroid/view/WindowInsets;)Lb/h/j/b0;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lb/h/j/b0;->a:Lb/h/j/b0$k;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lb/h/j/b0$k;->l([Lb/h/d/b;)V

    return-object v0
.end method

.method public b(Lb/h/d/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/j/b0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/d/b;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method public c(Lb/h/d/b;)V
    .locals 1

    iget-object v0, p0, Lb/h/j/b0$c;->b:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Lb/h/d/b;->b()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
