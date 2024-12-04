.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$a;
    }
.end annotation


# instance fields
.field public a:Z


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 1

    sget-object v0, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-interface {p1}, Lb/m/g;->a()Lb/m/d;

    move-result-object p1

    check-cast p1, Lb/m/h;

    const-string p2, "removeObserver"

    .line 1
    invoke-virtual {p1, p2}, Lb/m/h;->c(Ljava/lang/String;)V

    iget-object p1, p1, Lb/m/h;->a:Lb/c/a/b/a;

    invoke-virtual {p1, p0}, Lb/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
