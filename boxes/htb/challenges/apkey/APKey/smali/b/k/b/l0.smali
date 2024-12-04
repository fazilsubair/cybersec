.class public Lb/k/b/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/k/b/r0$a;

.field public final synthetic c:Lb/k/b/m;

.field public final synthetic d:Lb/h/f/a;


# direct methods
.method public constructor <init>(Lb/k/b/r0$a;Lb/k/b/m;Lb/h/f/a;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/l0;->b:Lb/k/b/r0$a;

    iput-object p2, p0, Lb/k/b/l0;->c:Lb/k/b/m;

    iput-object p3, p0, Lb/k/b/l0;->d:Lb/h/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/k/b/l0;->b:Lb/k/b/r0$a;

    iget-object v1, p0, Lb/k/b/l0;->c:Lb/k/b/m;

    iget-object v2, p0, Lb/k/b/l0;->d:Lb/h/f/a;

    check-cast v0, Lb/k/b/c0$d;

    invoke-virtual {v0, v1, v2}, Lb/k/b/c0$d;->a(Lb/k/b/m;Lb/h/f/a;)V

    return-void
.end method
