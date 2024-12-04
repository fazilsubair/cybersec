.class public final Lc/c/a/a/l/r;
.super Lc/c/a/a/l/x;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/l/x<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public V:I

.field public W:Lc/c/a/a/l/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/l/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public X:Lc/c/a/a/l/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/l/x;-><init>()V

    return-void
.end method


# virtual methods
.method public L(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/k/b/m;->L(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/k/b/m;->g:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/c/a/a/l/r;->V:I

    const-string v0, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/c/a/a/l/d;

    iput-object v0, p0, Lc/c/a/a/l/r;->W:Lc/c/a/a/l/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/c/a/a/l/a;

    iput-object p1, p0, Lc/c/a/a/l/r;->X:Lc/c/a/a/l/a;

    return-void
.end method

.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lb/k/b/m;->j()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lc/c/a/a/l/r;->V:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v3, p0, Lc/c/a/a/l/r;->W:Lc/c/a/a/l/d;

    iget-object v7, p0, Lc/c/a/a/l/r;->X:Lc/c/a/a/l/a;

    new-instance v8, Lc/c/a/a/l/r$a;

    invoke-direct {v8, p0}, Lc/c/a/a/l/r$a;-><init>(Lc/c/a/a/l/r;)V

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v3 .. v8}, Lc/c/a/a/l/d;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lc/c/a/a/l/a;Lc/c/a/a/l/w;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public Z(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lc/c/a/a/l/r;->V:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/c/a/a/l/r;->W:Lc/c/a/a/l/d;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/c/a/a/l/r;->X:Lc/c/a/a/l/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
