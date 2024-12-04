.class public Lb/b/g/e/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/e/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/g/e/o;


# direct methods
.method public constructor <init>(Lb/b/g/e/o;)V
    .locals 0

    iput-object p1, p0, Lb/b/g/e/o$a;->b:Lb/b/g/e/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lb/b/g/e/o$a;->b:Lb/b/g/e/o;

    invoke-virtual {v0}, Lb/b/g/e/o;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/g/e/o$a;->b:Lb/b/g/e/o;

    iget-object v1, v0, Lb/b/g/e/o;->j:Lb/b/h/e0;

    .line 1
    iget-boolean v1, v1, Lb/b/h/c0;->z:Z

    if-nez v1, :cond_2

    .line 2
    iget-object v0, v0, Lb/b/g/e/o;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/g/e/o$a;->b:Lb/b/g/e/o;

    iget-object v0, v0, Lb/b/g/e/o;->j:Lb/b/h/e0;

    invoke-virtual {v0}, Lb/b/h/c0;->e()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/g/e/o$a;->b:Lb/b/g/e/o;

    invoke-virtual {v0}, Lb/b/g/e/o;->i()V

    :cond_2
    :goto_1
    return-void
.end method
