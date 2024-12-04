.class public Lb/q/o$a$a;
.super Lb/q/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/e/a;

.field public final synthetic b:Lb/q/o$a;


# direct methods
.method public constructor <init>(Lb/q/o$a;Lb/e/a;)V
    .locals 0

    iput-object p1, p0, Lb/q/o$a$a;->b:Lb/q/o$a;

    iput-object p2, p0, Lb/q/o$a$a;->a:Lb/e/a;

    invoke-direct {p0}, Lb/q/n;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/q/k;)V
    .locals 2

    iget-object v0, p0, Lb/q/o$a$a;->a:Lb/e/a;

    iget-object v1, p0, Lb/q/o$a$a;->b:Lb/q/o$a;

    iget-object v1, v1, Lb/q/o$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lb/q/k;->v(Lb/q/k$d;)Lb/q/k;

    return-void
.end method
