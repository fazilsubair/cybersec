.class public Lc/c/a/a/l/r$a;
.super Lc/c/a/a/l/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/l/r;->O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/l/w<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/l/r;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/r;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/r$a;->a:Lc/c/a/a/l/r;

    invoke-direct {p0}, Lc/c/a/a/l/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/l/r$a;->a:Lc/c/a/a/l/r;

    iget-object v0, v0, Lc/c/a/a/l/x;->U:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/a/l/w;

    invoke-virtual {v1, p1}, Lc/c/a/a/l/w;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
