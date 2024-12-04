.class public abstract Lb/k/b/z;
.super Lb/k/b/v;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/k/b/v;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:Lb/k/b/c0;


# direct methods
.method public constructor <init>(Lb/k/b/p;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Lb/k/b/v;-><init>()V

    new-instance v1, Lb/k/b/d0;

    invoke-direct {v1}, Lb/k/b/d0;-><init>()V

    iput-object v1, p0, Lb/k/b/z;->e:Lb/k/b/c0;

    iput-object p1, p0, Lb/k/b/z;->b:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, Lb/h/b/a;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb/k/b/z;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, Lb/h/b/a;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lb/k/b/z;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract i()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract j()Landroid/view/LayoutInflater;
.end method

.method public abstract k(Lb/k/b/m;)Z
.end method

.method public abstract l()V
.end method
