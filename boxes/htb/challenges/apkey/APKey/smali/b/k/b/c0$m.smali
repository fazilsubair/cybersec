.class public Lb/k/b/c0$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/k/b/c0$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Lb/k/b/c0;


# direct methods
.method public constructor <init>(Lb/k/b/c0;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lb/k/b/c0$m;->c:Lb/k/b/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lb/k/b/c0$m;->a:I

    iput p4, p0, Lb/k/b/c0$m;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/k/b/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/k/b/c0$m;->c:Lb/k/b/c0;

    iget-object v0, v0, Lb/k/b/c0;->t:Lb/k/b/m;

    if-eqz v0, :cond_0

    iget v1, p0, Lb/k/b/c0$m;->a:I

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lb/k/b/m;->i()Lb/k/b/c0;

    move-result-object v0

    invoke-virtual {v0}, Lb/k/b/c0;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/k/b/c0$m;->c:Lb/k/b/c0;

    const/4 v3, 0x0

    iget v4, p0, Lb/k/b/c0$m;->a:I

    iget v5, p0, Lb/k/b/c0$m;->b:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lb/k/b/c0;->V(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
