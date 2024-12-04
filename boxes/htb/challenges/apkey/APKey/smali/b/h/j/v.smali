.class public Lb/h/j/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public a:Lb/h/j/b0;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lb/h/j/l;


# direct methods
.method public constructor <init>(Landroid/view/View;Lb/h/j/l;)V
    .locals 0

    iput-object p1, p0, Lb/h/j/v;->b:Landroid/view/View;

    iput-object p2, p0, Lb/h/j/v;->c:Lb/h/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/h/j/v;->a:Lb/h/j/b0;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    invoke-static {p2, p1}, Lb/h/j/b0;->i(Landroid/view/WindowInsets;Landroid/view/View;)Lb/h/j/b0;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lb/h/j/v;->b:Landroid/view/View;

    const v4, 0x7f080173

    .line 1
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v4, :cond_0

    invoke-interface {v4, v3, p2}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    :cond_0
    iget-object p2, p0, Lb/h/j/v;->a:Lb/h/j/b0;

    invoke-virtual {v0, p2}, Lb/h/j/b0;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/h/j/v;->c:Lb/h/j/l;

    invoke-interface {p2, p1, v0}, Lb/h/j/l;->a(Landroid/view/View;Lb/h/j/b0;)Lb/h/j/b0;

    move-result-object p1

    invoke-virtual {p1}, Lb/h/j/b0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_1
    iput-object v0, p0, Lb/h/j/v;->a:Lb/h/j/b0;

    iget-object p2, p0, Lb/h/j/v;->c:Lb/h/j/l;

    invoke-interface {p2, p1, v0}, Lb/h/j/l;->a(Landroid/view/View;Lb/h/j/b0;)Lb/h/j/b0;

    move-result-object p2

    if-lt v1, v2, :cond_2

    invoke-virtual {p2}, Lb/h/j/b0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    sget-object v0, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x14

    if-lt v1, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    .line 4
    :goto_0
    invoke-virtual {p2}, Lb/h/j/b0;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
