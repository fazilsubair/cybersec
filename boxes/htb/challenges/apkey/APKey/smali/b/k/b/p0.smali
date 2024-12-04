.class public Lb/k/b/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/k/b/m;

.field public final synthetic c:Lb/k/b/m;

.field public final synthetic d:Z

.field public final synthetic e:Lb/e/a;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lb/k/b/t0;

.field public final synthetic h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Landroid/view/View;Lb/k/b/t0;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/p0;->b:Lb/k/b/m;

    iput-object p2, p0, Lb/k/b/p0;->c:Lb/k/b/m;

    iput-boolean p3, p0, Lb/k/b/p0;->d:Z

    iput-object p4, p0, Lb/k/b/p0;->e:Lb/e/a;

    iput-object p5, p0, Lb/k/b/p0;->f:Landroid/view/View;

    iput-object p6, p0, Lb/k/b/p0;->g:Lb/k/b/t0;

    iput-object p7, p0, Lb/k/b/p0;->h:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lb/k/b/p0;->b:Lb/k/b/m;

    iget-object v1, p0, Lb/k/b/p0;->c:Lb/k/b/m;

    iget-boolean v2, p0, Lb/k/b/p0;->d:Z

    iget-object v3, p0, Lb/k/b/p0;->e:Lb/e/a;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lb/k/b/r0;->c(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Z)V

    iget-object v0, p0, Lb/k/b/p0;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/k/b/p0;->g:Lb/k/b/t0;

    iget-object v2, p0, Lb/k/b/p0;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lb/k/b/t0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
