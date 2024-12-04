.class public Lb/k/b/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/r;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/r;


# direct methods
.method public constructor <init>(Lb/k/b/r;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/r$a;->b:Lb/k/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/k/b/r$a;->b:Lb/k/b/r;

    iget-object v0, v0, Lb/k/b/r;->b:Lb/k/b/m;

    invoke-virtual {v0}, Lb/k/b/m;->h()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k/b/r$a;->b:Lb/k/b/r;

    iget-object v0, v0, Lb/k/b/r;->b:Lb/k/b/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/k/b/m;->k0(Landroid/view/View;)V

    iget-object v0, p0, Lb/k/b/r$a;->b:Lb/k/b/r;

    iget-object v1, v0, Lb/k/b/r;->c:Lb/k/b/r0$a;

    iget-object v2, v0, Lb/k/b/r;->b:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/r;->d:Lb/h/f/a;

    check-cast v1, Lb/k/b/c0$d;

    invoke-virtual {v1, v2, v0}, Lb/k/b/c0$d;->a(Lb/k/b/m;Lb/h/f/a;)V

    :cond_0
    return-void
.end method
