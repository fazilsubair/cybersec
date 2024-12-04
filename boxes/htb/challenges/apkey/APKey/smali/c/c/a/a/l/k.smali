.class public Lc/c/a/a/l/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lc/c/a/a/l/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/l/g;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/l/k;->b:Lc/c/a/a/l/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/c/a/a/l/k;->b:Lc/c/a/a/l/g;

    .line 1
    sget-object v0, Lc/c/a/a/l/g$e;->b:Lc/c/a/a/l/g$e;

    iget-object v1, p1, Lc/c/a/a/l/g;->Z:Lc/c/a/a/l/g$e;

    sget-object v2, Lc/c/a/a/l/g$e;->c:Lc/c/a/a/l/g$e;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lc/c/a/a/l/g;->x0(Lc/c/a/a/l/g$e;)V

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p1, v2}, Lc/c/a/a/l/g;->x0(Lc/c/a/a/l/g$e;)V

    :cond_1
    :goto_0
    return-void
.end method
