.class public abstract Lc/c/a/a/p/d$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "h"
.end annotation


# instance fields
.field public a:Z

.field public b:F

.field public final synthetic c:Lc/c/a/a/p/d;


# direct methods
.method public constructor <init>(Lc/c/a/a/p/d;Lc/c/a/a/p/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/a/p/d$h;->c:Lc/c/a/a/p/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()F
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lc/c/a/a/p/d$h;->c:Lc/c/a/a/p/d;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lc/c/a/a/p/d$h;->a:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/p/d$h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/p/d$h;->c:Lc/c/a/a/p/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lc/c/a/a/p/d$h;->a()F

    move-result v0

    iput v0, p0, Lc/c/a/a/p/d$h;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/p/d$h;->a:Z

    :cond_0
    iget-object v0, p0, Lc/c/a/a/p/d$h;->c:Lc/c/a/a/p/d;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
