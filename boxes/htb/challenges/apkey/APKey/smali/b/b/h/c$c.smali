.class public Lb/b/h/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Lb/b/h/c$e;

.field public final synthetic c:Lb/b/h/c;


# direct methods
.method public constructor <init>(Lb/b/h/c;Lb/b/h/c$e;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/c$c;->c:Lb/b/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/h/c$c;->b:Lb/b/h/c$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/h/c$c;->c:Lb/b/h/c;

    .line 1
    iget-object v0, v0, Lb/b/g/e/b;->d:Lb/b/g/e/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lb/b/g/e/f;->e:Lb/b/g/e/f$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lb/b/g/e/f$a;->a(Lb/b/g/e/f;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lb/b/h/c$c;->c:Lb/b/h/c;

    .line 4
    iget-object v0, v0, Lb/b/g/e/b;->i:Lb/b/g/e/l;

    .line 5
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/h/c$c;->b:Lb/b/h/c$e;

    invoke-virtual {v0}, Lb/b/g/e/j;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/h/c$c;->c:Lb/b/h/c;

    iget-object v1, p0, Lb/b/h/c$c;->b:Lb/b/h/c$e;

    iput-object v1, v0, Lb/b/h/c;->u:Lb/b/h/c$e;

    :cond_1
    iget-object v0, p0, Lb/b/h/c$c;->c:Lb/b/h/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/h/c;->w:Lb/b/h/c$c;

    return-void
.end method
