.class public Lb/b/h/c0$b;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/h/c0;


# direct methods
.method public constructor <init>(Lb/b/h/c0;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/c0$b;->a:Lb/b/h/c0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lb/b/h/c0$b;->a:Lb/b/h/c0;

    invoke-virtual {v0}, Lb/b/h/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/h/c0$b;->a:Lb/b/h/c0;

    invoke-virtual {v0}, Lb/b/h/c0;->e()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lb/b/h/c0$b;->a:Lb/b/h/c0;

    invoke-virtual {v0}, Lb/b/h/c0;->i()V

    return-void
.end method
