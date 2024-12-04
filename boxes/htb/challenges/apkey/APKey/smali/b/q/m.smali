.class public Lb/q/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lb/q/k;


# direct methods
.method public constructor <init>(Lb/q/k;)V
    .locals 0

    iput-object p1, p0, Lb/q/m;->a:Lb/q/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lb/q/m;->a:Lb/q/k;

    invoke-virtual {v0}, Lb/q/k;->m()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
