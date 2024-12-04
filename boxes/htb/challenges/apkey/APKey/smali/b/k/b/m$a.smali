.class public Lb/k/b/m$a;
.super Lb/k/b/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/m;->e()Lb/k/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/k/b/m;


# direct methods
.method public constructor <init>(Lb/k/b/m;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/m$a;->a:Lb/k/b/m;

    invoke-direct {p0}, Lb/k/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public g(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lb/k/b/m$a;->a:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/k/b/m$a;->a:Lb/k/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/k/b/m$a;->a:Lb/k/b/m;

    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
