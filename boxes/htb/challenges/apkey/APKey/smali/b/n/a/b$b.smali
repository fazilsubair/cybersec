.class public Lb/n/a/b$b;
.super Lb/m/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/n/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Lb/m/q;


# instance fields
.field public b:Lb/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/g<",
            "Lb/n/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/n/a/b$b$a;

    invoke-direct {v0}, Lb/n/a/b$b$a;-><init>()V

    sput-object v0, Lb/n/a/b$b;->c:Lb/m/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/m/p;-><init>()V

    new-instance v0, Lb/e/g;

    invoke-direct {v0}, Lb/e/g;-><init>()V

    iput-object v0, p0, Lb/n/a/b$b;->b:Lb/e/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lb/n/a/b$b;->b:Lb/e/g;

    invoke-virtual {v0}, Lb/e/g;->g()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lb/n/a/b$b;->b:Lb/e/g;

    .line 1
    iget v3, v0, Lb/e/g;->d:I

    iget-object v4, v0, Lb/e/g;->c:[Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput v1, v0, Lb/e/g;->d:I

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lb/n/a/b$b;->b:Lb/e/g;

    invoke-virtual {v0, v1}, Lb/e/g;->h(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/b$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
