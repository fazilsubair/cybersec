.class public Lb/m/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/m/d$b;

.field public b:Lb/m/e;


# direct methods
.method public constructor <init>(Lb/m/f;Lb/m/d$b;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lb/m/j;->a:Ljava/util/Map;

    instance-of v0, p1, Lb/m/e;

    instance-of v1, p1, Lb/m/b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    move-object v1, p1

    check-cast v1, Lb/m/b;

    check-cast p1, Lb/m/e;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Lb/m/b;Lb/m/e;)V

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Landroidx/lifecycle/FullLifecycleObserverAdapter;

    check-cast p1, Lb/m/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/FullLifecycleObserverAdapter;-><init>(Lb/m/b;Lb/m/e;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lb/m/e;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lb/m/j;->c(Ljava/lang/Class;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    sget-object v1, Lb/m/j;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0, p1}, Lb/m/j;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lb/m/c;

    move-result-object p1

    new-instance v0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/SingleGeneratedAdapterObserver;-><init>(Lb/m/c;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lb/m/c;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    invoke-static {v3, p1}, Lb/m/j;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lb/m/c;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v0, v1}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lb/m/c;)V

    goto :goto_1

    :cond_5
    new-instance v0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v0, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    .line 2
    :goto_1
    iput-object v0, p0, Lb/m/h$a;->b:Lb/m/e;

    iput-object p2, p0, Lb/m/h$a;->a:Lb/m/d$b;

    return-void
.end method


# virtual methods
.method public a(Lb/m/g;Lb/m/d$a;)V
    .locals 2

    invoke-virtual {p2}, Lb/m/d$a;->a()Lb/m/d$b;

    move-result-object v0

    iget-object v1, p0, Lb/m/h$a;->a:Lb/m/d$b;

    invoke-static {v1, v0}, Lb/m/h;->e(Lb/m/d$b;Lb/m/d$b;)Lb/m/d$b;

    move-result-object v1

    iput-object v1, p0, Lb/m/h$a;->a:Lb/m/d$b;

    iget-object v1, p0, Lb/m/h$a;->b:Lb/m/e;

    invoke-interface {v1, p1, p2}, Lb/m/e;->h(Lb/m/g;Lb/m/d$a;)V

    iput-object v0, p0, Lb/m/h$a;->a:Lb/m/d$b;

    return-void
.end method
