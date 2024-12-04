.class public Lb/b/h/c$e;
.super Lb/b/g/e/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic m:Lb/b/h/c;


# direct methods
.method public constructor <init>(Lb/b/h/c;Landroid/content/Context;Lb/b/g/e/f;Landroid/view/View;Z)V
    .locals 7

    iput-object p1, p0, Lb/b/h/c$e;->m:Lb/b/h/c;

    const v5, 0x7f030020

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lb/b/g/e/j;-><init>(Landroid/content/Context;Lb/b/g/e/f;Landroid/view/View;ZII)V

    const p2, 0x800005

    .line 2
    iput p2, p0, Lb/b/g/e/j;->g:I

    .line 3
    iget-object p1, p1, Lb/b/h/c;->y:Lb/b/h/c$f;

    invoke-virtual {p0, p1}, Lb/b/g/e/j;->d(Lb/b/g/e/k$a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lb/b/h/c$e;->m:Lb/b/h/c;

    .line 1
    iget-object v0, v0, Lb/b/g/e/b;->d:Lb/b/g/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lb/b/g/e/f;->c(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/h/c$e;->m:Lb/b/h/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/h/c;->u:Lb/b/h/c$e;

    invoke-super {p0}, Lb/b/g/e/j;->c()V

    return-void
.end method
