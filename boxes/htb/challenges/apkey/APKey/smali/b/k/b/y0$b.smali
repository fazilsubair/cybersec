.class public Lb/k/b/y0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/k/b/y0;->a(Lb/k/b/y0$d$c;Lb/k/b/y0$d$b;Lb/k/b/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/y0$c;

.field public final synthetic c:Lb/k/b/y0;


# direct methods
.method public constructor <init>(Lb/k/b/y0;Lb/k/b/y0$c;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/y0$b;->c:Lb/k/b/y0;

    iput-object p2, p0, Lb/k/b/y0$b;->b:Lb/k/b/y0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/k/b/y0$b;->c:Lb/k/b/y0;

    iget-object v0, v0, Lb/k/b/y0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/k/b/y0$b;->b:Lb/k/b/y0$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/k/b/y0$b;->c:Lb/k/b/y0;

    iget-object v0, v0, Lb/k/b/y0;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lb/k/b/y0$b;->b:Lb/k/b/y0$c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
