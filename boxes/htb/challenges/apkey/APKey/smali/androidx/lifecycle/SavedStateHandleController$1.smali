.class public Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# instance fields
.field public final synthetic a:Lb/m/d;

.field public final synthetic b:Lb/p/a;


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 0

    sget-object p1, Lb/m/d$a;->ON_START:Lb/m/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->a:Lb/m/d;

    check-cast p1, Lb/m/h;

    const-string p2, "removeObserver"

    .line 1
    invoke-virtual {p1, p2}, Lb/m/h;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lb/m/h;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->b:Lb/p/a;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {p1, p2}, Lb/p/a;->c(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
