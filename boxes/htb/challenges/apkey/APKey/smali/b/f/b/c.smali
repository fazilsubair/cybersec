.class public Lb/f/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lb/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b/e<",
            "Lb/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b/e<",
            "Lb/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lb/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/b/e<",
            "Lb/f/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lb/f/b/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/f/b/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lb/f/b/e;-><init>(I)V

    iput-object v0, p0, Lb/f/b/c;->a:Lb/f/b/e;

    new-instance v0, Lb/f/b/e;

    invoke-direct {v0, v1}, Lb/f/b/e;-><init>(I)V

    iput-object v0, p0, Lb/f/b/c;->b:Lb/f/b/e;

    new-instance v0, Lb/f/b/e;

    invoke-direct {v0, v1}, Lb/f/b/e;-><init>(I)V

    iput-object v0, p0, Lb/f/b/c;->c:Lb/f/b/e;

    const/16 v0, 0x20

    new-array v0, v0, [Lb/f/b/g;

    iput-object v0, p0, Lb/f/b/c;->d:[Lb/f/b/g;

    return-void
.end method
