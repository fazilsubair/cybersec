.class public Lb/b/h/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/j/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lb/b/h/a;


# direct methods
.method public constructor <init>(Lb/b/h/a;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/a$a;->c:Lb/b/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/h/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-boolean p1, p0, Lb/b/h/a$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lb/b/h/a$a;->c:Lb/b/h/a;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/h/a;->g:Lb/h/j/x;

    iget v0, p0, Lb/b/h/a$a;->b:I

    invoke-static {p1, v0}, Lb/b/h/a;->b(Lb/b/h/a;I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/h/a$a;->c:Lb/b/h/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/b/h/a;->a(Lb/b/h/a;I)V

    iput-boolean v0, p0, Lb/b/h/a$a;->a:Z

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/h/a$a;->a:Z

    return-void
.end method
