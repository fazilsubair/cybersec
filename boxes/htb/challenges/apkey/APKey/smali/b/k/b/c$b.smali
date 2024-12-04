.class public Lb/k/b/c$b;
.super Lb/k/b/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lb/k/b/t;


# direct methods
.method public constructor <init>(Lb/k/b/y0$d;Lb/h/f/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/k/b/c$c;-><init>(Lb/k/b/y0$d;Lb/h/f/a;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/k/b/c$b;->d:Z

    iput-boolean p3, p0, Lb/k/b/c$b;->c:Z

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Lb/k/b/t;
    .locals 4

    iget-boolean v0, p0, Lb/k/b/c$b;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lb/k/b/c$b;->e:Lb/k/b/t;

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 2
    iget-object v1, v0, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 3
    iget-object v0, v0, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    .line 4
    sget-object v2, Lb/k/b/y0$d$c;->c:Lb/k/b/y0$d$c;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lb/k/b/c$b;->c:Z

    invoke-static {p1, v1, v0, v2}, Lb/h/b/a;->I(Landroid/content/Context;Lb/k/b/m;ZZ)Lb/k/b/t;

    move-result-object p1

    iput-object p1, p0, Lb/k/b/c$b;->e:Lb/k/b/t;

    iput-boolean v3, p0, Lb/k/b/c$b;->d:Z

    return-object p1
.end method
