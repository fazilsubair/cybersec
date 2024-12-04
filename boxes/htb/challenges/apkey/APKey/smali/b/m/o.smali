.class public Lb/m/o;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/m/o$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lb/m/d$a;)V
    .locals 2

    instance-of v0, p0, Lb/m/i;

    const-string v1, "handleLifecycleEvent"

    if-eqz v0, :cond_0

    check-cast p0, Lb/m/i;

    invoke-interface {p0}, Lb/m/i;->a()Lb/m/h;

    move-result-object p0

    .line 1
    invoke-virtual {p0, v1}, Lb/m/h;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/m/d$a;->a()Lb/m/d$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/m/h;->f(Lb/m/d$b;)V

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Lb/m/g;

    if-eqz v0, :cond_1

    check-cast p0, Lb/m/g;

    invoke-interface {p0}, Lb/m/g;->a()Lb/m/d;

    move-result-object p0

    instance-of v0, p0, Lb/m/h;

    if-eqz v0, :cond_1

    check-cast p0, Lb/m/h;

    .line 3
    invoke-virtual {p0, v1}, Lb/m/h;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/m/d$a;->a()Lb/m/d$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/m/h;->f(Lb/m/d$b;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lb/m/o$a;->registerIn(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lb/m/o;

    invoke-direct {v2}, Lb/m/o;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lb/m/d$a;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lb/m/o;->a(Landroid/app/Activity;Lb/m/d$a;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Lb/m/d$a;->ON_CREATE:Lb/m/d$a;

    invoke-virtual {p0, p1}, Lb/m/o;->b(Lb/m/d$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    invoke-virtual {p0, v0}, Lb/m/o;->b(Lb/m/d$a;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lb/m/d$a;->ON_PAUSE:Lb/m/d$a;

    invoke-virtual {p0, v0}, Lb/m/o;->b(Lb/m/d$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lb/m/d$a;->ON_RESUME:Lb/m/d$a;

    invoke-virtual {p0, v0}, Lb/m/o;->b(Lb/m/d$a;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lb/m/d$a;->ON_START:Lb/m/d$a;

    invoke-virtual {p0, v0}, Lb/m/o;->b(Lb/m/d$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    invoke-virtual {p0, v0}, Lb/m/o;->b(Lb/m/d$a;)V

    return-void
.end method
