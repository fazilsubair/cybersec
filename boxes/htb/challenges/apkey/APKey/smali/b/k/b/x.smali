.class public Lb/k/b/x;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/k/b/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/k/b/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/k/b/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/k/b/z<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/k/b/x;->a:Lb/k/b/z;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/k/b/x;->a:Lb/k/b/z;

    iget-object v0, v0, Lb/k/b/z;->e:Lb/k/b/c0;

    invoke-virtual {v0}, Lb/k/b/c0;->T()V

    return-void
.end method
