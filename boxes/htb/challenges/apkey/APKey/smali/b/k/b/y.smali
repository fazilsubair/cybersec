.class public Lb/k/b/y;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lb/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/f<",
            "Ljava/lang/ClassLoader;",
            "Lb/e/f<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/e/f;

    invoke-direct {v0}, Lb/e/f;-><init>()V

    sput-object v0, Lb/k/b/y;->a:Lb/e/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lb/k/b/y;->a:Lb/e/f;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p0, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Lb/e/f;

    if-nez v2, :cond_0

    new-instance v2, Lb/e/f;

    invoke-direct {v2}, Lb/e/f;-><init>()V

    invoke-virtual {v0, p0, v2}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v2, p1, v1}, Lb/e/f;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lb/k/b/m;",
            ">;"
        }
    .end annotation

    const-string v0, "Unable to instantiate fragment "

    :try_start_0
    invoke-static {p0, p1}, Lb/k/b/y;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lb/k/b/m$c;

    const-string v2, ": make sure class is a valid subclass of Fragment"

    invoke-static {v0, p1, v2}, Lc/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lb/k/b/m$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lb/k/b/m$c;

    const-string v2, ": make sure class name exists"

    invoke-static {v0, p1, v2}, Lc/a/a/a/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lb/k/b/m$c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lb/k/b/m;
    .locals 0

    const p0, 0x0

    throw p0
.end method
