.class public Lb/b/h/c$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/g/e/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/h/c;


# direct methods
.method public constructor <init>(Lb/b/h/c;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/c$f;->a:Lb/b/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/g/e/f;Z)V
    .locals 2

    instance-of v0, p1, Lb/b/g/e/p;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lb/b/g/e/f;->j()Lb/b/g/e/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/g/e/f;->c(Z)V

    :cond_0
    iget-object v0, p0, Lb/b/h/c$f;->a:Lb/b/h/c;

    .line 1
    iget-object v0, v0, Lb/b/g/e/b;->f:Lb/b/g/e/k$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2}, Lb/b/g/e/k$a;->a(Lb/b/g/e/f;Z)V

    :cond_1
    return-void
.end method

.method public b(Lb/b/g/e/f;)Z
    .locals 3

    iget-object v0, p0, Lb/b/h/c$f;->a:Lb/b/h/c;

    .line 1
    iget-object v1, v0, Lb/b/g/e/b;->d:Lb/b/g/e/f;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    return v2

    .line 2
    :cond_0
    move-object v1, p1

    check-cast v1, Lb/b/g/e/p;

    .line 3
    iget-object v1, v1, Lb/b/g/e/p;->A:Lb/b/g/e/g;

    .line 4
    iget v1, v1, Lb/b/g/e/g;->a:I

    .line 5
    iget-object v0, v0, Lb/b/g/e/b;->f:Lb/b/g/e/k$a;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, p1}, Lb/b/g/e/k$a;->b(Lb/b/g/e/f;)Z

    move-result v2

    :cond_1
    return v2
.end method
