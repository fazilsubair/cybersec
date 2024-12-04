.class public Lb/k/b/p;
.super Landroidx/activity/ComponentActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/b/p$a;
    }
.end annotation


# instance fields
.field public final i:Lb/k/b/x;

.field public final j:Lb/m/h;

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    new-instance v0, Lb/k/b/p$a;

    invoke-direct {v0, p0}, Lb/k/b/p$a;-><init>(Lb/k/b/p;)V

    .line 1
    new-instance v1, Lb/k/b/x;

    const-string v2, "callbacks == null"

    invoke-static {v0, v2}, Lb/h/b/a;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0}, Lb/k/b/x;-><init>(Lb/k/b/z;)V

    .line 2
    iput-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    new-instance v0, Lb/m/h;

    invoke-direct {v0, p0}, Lb/m/h;-><init>(Lb/m/g;)V

    iput-object v0, p0, Lb/k/b/p;->j:Lb/m/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/b/p;->m:Z

    .line 3
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/p/b;

    .line 4
    iget-object v0, v0, Lb/p/b;->b:Lb/p/a;

    .line 5
    new-instance v1, Lb/k/b/n;

    invoke-direct {v1, p0}, Lb/k/b/n;-><init>(Lb/k/b/p;)V

    const-string v2, "android:support:fragments"

    invoke-virtual {v0, v2, v1}, Lb/p/a;->b(Ljava/lang/String;Lb/p/a$b;)V

    new-instance v0, Lb/k/b/o;

    invoke-direct {v0, p0}, Lb/k/b/o;-><init>(Lb/k/b/p;)V

    .line 6
    iget-object v1, p0, Landroidx/activity/ComponentActivity;->c:Lb/a/d/a;

    .line 7
    iget-object v2, v1, Lb/a/d/a;->b:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lb/a/d/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lb/k/b/o;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v1, v1, Lb/a/d/a;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static j(Lb/k/b/c0;Lb/m/d$b;)Z
    .locals 7

    sget-object v0, Lb/m/d$b;->e:Lb/m/d$b;

    .line 1
    iget-object p0, p0, Lb/k/b/c0;->c:Lb/k/b/j0;

    invoke-virtual {p0}, Lb/k/b/j0;->i()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/k/b/m;

    if-nez v4, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v5, v4, Lb/k/b/m;->t:Lb/k/b/z;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lb/k/b/z;->i()Ljava/lang/Object;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_3

    .line 4
    invoke-virtual {v4}, Lb/k/b/m;->i()Lb/k/b/c0;

    move-result-object v5

    invoke-static {v5, p1}, Lb/k/b/p;->j(Lb/k/b/c0;Lb/m/d$b;)Z

    move-result v5

    or-int/2addr v3, v5

    :cond_3
    iget-object v5, v4, Lb/k/b/m;->P:Lb/k/b/w0;

    const-string v6, "setCurrentState"

    if-eqz v5, :cond_5

    .line 5
    invoke-virtual {v5}, Lb/k/b/w0;->f()V

    iget-object v5, v5, Lb/k/b/w0;->c:Lb/m/h;

    .line 6
    iget-object v5, v5, Lb/m/h;->b:Lb/m/d$b;

    .line 7
    invoke-virtual {v5, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 8
    iget-object v3, v4, Lb/k/b/m;->P:Lb/k/b/w0;

    .line 9
    iget-object v3, v3, Lb/k/b/w0;->c:Lb/m/h;

    .line 10
    invoke-virtual {v3, v6}, Lb/m/h;->c(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lb/m/h;->f(Lb/m/d$b;)V

    const/4 v3, 0x1

    .line 11
    :cond_5
    iget-object v5, v4, Lb/k/b/m;->O:Lb/m/h;

    .line 12
    iget-object v5, v5, Lb/m/h;->b:Lb/m/d$b;

    .line 13
    invoke-virtual {v5, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_0

    .line 14
    iget-object v3, v4, Lb/k/b/m;->O:Lb/m/h;

    .line 15
    invoke-virtual {v3, v6}, Lb/m/h;->c(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lb/m/h;->f(Lb/m/d$b;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    return v3
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/k/b/p;->k:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/k/b/p;->l:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/k/b/p;->m:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lb/n/a/a;->b(Lb/m/g;)Lb/n/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lb/n/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/b/c0;->y(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public k()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public l()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {v0}, Lb/k/b/x;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {v0}, Lb/k/b/x;->a()V

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0, p1}, Lb/k/b/c0;->k(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lb/k/b/p;->j:Lb/m/h;

    sget-object v0, Lb/m/d$a;->ON_CREATE:Lb/m/d$a;

    invoke-virtual {p1, v0}, Lb/m/h;->d(Lb/m/d$a;)V

    iget-object p1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object p1, p1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object p1, p1, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {p1}, Lb/k/b/c0;->m()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0, p2, v1}, Lb/k/b/c0;->n(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 2
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 3
    iget-object v0, v0, Lb/k/b/c0;->f:Lb/k/b/a0;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Lb/k/b/a0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 6
    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 7
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 8
    iget-object v0, v0, Lb/k/b/c0;->f:Lb/k/b/a0;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Lb/k/b/a0;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0}, Lb/k/b/c0;->o()V

    .line 2
    iget-object v0, p0, Lb/k/b/p;->j:Lb/m/h;

    sget-object v1, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    invoke-virtual {v0, v1}, Lb/m/h;->d(Lb/m/d$a;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0}, Lb/k/b/c0;->p()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object p1, p1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object p1, p1, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {p1, p2}, Lb/k/b/c0;->l(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 2
    :cond_2
    iget-object p1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 3
    iget-object p1, p1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object p1, p1, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {p1, p2}, Lb/k/b/c0;->r(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0, p1}, Lb/k/b/c0;->q(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {p1}, Lb/k/b/x;->a()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0, p2}, Lb/k/b/c0;->s(Landroid/view/Menu;)V

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/b/p;->l:Z

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Lb/k/b/c0;->w(I)V

    .line 3
    iget-object v0, p0, Lb/k/b/p;->j:Lb/m/h;

    sget-object v1, Lb/m/d$a;->ON_PAUSE:Lb/m/d$a;

    invoke-virtual {v0, v1}, Lb/m/h;->d(Lb/m/d$a;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0, p1}, Lb/k/b/c0;->u(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 1
    iget-object v0, p0, Lb/k/b/p;->j:Lb/m/h;

    sget-object v1, Lb/m/d$a;->ON_RESUME:Lb/m/d$a;

    invoke-virtual {v0, v1}, Lb/m/h;->d(Lb/m/d$a;)V

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 2
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lb/k/b/c0;->B:Z

    iput-boolean v1, v0, Lb/k/b/c0;->C:Z

    iget-object v2, v0, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 4
    iput-boolean v1, v2, Lb/k/b/f0;->g:Z

    const/4 v1, 0x7

    .line 5
    invoke-virtual {v0, v1}, Lb/k/b/c0;->w(I)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 2
    iget-object p2, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 3
    iget-object p2, p2, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object p2, p2, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {p2, p3}, Lb/k/b/c0;->v(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {v0}, Lb/k/b/x;->a()V

    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/b/p;->l:Z

    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {v1}, Lb/k/b/x;->a()V

    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v1, v0}, Lb/k/b/c0;->C(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/k/b/p;->m:Z

    iget-boolean v1, p0, Lb/k/b/p;->k:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lb/k/b/p;->k:Z

    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 2
    iput-boolean v0, v1, Lb/k/b/c0;->B:Z

    iput-boolean v0, v1, Lb/k/b/c0;->C:Z

    iget-object v3, v1, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 3
    iput-boolean v0, v3, Lb/k/b/f0;->g:Z

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v1, v3}, Lb/k/b/c0;->w(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {v1}, Lb/k/b/x;->a()V

    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 6
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v1, v2}, Lb/k/b/c0;->C(Z)Z

    .line 7
    iget-object v1, p0, Lb/k/b/p;->j:Lb/m/h;

    sget-object v2, Lb/m/d$a;->ON_START:Lb/m/d$a;

    invoke-virtual {v1, v2}, Lb/m/h;->d(Lb/m/d$a;)V

    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 8
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 9
    iput-boolean v0, v1, Lb/k/b/c0;->B:Z

    iput-boolean v0, v1, Lb/k/b/c0;->C:Z

    iget-object v2, v1, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 10
    iput-boolean v0, v2, Lb/k/b/f0;->g:Z

    const/4 v0, 0x5

    .line 11
    invoke-virtual {v1, v0}, Lb/k/b/c0;->w(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lb/k/b/p;->i:Lb/k/b/x;

    invoke-virtual {v0}, Lb/k/b/x;->a()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/k/b/p;->m:Z

    .line 1
    :cond_0
    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 2
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 3
    sget-object v2, Lb/m/d$b;->d:Lb/m/d$b;

    invoke-static {v1, v2}, Lb/k/b/p;->j(Lb/k/b/c0;Lb/m/d$b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 5
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 6
    iput-boolean v0, v1, Lb/k/b/c0;->C:Z

    iget-object v2, v1, Lb/k/b/c0;->J:Lb/k/b/f0;

    .line 7
    iput-boolean v0, v2, Lb/k/b/f0;->g:Z

    const/4 v0, 0x4

    .line 8
    invoke-virtual {v1, v0}, Lb/k/b/c0;->w(I)V

    .line 9
    iget-object v0, p0, Lb/k/b/p;->j:Lb/m/h;

    sget-object v1, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    invoke-virtual {v0, v1}, Lb/m/h;->d(Lb/m/d$a;)V

    return-void
.end method
