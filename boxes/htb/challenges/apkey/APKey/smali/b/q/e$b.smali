.class public Lb/q/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/q/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/e;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lb/q/e;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p2, p0, Lb/q/e$b;->a:Landroid/view/View;

    iput-object p3, p0, Lb/q/e$b;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/q/k;)V
    .locals 0

    return-void
.end method

.method public b(Lb/q/k;)V
    .locals 0

    return-void
.end method

.method public c(Lb/q/k;)V
    .locals 3

    invoke-virtual {p1, p0}, Lb/q/k;->v(Lb/q/k$d;)Lb/q/k;

    iget-object p1, p0, Lb/q/e$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lb/q/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lb/q/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lb/q/k;)V
    .locals 0

    return-void
.end method

.method public e(Lb/q/k;)V
    .locals 0

    return-void
.end method
