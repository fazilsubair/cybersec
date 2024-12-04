.class public Lb/b/g/e/h$b;
.super Lb/b/g/e/h$a;
.source ""

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public d:Lb/h/j/b$a;


# direct methods
.method public constructor <init>(Lb/b/g/e/h;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/b/g/e/h$a;-><init>(Lb/b/g/e/h;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public d(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public h(Lb/h/j/b$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/g/e/h$b;->d:Lb/h/j/b$a;

    iget-object p1, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Lb/b/g/e/h$b;->d:Lb/h/j/b$a;

    if-eqz p1, :cond_0

    check-cast p1, Lb/b/g/e/g$a;

    .line 1
    iget-object p1, p1, Lb/b/g/e/g$a;->a:Lb/b/g/e/g;

    iget-object p1, p1, Lb/b/g/e/g;->n:Lb/b/g/e/f;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lb/b/g/e/f;->h:Z

    invoke-virtual {p1, v0}, Lb/b/g/e/f;->p(Z)V

    :cond_0
    return-void
.end method
