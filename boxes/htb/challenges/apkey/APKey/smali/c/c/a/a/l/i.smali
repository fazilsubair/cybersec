.class public Lc/c/a/a/l/i;
.super Lb/h/j/a;
.source ""


# instance fields
.field public final synthetic d:Lc/c/a/a/l/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/g;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/i;->d:Lc/c/a/a/l/g;

    invoke-direct {p0}, Lb/h/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lb/h/j/c0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/j/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lb/h/j/c0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lc/c/a/a/l/i;->d:Lc/c/a/a/l/g;

    .line 5
    iget-object p1, p1, Lc/c/a/a/l/g;->e0:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/c/a/a/l/i;->d:Lc/c/a/a/l/g;

    const v0, 0x7f0e005c

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/c/a/a/l/i;->d:Lc/c/a/a/l/g;

    const v0, 0x7f0e005a

    :goto_0
    invoke-virtual {p1, v0}, Lb/k/b/m;->B(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/h/j/c0/b;->k(Ljava/lang/CharSequence;)V

    return-void
.end method
