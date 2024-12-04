.class public final Lc/c/a/a/q/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/j/l;


# instance fields
.field public final synthetic a:Lc/c/a/a/q/n;

.field public final synthetic b:Lc/c/a/a/q/o;


# direct methods
.method public constructor <init>(Lc/c/a/a/q/n;Lc/c/a/a/q/o;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/q/l;->a:Lc/c/a/a/q/n;

    iput-object p2, p0, Lc/c/a/a/q/l;->b:Lc/c/a/a/q/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/h/j/b0;)Lb/h/j/b0;
    .locals 2

    iget-object p1, p0, Lc/c/a/a/q/l;->a:Lc/c/a/a/q/n;

    iget-object v0, p0, Lc/c/a/a/q/l;->b:Lc/c/a/a/q/o;

    .line 1
    iget v0, v0, Lc/c/a/a/q/o;->a:I

    .line 2
    check-cast p1, Lc/c/a/a/g/b;

    .line 3
    iget-object v0, p1, Lc/c/a/a/g/b;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    iget-object v1, p2, Lb/h/j/b0;->a:Lb/h/j/b0$k;

    invoke-virtual {v1}, Lb/h/j/b0$k;->f()Lb/h/d/b;

    move-result-object v1

    .line 5
    iget v1, v1, Lb/h/d/b;->d:I

    .line 6
    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:I

    .line 7
    iget-object p1, p1, Lc/c/a/a/g/b;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S(Z)V

    return-object p2
.end method
