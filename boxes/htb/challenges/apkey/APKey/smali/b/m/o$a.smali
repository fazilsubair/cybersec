.class public Lb/m/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lb/m/o$a;

    invoke-direct {v0}, Lb/m/o$a;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Lb/m/d$a;->ON_CREATE:Lb/m/d$a;

    invoke-static {p1, p2}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lb/m/d$a;->ON_RESUME:Lb/m/d$a;

    invoke-static {p1, v0}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lb/m/d$a;->ON_START:Lb/m/d$a;

    invoke-static {p1, v0}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    invoke-static {p1, v0}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lb/m/d$a;->ON_PAUSE:Lb/m/d$a;

    invoke-static {p1, v0}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    invoke-static {p1, v0}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
