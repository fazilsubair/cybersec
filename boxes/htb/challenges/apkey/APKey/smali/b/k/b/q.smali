.class public Lb/k/b/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/f/a$a;


# instance fields
.field public final synthetic a:Lb/k/b/m;


# direct methods
.method public constructor <init>(Lb/k/b/m;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/q;->a:Lb/k/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lb/k/b/q;->a:Lb/k/b/m;

    invoke-virtual {v0}, Lb/k/b/m;->h()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k/b/q;->a:Lb/k/b/m;

    invoke-virtual {v0}, Lb/k/b/m;->h()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lb/k/b/q;->a:Lb/k/b/m;

    invoke-virtual {v2, v1}, Lb/k/b/m;->k0(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lb/k/b/q;->a:Lb/k/b/m;

    invoke-virtual {v0, v1}, Lb/k/b/m;->m0(Landroid/animation/Animator;)V

    return-void
.end method
