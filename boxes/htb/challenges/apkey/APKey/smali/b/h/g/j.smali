.class public Lb/h/g/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/g/j$a;
    }
.end annotation


# static fields
.field public static final a:Lb/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/d<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lb/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/f<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lb/h/i/a<",
            "Lb/h/g/j$a;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lb/e/d;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lb/e/d;-><init>(I)V

    sput-object v0, Lb/h/g/j;->a:Lb/e/d;

    .line 1
    new-instance v9, Lb/h/g/n;

    const-string v0, "fonts-androidx"

    const/16 v1, 0xa

    invoke-direct {v9, v0, v1}, Lb/h/g/n;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v1, 0x2710

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 2
    sput-object v0, Lb/h/g/j;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/h/g/j;->c:Ljava/lang/Object;

    new-instance v0, Lb/e/f;

    invoke-direct {v0}, Lb/e/f;-><init>()V

    sput-object v0, Lb/h/g/j;->d:Lb/e/f;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Lb/h/g/e;I)Lb/h/g/j$a;
    .locals 7

    sget-object v0, Lb/h/g/j;->a:Lb/e/d;

    invoke-virtual {v0, p0}, Lb/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    new-instance p0, Lb/h/g/j$a;

    invoke-direct {p0, v0}, Lb/h/g/j$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2, v0}, Lb/h/g/d;->a(Landroid/content/Context;Lb/h/g/e;Landroid/os/CancellationSignal;)Lb/h/g/k;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    iget v1, p2, Lb/h/g/k;->a:I

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    goto :goto_3

    .line 2
    :cond_2
    iget-object v1, p2, Lb/h/g/k;->b:[Lb/h/g/l;

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 3
    array-length v5, v1

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    .line 4
    iget v6, v6, Lb/h/g/l;->e:I

    if-eqz v6, :cond_5

    if-gez v6, :cond_4

    :goto_1
    const/4 v1, -0x3

    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_2
    move v1, v3

    :goto_3
    if-eqz v1, :cond_8

    .line 5
    new-instance p0, Lb/h/g/j$a;

    invoke-direct {p0, v1}, Lb/h/g/j$a;-><init>(I)V

    return-object p0

    .line 6
    :cond_8
    iget-object p2, p2, Lb/h/g/k;->b:[Lb/h/g/l;

    .line 7
    sget-object v1, Lb/h/d/d;->a:Lb/h/d/j;

    invoke-virtual {v1, p1, v0, p2, p3}, Lb/h/d/j;->b(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/h/g/l;I)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 8
    sget-object p2, Lb/h/g/j;->a:Lb/e/d;

    invoke-virtual {p2, p0, p1}, Lb/e/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lb/h/g/j$a;

    invoke-direct {p0, p1}, Lb/h/g/j$a;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_9
    new-instance p0, Lb/h/g/j$a;

    invoke-direct {p0, v2}, Lb/h/g/j$a;-><init>(I)V

    return-object p0

    :catch_0
    new-instance p0, Lb/h/g/j$a;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lb/h/g/j$a;-><init>(I)V

    return-object p0
.end method
