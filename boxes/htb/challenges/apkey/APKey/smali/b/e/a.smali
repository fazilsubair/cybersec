.class public Lb/e/a;
.super Lb/e/f;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/e/f<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public i:Lb/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/e<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/e/f;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb/e/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lb/e/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lb/e/f;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iget v0, p1, Lb/e/f;->d:I

    iget v1, p0, Lb/e/f;->d:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lb/e/f;->b(I)V

    iget v1, p0, Lb/e/f;->d:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p1, Lb/e/f;->b:[I

    iget-object v3, p0, Lb/e/f;->b:[I

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lb/e/f;->c:[Ljava/lang/Object;

    iget-object v1, p0, Lb/e/f;->c:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lb/e/f;->d:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lb/e/f;->h(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lb/e/f;->k(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/e/a;->l()Lb/e/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lb/e/e;->a:Lb/e/e$b;

    if-nez v1, :cond_0

    new-instance v1, Lb/e/e$b;

    invoke-direct {v1, v0}, Lb/e/e$b;-><init>(Lb/e/e;)V

    iput-object v1, v0, Lb/e/e;->a:Lb/e/e$b;

    :cond_0
    iget-object v0, v0, Lb/e/e;->a:Lb/e/e$b;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/e/a;->l()Lb/e/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lb/e/e;->b:Lb/e/e$c;

    if-nez v1, :cond_0

    new-instance v1, Lb/e/e$c;

    invoke-direct {v1, v0}, Lb/e/e$c;-><init>(Lb/e/e;)V

    iput-object v1, v0, Lb/e/e;->b:Lb/e/e$c;

    :cond_0
    iget-object v0, v0, Lb/e/e;->b:Lb/e/e$c;

    return-object v0
.end method

.method public final l()Lb/e/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/e/a;->i:Lb/e/e;

    if-nez v0, :cond_0

    new-instance v0, Lb/e/a$a;

    invoke-direct {v0, p0}, Lb/e/a$a;-><init>(Lb/e/a;)V

    iput-object v0, p0, Lb/e/a;->i:Lb/e/e;

    :cond_0
    iget-object v0, p0, Lb/e/a;->i:Lb/e/e;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lb/e/f;->d:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lb/e/f;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/e/a;->l()Lb/e/e;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lb/e/e;->c:Lb/e/e$e;

    if-nez v1, :cond_0

    new-instance v1, Lb/e/e$e;

    invoke-direct {v1, v0}, Lb/e/e$e;-><init>(Lb/e/e;)V

    iput-object v1, v0, Lb/e/e;->c:Lb/e/e$e;

    :cond_0
    iget-object v0, v0, Lb/e/e;->c:Lb/e/e$e;

    return-object v0
.end method
