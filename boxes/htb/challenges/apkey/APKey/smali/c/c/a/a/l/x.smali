.class public abstract Lc/c/a/a/l/x;
.super Lb/k/b/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lb/k/b/m;"
    }
.end annotation


# instance fields
.field public final U:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lc/c/a/a/l/w<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/k/b/m;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc/c/a/a/l/x;->U:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public t0(Lc/c/a/a/l/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/l/w<",
            "TS;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/l/x;->U:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
