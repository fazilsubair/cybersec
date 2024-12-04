.class public Lb/m/h;
.super Lb/m/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/m/h$a;
    }
.end annotation


# instance fields
.field public a:Lb/c/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/b/a<",
            "Lb/m/f;",
            "Lb/m/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/m/d$b;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/m/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/m/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method public constructor <init>(Lb/m/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/m/d;-><init>()V

    new-instance v0, Lb/c/a/b/a;

    invoke-direct {v0}, Lb/c/a/b/a;-><init>()V

    iput-object v0, p0, Lb/m/h;->a:Lb/c/a/b/a;

    const/4 v0, 0x0

    iput v0, p0, Lb/m/h;->d:I

    iput-boolean v0, p0, Lb/m/h;->e:Z

    iput-boolean v0, p0, Lb/m/h;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/m/h;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Lb/m/d$b;->c:Lb/m/d$b;

    iput-object p1, p0, Lb/m/h;->b:Lb/m/d$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/m/h;->h:Z

    return-void
.end method

.method public static e(Lb/m/d$b;Lb/m/d$b;)Lb/m/d$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lb/m/f;)V
    .locals 5

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Lb/m/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lb/m/h;->b:Lb/m/d$b;

    sget-object v1, Lb/m/d$b;->b:Lb/m/d$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lb/m/d$b;->c:Lb/m/d$b;

    :goto_0
    new-instance v0, Lb/m/h$a;

    invoke-direct {v0, p1, v1}, Lb/m/h$a;-><init>(Lb/m/f;Lb/m/d$b;)V

    iget-object v1, p0, Lb/m/h;->a:Lb/c/a/b/a;

    invoke-virtual {v1, p1, v0}, Lb/c/a/b/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/m/h$a;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lb/m/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/m/g;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Lb/m/h;->d:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lb/m/h;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, p1}, Lb/m/h;->b(Lb/m/f;)Lb/m/d$b;

    move-result-object v3

    iget v4, p0, Lb/m/h;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lb/m/h;->d:I

    :goto_3
    iget-object v4, v0, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lb/m/h;->a:Lb/c/a/b/a;

    .line 1
    iget-object v3, v3, Lb/c/a/b/a;->f:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2
    iget-object v3, v0, Lb/m/h$a;->a:Lb/m/d$b;

    .line 3
    iget-object v4, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v3, v0, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-static {v3}, Lb/m/d$a;->b(Lb/m/d$b;)Lb/m/d$a;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1, v3}, Lb/m/h$a;->a(Lb/m/g;Lb/m/d$a;)V

    invoke-virtual {p0}, Lb/m/h;->g()V

    invoke-virtual {p0, p1}, Lb/m/h;->b(Lb/m/f;)Lb/m/d$b;

    move-result-object v3

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lb/m/h;->h()V

    :cond_7
    iget p1, p0, Lb/m/h;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/m/h;->d:I

    return-void
.end method

.method public final b(Lb/m/f;)Lb/m/d$b;
    .locals 3

    iget-object v0, p0, Lb/m/h;->a:Lb/c/a/b/a;

    .line 1
    iget-object v1, v0, Lb/c/a/b/a;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lb/c/a/b/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/c/a/b/b$c;

    iget-object p1, p1, Lb/c/a/b/b$c;->e:Lb/c/a/b/b$c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lb/c/a/b/b$c;->c:Ljava/lang/Object;

    .line 4
    check-cast p1, Lb/m/h$a;

    iget-object p1, p1, Lb/m/h$a;->a:Lb/m/d$b;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb/m/d$b;

    :cond_2
    iget-object v0, p0, Lb/m/h;->b:Lb/m/d$b;

    invoke-static {v0, p1}, Lb/m/h;->e(Lb/m/d$b;Lb/m/d$b;)Lb/m/d$b;

    move-result-object p1

    invoke-static {p1, v2}, Lb/m/h;->e(Lb/m/d$b;Lb/m/d$b;)Lb/m/d$b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-boolean v0, p0, Lb/m/h;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lb/c/a/a/a;->b()Lb/c/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    invoke-static {v1, p1, v2}, Lc/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lb/m/d$a;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Lb/m/h;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/m/d$a;->a()Lb/m/d$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/m/h;->f(Lb/m/d$b;)V

    return-void
.end method

.method public final f(Lb/m/d$b;)V
    .locals 1

    iget-object v0, p0, Lb/m/h;->b:Lb/m/d$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lb/m/h;->b:Lb/m/d$b;

    iget-boolean p1, p0, Lb/m/h;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lb/m/h;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lb/m/h;->e:Z

    invoke-virtual {p0}, Lb/m/h;->h()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/m/h;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lb/m/h;->f:Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Lb/m/h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/m/g;

    if-eqz v0, :cond_c

    .line 1
    :cond_0
    iget-object v1, p0, Lb/m/h;->a:Lb/c/a/b/a;

    .line 2
    iget v2, v1, Lb/c/a/b/b;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, v1, Lb/c/a/b/b;->b:Lb/c/a/b/b$c;

    .line 4
    iget-object v2, v2, Lb/c/a/b/b$c;->c:Ljava/lang/Object;

    .line 5
    check-cast v2, Lb/m/h$a;

    iget-object v2, v2, Lb/m/h$a;->a:Lb/m/d$b;

    .line 6
    iget-object v5, v1, Lb/c/a/b/b;->c:Lb/c/a/b/b$c;

    .line 7
    iget-object v5, v5, Lb/c/a/b/b$c;->c:Ljava/lang/Object;

    .line 8
    check-cast v5, Lb/m/h$a;

    iget-object v5, v5, Lb/m/h$a;->a:Lb/m/d$b;

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lb/m/h;->b:Lb/m/d$b;

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_0
    iput-boolean v4, p0, Lb/m/h;->f:Z

    if-nez v3, :cond_b

    iget-object v2, p0, Lb/m/h;->b:Lb/m/d$b;

    .line 10
    iget-object v1, v1, Lb/c/a/b/b;->b:Lb/c/a/b/b$c;

    .line 11
    iget-object v1, v1, Lb/c/a/b/b$c;->c:Ljava/lang/Object;

    .line 12
    check-cast v1, Lb/m/h$a;

    iget-object v1, v1, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_8

    .line 13
    iget-object v1, p0, Lb/m/h;->a:Lb/c/a/b/a;

    .line 14
    new-instance v2, Lb/c/a/b/b$b;

    iget-object v3, v1, Lb/c/a/b/b;->c:Lb/c/a/b/b$c;

    iget-object v4, v1, Lb/c/a/b/b;->b:Lb/c/a/b/b$c;

    invoke-direct {v2, v3, v4}, Lb/c/a/b/b$b;-><init>(Lb/c/a/b/b$c;Lb/c/a/b/b$c;)V

    iget-object v1, v1, Lb/c/a/b/b;->d:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    invoke-virtual {v2}, Lb/c/a/b/b$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lb/m/h;->f:Z

    if-nez v1, :cond_8

    invoke-virtual {v2}, Lb/c/a/b/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/m/h$a;

    :goto_1
    iget-object v4, v3, Lb/m/h$a;->a:Lb/m/d$b;

    iget-object v5, p0, Lb/m/h;->b:Lb/m/d$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lb/m/h;->f:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lb/m/h;->a:Lb/c/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lb/m/h$a;->a:Lb/m/d$b;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    sget-object v4, Lb/m/d$a;->ON_PAUSE:Lb/m/d$a;

    goto :goto_2

    :cond_5
    sget-object v4, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    goto :goto_2

    :cond_6
    sget-object v4, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    :goto_2
    if-eqz v4, :cond_7

    .line 17
    invoke-virtual {v4}, Lb/m/d$a;->a()Lb/m/d$b;

    move-result-object v5

    .line 18
    iget-object v6, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v3, v0, v4}, Lb/m/h$a;->a(Lb/m/g;Lb/m/d$a;)V

    invoke-virtual {p0}, Lb/m/h;->g()V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event down from "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_8
    iget-object v1, p0, Lb/m/h;->a:Lb/c/a/b/a;

    .line 21
    iget-object v1, v1, Lb/c/a/b/b;->c:Lb/c/a/b/b$c;

    .line 22
    iget-boolean v2, p0, Lb/m/h;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lb/m/h;->b:Lb/m/d$b;

    .line 23
    iget-object v1, v1, Lb/c/a/b/b$c;->c:Ljava/lang/Object;

    .line 24
    check-cast v1, Lb/m/h$a;

    iget-object v1, v1, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    iget-object v1, p0, Lb/m/h;->a:Lb/c/a/b/a;

    invoke-virtual {v1}, Lb/c/a/b/b;->b()Lb/c/a/b/b$d;

    move-result-object v1

    :cond_9
    invoke-virtual {v1}, Lb/c/a/b/b$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lb/m/h;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lb/c/a/b/b$d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/m/h$a;

    :goto_3
    iget-object v4, v3, Lb/m/h$a;->a:Lb/m/d$b;

    iget-object v5, p0, Lb/m/h;->b:Lb/m/d$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_9

    iget-boolean v4, p0, Lb/m/h;->f:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lb/m/h;->a:Lb/c/a/b/a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v3, Lb/m/h$a;->a:Lb/m/d$b;

    .line 26
    iget-object v5, p0, Lb/m/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v4, v3, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-static {v4}, Lb/m/d$a;->b(Lb/m/d$b;)Lb/m/d$a;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v0, v4}, Lb/m/h$a;->a(Lb/m/g;Lb/m/d$a;)V

    invoke-virtual {p0}, Lb/m/h;->g()V

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void

    .line 28
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
