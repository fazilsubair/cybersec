.class public Lb/k/b/a0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/a0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/i0;

.field public final synthetic c:Lb/k/b/a0;


# direct methods
.method public constructor <init>(Lb/k/b/a0;Lb/k/b/i0;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/a0$a;->c:Lb/k/b/a0;

    iput-object p2, p0, Lb/k/b/a0$a;->b:Lb/k/b/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/k/b/a0$a;->b:Lb/k/b/i0;

    .line 1
    iget-object v0, p1, Lb/k/b/i0;->c:Lb/k/b/m;

    .line 2
    invoke-virtual {p1}, Lb/k/b/i0;->k()V

    iget-object p1, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lb/k/b/a0$a;->c:Lb/k/b/a0;

    iget-object v0, v0, Lb/k/b/a0;->b:Lb/k/b/c0;

    invoke-static {p1, v0}, Lb/k/b/y0;->f(Landroid/view/ViewGroup;Lb/k/b/c0;)Lb/k/b/y0;

    move-result-object p1

    invoke-virtual {p1}, Lb/k/b/y0;->e()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
