.class public Lcom/google/android/material/behavior/SwipeDismissBehavior$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final b:Landroid/view/View;

.field public final c:Z

.field public final synthetic d:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lb/j/b/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/j/b/e;->i(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->b:Landroid/view/View;

    .line 1
    sget-object v1, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;->d:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
