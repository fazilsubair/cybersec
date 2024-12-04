.class public Lb/q/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Landroid/view/View;",
            "Lb/q/s;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lb/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/c<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lb/q/t;->a:Lb/e/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lb/q/t;->b:Landroid/util/SparseArray;

    new-instance v0, Lb/e/c;

    invoke-direct {v0}, Lb/e/c;-><init>()V

    iput-object v0, p0, Lb/q/t;->c:Lb/e/c;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lb/q/t;->d:Lb/e/a;

    return-void
.end method
