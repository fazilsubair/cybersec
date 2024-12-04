.class public Lc/c/a/a/q/i$a;
.super Lc/c/a/a/r/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/q/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/q/i;


# direct methods
.method public constructor <init>(Lc/c/a/a/q/i;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/q/i$a;->a:Lc/c/a/a/q/i;

    invoke-direct {p0}, Lc/c/a/a/r/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/q/i$a;->a:Lc/c/a/a/q/i;

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lc/c/a/a/q/i;->d:Z

    .line 2
    iget-object p1, p1, Lc/c/a/a/q/i;->e:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/q/i$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/a/q/i$b;->a()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lc/c/a/a/q/i$a;->a:Lc/c/a/a/q/i;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lc/c/a/a/q/i;->d:Z

    .line 2
    iget-object p1, p1, Lc/c/a/a/q/i;->e:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/q/i$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lc/c/a/a/q/i$b;->a()V

    :cond_1
    return-void
.end method
