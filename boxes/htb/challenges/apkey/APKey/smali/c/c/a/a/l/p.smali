.class public Lc/c/a/a/l/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/c/a/a/l/o;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/o;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/p;->b:Lc/c/a/a/l/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/l/p;->b:Lc/c/a/a/l/o;

    .line 1
    iget-object v0, p1, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    .line 2
    iget-object p1, p1, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    .line 3
    invoke-interface {p1}, Lc/c/a/a/l/d;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lc/c/a/a/l/p;->b:Lc/c/a/a/l/o;

    .line 4
    iget-object p1, p1, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->toggle()V

    iget-object p1, p0, Lc/c/a/a/l/p;->b:Lc/c/a/a/l/o;

    .line 6
    iget-object v0, p1, Lc/c/a/a/l/o;->x0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 7
    invoke-virtual {p1, v0}, Lc/c/a/a/l/o;->B0(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 8
    iget-object p1, p0, Lc/c/a/a/l/p;->b:Lc/c/a/a/l/o;

    .line 9
    invoke-virtual {p1}, Lc/c/a/a/l/o;->z0()V

    return-void
.end method
