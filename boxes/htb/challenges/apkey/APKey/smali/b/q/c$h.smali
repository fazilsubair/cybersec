.class public Lb/q/c$h;
.super Lb/q/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->k(Landroid/view/ViewGroup;Lb/q/s;Lb/q/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lb/q/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p2, p0, Lb/q/c$h;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lb/q/n;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/q/c$h;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lb/q/k;)V
    .locals 1

    iget-object p1, p0, Lb/q/c$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/q/x;->b(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/q/c$h;->a:Z

    return-void
.end method

.method public c(Lb/q/k;)V
    .locals 2

    iget-boolean v0, p0, Lb/q/c$h;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/q/c$h;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/q/x;->b(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Lb/q/k;->v(Lb/q/k$d;)Lb/q/k;

    return-void
.end method

.method public d(Lb/q/k;)V
    .locals 1

    iget-object p1, p0, Lb/q/c$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/q/x;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public e(Lb/q/k;)V
    .locals 1

    iget-object p1, p0, Lb/q/c$h;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/q/x;->b(Landroid/view/ViewGroup;Z)V

    return-void
.end method
