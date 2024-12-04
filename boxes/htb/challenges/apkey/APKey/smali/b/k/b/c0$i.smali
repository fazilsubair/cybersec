.class public Lb/k/b/c0$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/c0;->b(Lb/k/b/z;Lb/k/b/v;Lb/k/b/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/e/b<",
        "Lb/a/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/k/b/c0;


# direct methods
.method public constructor <init>(Lb/k/b/c0;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/c0$i;->a:Lb/k/b/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lb/a/e/a;

    .line 1
    iget-object v0, p0, Lb/k/b/c0$i;->a:Lb/k/b/c0;

    iget-object v0, v0, Lb/k/b/c0;->z:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k/b/c0$k;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Activities were started for result for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lb/k/b/c0$k;->b:Ljava/lang/String;

    iget v0, v0, Lb/k/b/c0$k;->c:I

    iget-object v2, p0, Lb/k/b/c0$i;->a:Lb/k/b/c0;

    .line 2
    iget-object v2, v2, Lb/k/b/c0;->c:Lb/k/b/j0;

    .line 3
    invoke-virtual {v2, v1}, Lb/k/b/j0;->e(Ljava/lang/String;)Lb/k/b/m;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result delivered for unknown Fragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p1, Lb/a/e/a;->b:I

    .line 5
    iget-object p1, p1, Lb/a/e/a;->c:Landroid/content/Intent;

    .line 6
    invoke-virtual {v2, v0, v1, p1}, Lb/k/b/m;->G(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method
