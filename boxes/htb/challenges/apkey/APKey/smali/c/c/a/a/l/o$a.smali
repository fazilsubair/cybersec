.class public Lc/c/a/a/l/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/l/o;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/c/a/a/l/o;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/o;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/o$a;->b:Lc/c/a/a/l/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/c/a/a/l/o$a;->b:Lc/c/a/a/l/o;

    .line 1
    iget-object p1, p1, Lc/c/a/a/l/o;->j0:Ljava/util/LinkedHashSet;

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/q;

    iget-object v1, p0, Lc/c/a/a/l/o$a;->b:Lc/c/a/a/l/o;

    .line 3
    iget-object v1, v1, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    invoke-interface {v1}, Lc/c/a/a/l/d;->a()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Lc/c/a/a/l/q;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/c/a/a/l/o$a;->b:Lc/c/a/a/l/o;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, v0}, Lb/k/b/l;->t0(ZZ)V

    return-void
.end method
