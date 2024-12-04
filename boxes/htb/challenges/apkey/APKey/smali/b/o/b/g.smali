.class public Lb/o/b/g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$z;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/ViewPropertyAnimator;

.field public final synthetic d:Lb/o/b/k;


# direct methods
.method public constructor <init>(Lb/o/b/k;Landroidx/recyclerview/widget/RecyclerView$z;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lb/o/b/g;->d:Lb/o/b/k;

    iput-object p2, p0, Lb/o/b/g;->a:Landroidx/recyclerview/widget/RecyclerView$z;

    iput-object p3, p0, Lb/o/b/g;->b:Landroid/view/View;

    iput-object p4, p0, Lb/o/b/g;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/o/b/g;->b:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/o/b/g;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lb/o/b/g;->d:Lb/o/b/k;

    iget-object v0, p0, Lb/o/b/g;->a:Landroidx/recyclerview/widget/RecyclerView$z;

    .line 1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->c(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 2
    iget-object p1, p0, Lb/o/b/g;->d:Lb/o/b/k;

    iget-object p1, p1, Lb/o/b/k;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Lb/o/b/g;->a:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/o/b/g;->d:Lb/o/b/k;

    invoke-virtual {p1}, Lb/o/b/k;->k()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lb/o/b/g;->d:Lb/o/b/k;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
