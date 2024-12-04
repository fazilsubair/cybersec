.class public Lb/k/b/c$d;
.super Lb/k/b/c$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/k/b/y0$d;Lb/h/f/a;ZZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lb/k/b/c$c;-><init>(Lb/k/b/y0$d;Lb/h/f/a;)V

    .line 1
    iget-object p2, p1, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    .line 2
    sget-object v0, Lb/k/b/y0$d$c;->c:Lb/k/b/y0$d$c;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_0

    .line 3
    iget-object p2, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 4
    invoke-virtual {p2}, Lb/k/b/m;->w()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 6
    invoke-virtual {p2}, Lb/k/b/m;->l()Ljava/lang/Object;

    move-object p2, v1

    :goto_0
    iput-object p2, p0, Lb/k/b/c$d;->c:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 7
    iget-object p2, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 8
    iget-object p2, p2, Lb/k/b/m;->I:Lb/k/b/m$b;

    goto :goto_2

    .line 9
    :cond_1
    iget-object p2, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 10
    iget-object p2, p2, Lb/k/b/m;->I:Lb/k/b/m$b;

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 11
    iget-object p2, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 12
    invoke-virtual {p2}, Lb/k/b/m;->y()Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 13
    :cond_3
    iget-object p2, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 14
    invoke-virtual {p2}, Lb/k/b/m;->o()Ljava/lang/Object;

    move-object p2, v1

    :goto_1
    iput-object p2, p0, Lb/k/b/c$d;->c:Ljava/lang/Object;

    :goto_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/k/b/c$d;->d:Z

    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    .line 15
    iget-object p1, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 16
    invoke-virtual {p1}, Lb/k/b/m;->A()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lb/k/b/c$d;->e:Ljava/lang/Object;

    goto :goto_3

    .line 17
    :cond_4
    iget-object p1, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 18
    invoke-virtual {p1}, Lb/k/b/m;->z()Ljava/lang/Object;

    :cond_5
    iput-object v1, p0, Lb/k/b/c$d;->e:Ljava/lang/Object;

    :goto_3
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Lb/k/b/t0;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v0, Lb/k/b/r0;->b:Lb/k/b/t0;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lb/k/b/t0;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lb/k/b/r0;->c:Lb/k/b/t0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lb/k/b/t0;->e(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object p1, p0, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 2
    iget-object p1, p1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
