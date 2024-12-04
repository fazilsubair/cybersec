.class public Lb/h/j/x$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/j/x;->d(Landroid/view/View;Lb/h/j/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/h/j/y;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/h/j/x;Lb/h/j/y;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/h/j/x$a;->a:Lb/h/j/y;

    iput-object p3, p0, Lb/h/j/x$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/h/j/x$a;->a:Lb/h/j/y;

    iget-object v0, p0, Lb/h/j/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/j/y;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/h/j/x$a;->a:Lb/h/j/y;

    iget-object v0, p0, Lb/h/j/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/j/y;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lb/h/j/x$a;->a:Lb/h/j/y;

    iget-object v0, p0, Lb/h/j/x$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/j/y;->b(Landroid/view/View;)V

    return-void
.end method
