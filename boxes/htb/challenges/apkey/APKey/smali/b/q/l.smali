.class public Lb/q/l;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lb/e/a;

.field public final synthetic b:Lb/q/k;


# direct methods
.method public constructor <init>(Lb/q/k;Lb/e/a;)V
    .locals 0

    iput-object p1, p0, Lb/q/l;->b:Lb/q/k;

    iput-object p2, p0, Lb/q/l;->a:Lb/e/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lb/q/l;->a:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/q/l;->b:Lb/q/k;

    iget-object v0, v0, Lb/q/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lb/q/l;->b:Lb/q/k;

    iget-object v0, v0, Lb/q/k;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
