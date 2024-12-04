.class public Lb/k/b/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/d/b;


# instance fields
.field public final synthetic a:Lb/k/b/p;


# direct methods
.method public constructor <init>(Lb/k/b/p;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/o;->a:Lb/k/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iget-object p1, p0, Lb/k/b/o;->a:Lb/k/b/p;

    iget-object p1, p1, Lb/k/b/p;->i:Lb/k/b/x;

    .line 1
    iget-object p1, p1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, p1, Lb/k/b/z;->e:Lb/k/b/c0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Lb/k/b/c0;->b(Lb/k/b/z;Lb/k/b/v;Lb/k/b/m;)V

    .line 2
    iget-object p1, p0, Lb/k/b/o;->a:Lb/k/b/p;

    .line 3
    iget-object p1, p1, Landroidx/activity/ComponentActivity;->e:Lb/p/b;

    .line 4
    iget-object p1, p1, Lb/p/b;->b:Lb/p/a;

    const-string v0, "android:support:fragments"

    .line 5
    invoke-virtual {p1, v0}, Lb/p/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget-object v0, p0, Lb/k/b/o;->a:Lb/k/b/p;

    iget-object v0, v0, Lb/k/b/p;->i:Lb/k/b/x;

    .line 6
    iget-object v0, v0, Lb/k/b/x;->a:Lb/k/b/z;

    instance-of v1, v0, Lb/m/u;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0, p1}, Lb/k/b/c0;->Y(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
