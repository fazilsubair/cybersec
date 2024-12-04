.class public Lc/c/a/a/p/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc/c/a/a/p/d$f;

.field public final synthetic c:Lc/c/a/a/p/d;


# direct methods
.method public constructor <init>(Lc/c/a/a/p/d;ZLc/c/a/a/p/d$f;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/p/c;->c:Lc/c/a/a/p/d;

    iput-boolean p2, p0, Lc/c/a/a/p/c;->a:Z

    iput-object p3, p0, Lc/c/a/a/p/c;->b:Lc/c/a/a/p/d$f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/p/c;->c:Lc/c/a/a/p/d;

    const/4 v0, 0x0

    .line 1
    iput v0, p1, Lc/c/a/a/p/d;->o:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lc/c/a/a/p/d;->j:Landroid/animation/Animator;

    .line 3
    iget-object p1, p0, Lc/c/a/a/p/c;->b:Lc/c/a/a/p/d$f;

    if-eqz p1, :cond_0

    check-cast p1, Lc/c/a/a/p/a;

    .line 4
    iget-object v0, p1, Lc/c/a/a/p/a;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;

    iget-object p1, p1, Lc/c/a/a/p/a;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lc/c/a/a/p/c;->c:Lc/c/a/a/p/d;

    iget-object v0, v0, Lc/c/a/a/p/d;->s:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lc/c/a/a/p/c;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/q/p;->b(IZ)V

    iget-object v0, p0, Lc/c/a/a/p/c;->c:Lc/c/a/a/p/d;

    const/4 v1, 0x2

    .line 1
    iput v1, v0, Lc/c/a/a/p/d;->o:I

    .line 2
    iput-object p1, v0, Lc/c/a/a/p/d;->j:Landroid/animation/Animator;

    return-void
.end method
