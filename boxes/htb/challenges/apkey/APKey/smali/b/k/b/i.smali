.class public Lb/k/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/k/b/t0;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lb/k/b/c;Lb/k/b/t0;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p2, p0, Lb/k/b/i;->b:Lb/k/b/t0;

    iput-object p3, p0, Lb/k/b/i;->c:Landroid/view/View;

    iput-object p4, p0, Lb/k/b/i;->d:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/k/b/i;->b:Lb/k/b/t0;

    iget-object v1, p0, Lb/k/b/i;->c:Landroid/view/View;

    iget-object v2, p0, Lb/k/b/i;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lb/k/b/t0;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
