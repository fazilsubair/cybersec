.class public Lb/k/b/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/f;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/f;


# direct methods
.method public constructor <init>(Lb/k/b/f;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/f$a;->b:Lb/k/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/k/b/f$a;->b:Lb/k/b/f;

    iget-object v1, v0, Lb/k/b/f;->a:Landroid/view/ViewGroup;

    iget-object v0, v0, Lb/k/b/f;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lb/k/b/f$a;->b:Lb/k/b/f;

    iget-object v0, v0, Lb/k/b/f;->c:Lb/k/b/c$b;

    invoke-virtual {v0}, Lb/k/b/c$c;->a()V

    return-void
.end method
