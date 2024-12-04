.class public Lb/b/g/e/d$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/g/e/d$c;->a(Lb/b/g/e/f;Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/g/e/d$d;

.field public final synthetic c:Landroid/view/MenuItem;

.field public final synthetic d:Lb/b/g/e/f;

.field public final synthetic e:Lb/b/g/e/d$c;


# direct methods
.method public constructor <init>(Lb/b/g/e/d$c;Lb/b/g/e/d$d;Landroid/view/MenuItem;Lb/b/g/e/f;)V
    .locals 0

    iput-object p1, p0, Lb/b/g/e/d$c$a;->e:Lb/b/g/e/d$c;

    iput-object p2, p0, Lb/b/g/e/d$c$a;->b:Lb/b/g/e/d$d;

    iput-object p3, p0, Lb/b/g/e/d$c$a;->c:Landroid/view/MenuItem;

    iput-object p4, p0, Lb/b/g/e/d$c$a;->d:Lb/b/g/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lb/b/g/e/d$c$a;->b:Lb/b/g/e/d$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/b/g/e/d$c$a;->e:Lb/b/g/e/d$c;

    iget-object v1, v1, Lb/b/g/e/d$c;->b:Lb/b/g/e/d;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/b/g/e/d;->B:Z

    iget-object v0, v0, Lb/b/g/e/d$d;->b:Lb/b/g/e/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/g/e/f;->c(Z)V

    iget-object v0, p0, Lb/b/g/e/d$c$a;->e:Lb/b/g/e/d$c;

    iget-object v0, v0, Lb/b/g/e/d$c;->b:Lb/b/g/e/d;

    iput-boolean v1, v0, Lb/b/g/e/d;->B:Z

    :cond_0
    iget-object v0, p0, Lb/b/g/e/d$c$a;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/g/e/d$c$a;->c:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/g/e/d$c$a;->d:Lb/b/g/e/f;

    iget-object v1, p0, Lb/b/g/e/d$c$a;->c:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lb/b/g/e/f;->q(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
