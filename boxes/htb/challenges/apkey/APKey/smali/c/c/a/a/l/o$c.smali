.class public Lc/c/a/a/l/o$c;
.super Lc/c/a/a/l/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/l/o;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/l/w<",
        "TS;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/l/o;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/o;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/o$c;->a:Lc/c/a/a/l/o;

    invoke-direct {p0}, Lc/c/a/a/l/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p1, p0, Lc/c/a/a/l/o$c;->a:Lc/c/a/a/l/o;

    .line 1
    sget v0, Lc/c/a/a/l/o;->A0:I

    invoke-virtual {p1}, Lc/c/a/a/l/o;->A0()V

    .line 2
    iget-object p1, p0, Lc/c/a/a/l/o$c;->a:Lc/c/a/a/l/o;

    .line 3
    iget-object v0, p1, Lc/c/a/a/l/o;->z0:Landroid/widget/Button;

    .line 4
    iget-object p1, p1, Lc/c/a/a/l/o;->o0:Lc/c/a/a/l/d;

    .line 5
    invoke-interface {p1}, Lc/c/a/a/l/d;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
