.class public final Landroidx/lifecycle/SavedStateHandleController$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/p/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/p/c;)V
    .locals 8

    instance-of v0, p1, Lb/m/u;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lb/m/u;

    invoke-interface {v0}, Lb/m/u;->d()Lb/m/t;

    move-result-object v0

    invoke-interface {p1}, Lb/p/c;->c()Lb/p/a;

    move-result-object v1

    .line 1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lb/m/t;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lb/m/t;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/m/p;

    .line 4
    invoke-interface {p1}, Lb/m/g;->a()Lb/m/d;

    move-result-object v4

    const-string v5, "androidx.lifecycle.savedstate.vm.tag"

    .line 5
    iget-object v6, v3, Lb/m/p;->a:Ljava/util/Map;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    move-object v3, v7

    goto :goto_0

    :cond_1
    monitor-enter v6

    :try_start_0
    iget-object v3, v3, Lb/m/p;->a:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    check-cast v3, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz v3, :cond_0

    .line 7
    iget-boolean v5, v3, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    if-nez v5, :cond_0

    if-eqz v5, :cond_2

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already attached to lifecycleOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, v3, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-virtual {v4, v3}, Lb/m/d;->a(Lb/m/f;)V

    throw v7

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, v0, Lb/m/t;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-class p1, Landroidx/lifecycle/SavedStateHandleController$a;

    invoke-virtual {v1, p1}, Lb/p/a;->c(Ljava/lang/Class;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
