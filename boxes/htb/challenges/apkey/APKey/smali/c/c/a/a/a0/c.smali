.class public Lc/c/a/a/a0/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/c/a/a/k/d;


# direct methods
.method public constructor <init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lc/c/a/a/k/d;)V
    .locals 0

    iput-object p2, p0, Lc/c/a/a/a0/c;->a:Lc/c/a/a/k/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/a0/c;->a:Lc/c/a/a/k/d;

    invoke-interface {p1}, Lc/c/a/a/k/d;->getRevealInfo()Lc/c/a/a/k/d$e;

    move-result-object p1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p1, Lc/c/a/a/k/d$e;->c:F

    iget-object v0, p0, Lc/c/a/a/a0/c;->a:Lc/c/a/a/k/d;

    invoke-interface {v0, p1}, Lc/c/a/a/k/d;->setRevealInfo(Lc/c/a/a/k/d$e;)V

    return-void
.end method
