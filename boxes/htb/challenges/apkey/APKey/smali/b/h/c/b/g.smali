.class public abstract Lb/h/c/b/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(ILandroid/os/Handler;)V
    .locals 1

    invoke-static {p2}, Lb/h/c/b/g;->c(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lb/h/c/b/g$b;

    invoke-direct {v0, p0, p1}, Lb/h/c/b/g$b;-><init>(Lb/h/c/b/g;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
    .locals 1

    invoke-static {p2}, Lb/h/c/b/g;->c(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lb/h/c/b/g$a;

    invoke-direct {v0, p0, p1}, Lb/h/c/b/g$a;-><init>(Lb/h/c/b/g;Landroid/graphics/Typeface;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract d(I)V
.end method

.method public abstract e(Landroid/graphics/Typeface;)V
.end method
