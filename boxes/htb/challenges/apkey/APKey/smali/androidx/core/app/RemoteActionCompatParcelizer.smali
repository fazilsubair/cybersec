.class public Landroidx/core/app/RemoteActionCompatParcelizer;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lb/s/a;)Landroidx/core/app/RemoteActionCompat;
    .locals 3

    new-instance v0, Landroidx/core/app/RemoteActionCompat;

    invoke-direct {v0}, Landroidx/core/app/RemoteActionCompat;-><init>()V

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v2, 0x1

    .line 1
    invoke-virtual {p0, v2}, Lb/s/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb/s/a;->o()Lb/s/c;

    move-result-object v1

    .line 2
    :goto_0
    check-cast v1, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p0, v2}, Lb/s/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lb/s/a;->h()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4
    :goto_1
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p0, v2}, Lb/s/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lb/s/a;->h()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    :goto_2
    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lb/s/a;->m(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v2, 0x5

    .line 7
    invoke-virtual {p0, v2}, Lb/s/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lb/s/a;->f()Z

    move-result v1

    .line 8
    :goto_3
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->e:Z

    iget-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v2, 0x6

    .line 9
    invoke-virtual {p0, v2}, Lb/s/a;->i(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lb/s/a;->f()Z

    move-result v1

    .line 10
    :goto_4
    iput-boolean v1, v0, Landroidx/core/app/RemoteActionCompat;->f:Z

    return-object v0
.end method

.method public static write(Landroidx/core/app/RemoteActionCompat;Lb/s/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->a:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lb/s/a;->p(I)V

    invoke-virtual {p1, v0}, Lb/s/a;->w(Lb/s/c;)V

    .line 4
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->b:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p1, v1}, Lb/s/a;->p(I)V

    invoke-virtual {p1, v0}, Lb/s/a;->s(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->c:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p1, v1}, Lb/s/a;->p(I)V

    invoke-virtual {p1, v0}, Lb/s/a;->s(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Landroidx/core/app/RemoteActionCompat;->d:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p1, v1}, Lb/s/a;->p(I)V

    invoke-virtual {p1, v0}, Lb/s/a;->u(Landroid/os/Parcelable;)V

    .line 10
    iget-boolean v0, p0, Landroidx/core/app/RemoteActionCompat;->e:Z

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p1, v1}, Lb/s/a;->p(I)V

    invoke-virtual {p1, v0}, Lb/s/a;->q(Z)V

    .line 12
    iget-boolean p0, p0, Landroidx/core/app/RemoteActionCompat;->f:Z

    const/4 v0, 0x6

    .line 13
    invoke-virtual {p1, v0}, Lb/s/a;->p(I)V

    invoke-virtual {p1, p0}, Lb/s/a;->q(Z)V

    return-void
.end method
