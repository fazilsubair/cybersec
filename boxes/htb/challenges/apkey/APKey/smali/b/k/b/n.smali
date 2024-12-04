.class public Lb/k/b/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/p/a$b;


# instance fields
.field public final synthetic a:Lb/k/b/p;


# direct methods
.method public constructor <init>(Lb/k/b/p;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/n;->a:Lb/k/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lb/k/b/n;->a:Lb/k/b/p;

    .line 1
    :cond_0
    iget-object v2, v1, Lb/k/b/p;->i:Lb/k/b/x;

    .line 2
    iget-object v2, v2, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v2, v2, Lb/k/b/z;->e:Lb/k/b/c0;

    .line 3
    sget-object v3, Lb/m/d$b;->d:Lb/m/d$b;

    invoke-static {v2, v3}, Lb/k/b/p;->j(Lb/k/b/c0;Lb/m/d$b;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v1, p0, Lb/k/b/n;->a:Lb/k/b/p;

    iget-object v1, v1, Lb/k/b/p;->j:Lb/m/h;

    sget-object v2, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    invoke-virtual {v1, v2}, Lb/m/h;->d(Lb/m/d$a;)V

    iget-object v1, p0, Lb/k/b/n;->a:Lb/k/b/p;

    iget-object v1, v1, Lb/k/b/p;->i:Lb/k/b/x;

    .line 5
    iget-object v1, v1, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v1, v1, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v1}, Lb/k/b/c0;->Z()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android:support:fragments"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method
