.class public Lb/k/b/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/c;->b(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lb/k/b/y0$d;

.field public final synthetic d:Lb/k/b/c;


# direct methods
.method public constructor <init>(Lb/k/b/c;Ljava/util/List;Lb/k/b/y0$d;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/c$a;->d:Lb/k/b/c;

    iput-object p2, p0, Lb/k/b/c$a;->b:Ljava/util/List;

    iput-object p3, p0, Lb/k/b/c$a;->c:Lb/k/b/y0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/k/b/c$a;->b:Ljava/util/List;

    iget-object v1, p0, Lb/k/b/c$a;->c:Lb/k/b/y0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/k/b/c$a;->b:Ljava/util/List;

    iget-object v1, p0, Lb/k/b/c$a;->c:Lb/k/b/y0$d;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/k/b/c$a;->d:Lb/k/b/c;

    iget-object v1, p0, Lb/k/b/c$a;->c:Lb/k/b/y0$d;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, v1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 3
    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    .line 4
    iget-object v1, v1, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    .line 5
    invoke-virtual {v1, v0}, Lb/k/b/y0$d$c;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
