.class public Lb/q/d$a;
.super Lb/q/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/d;->K(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lb/q/d;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lb/q/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lb/q/n;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/q/k;)V
    .locals 3

    iget-object v0, p0, Lb/q/d$a;->a:Landroid/view/View;

    .line 1
    sget-object v1, Lb/q/a0;->a:Lb/q/g0;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v2}, Lb/q/g0;->e(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lb/q/d$a;->a:Landroid/view/View;

    .line 3
    invoke-virtual {v1, v0}, Lb/q/g0;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1, p0}, Lb/q/k;->v(Lb/q/k$d;)Lb/q/k;

    return-void
.end method
