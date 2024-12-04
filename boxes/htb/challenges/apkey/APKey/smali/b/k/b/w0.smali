.class public Lb/k/b/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/p/c;
.implements Lb/m/u;


# instance fields
.field public final b:Lb/m/t;

.field public c:Lb/m/h;

.field public d:Lb/p/b;


# direct methods
.method public constructor <init>(Lb/k/b/m;Lb/m/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/k/b/w0;->c:Lb/m/h;

    iput-object p1, p0, Lb/k/b/w0;->d:Lb/p/b;

    iput-object p2, p0, Lb/k/b/w0;->b:Lb/m/t;

    return-void
.end method


# virtual methods
.method public a()Lb/m/d;
    .locals 1

    invoke-virtual {p0}, Lb/k/b/w0;->f()V

    iget-object v0, p0, Lb/k/b/w0;->c:Lb/m/h;

    return-object v0
.end method

.method public c()Lb/p/a;
    .locals 1

    invoke-virtual {p0}, Lb/k/b/w0;->f()V

    iget-object v0, p0, Lb/k/b/w0;->d:Lb/p/b;

    .line 1
    iget-object v0, v0, Lb/p/b;->b:Lb/p/a;

    return-object v0
.end method

.method public d()Lb/m/t;
    .locals 1

    invoke-virtual {p0}, Lb/k/b/w0;->f()V

    iget-object v0, p0, Lb/k/b/w0;->b:Lb/m/t;

    return-object v0
.end method

.method public e(Lb/m/d$a;)V
    .locals 2

    iget-object v0, p0, Lb/k/b/w0;->c:Lb/m/h;

    const-string v1, "handleLifecycleEvent"

    .line 1
    invoke-virtual {v0, v1}, Lb/m/h;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/m/d$a;->a()Lb/m/d$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/m/h;->f(Lb/m/d$b;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lb/k/b/w0;->c:Lb/m/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/m/h;

    invoke-direct {v0, p0}, Lb/m/h;-><init>(Lb/m/g;)V

    iput-object v0, p0, Lb/k/b/w0;->c:Lb/m/h;

    .line 1
    new-instance v0, Lb/p/b;

    invoke-direct {v0, p0}, Lb/p/b;-><init>(Lb/p/c;)V

    .line 2
    iput-object v0, p0, Lb/k/b/w0;->d:Lb/p/b;

    :cond_0
    return-void
.end method
