.class public Lb/b/g/d$a;
.super Lb/h/j/z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lb/b/g/d;


# direct methods
.method public constructor <init>(Lb/b/g/d;)V
    .locals 0

    iput-object p1, p0, Lb/b/g/d$a;->c:Lb/b/g/d;

    invoke-direct {p0}, Lb/h/j/z;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/g/d$a;->a:Z

    iput p1, p0, Lb/b/g/d$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lb/b/g/d$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/g/d$a;->b:I

    iget-object v0, p0, Lb/b/g/d$a;->c:Lb/b/g/d;

    iget-object v0, v0, Lb/b/g/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lb/b/g/d$a;->c:Lb/b/g/d;

    iget-object p1, p1, Lb/b/g/d;->d:Lb/h/j/y;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/h/j/y;->a(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lb/b/g/d$a;->b:I

    iput-boolean p1, p0, Lb/b/g/d$a;->a:Z

    iget-object v0, p0, Lb/b/g/d$a;->c:Lb/b/g/d;

    .line 2
    iput-boolean p1, v0, Lb/b/g/d;->e:Z

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lb/b/g/d$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/g/d$a;->a:Z

    iget-object p1, p0, Lb/b/g/d$a;->c:Lb/b/g/d;

    iget-object p1, p1, Lb/b/g/d;->d:Lb/h/j/y;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/h/j/y;->b(Landroid/view/View;)V

    :cond_1
    return-void
.end method
