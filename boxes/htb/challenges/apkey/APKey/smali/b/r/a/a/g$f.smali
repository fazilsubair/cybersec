.class public abstract Lb/r/a/a/g$f;
.super Lb/r/a/a/g$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[Lb/h/d/c;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/r/a/a/g$e;-><init>(Lb/r/a/a/g$a;)V

    iput-object v0, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    const/4 v0, 0x0

    iput v0, p0, Lb/r/a/a/g$f;->c:I

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/g$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/r/a/a/g$e;-><init>(Lb/r/a/a/g$a;)V

    iput-object v0, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    const/4 v0, 0x0

    iput v0, p0, Lb/r/a/a/g$f;->c:I

    iget-object v0, p1, Lb/r/a/a/g$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/g$f;->b:Ljava/lang/String;

    iget v0, p1, Lb/r/a/a/g$f;->d:I

    iput v0, p0, Lb/r/a/a/g$f;->d:I

    iget-object p1, p1, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    invoke-static {p1}, Lb/h/b/a;->u([Lb/h/d/c;)[Lb/h/d/c;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lb/h/d/c;
    .locals 1

    iget-object v0, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/r/a/a/g$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lb/h/d/c;)V
    .locals 6

    iget-object v0, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    invoke-static {v0, p1}, Lb/h/b/a;->f([Lb/h/d/c;[Lb/h/d/c;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lb/h/b/a;->u([Lb/h/d/c;)[Lb/h/d/c;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb/r/a/a/g$f;->a:[Lb/h/d/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    aget-object v4, p1, v2

    iget-char v4, v4, Lb/h/d/c;->a:C

    iput-char v4, v3, Lb/h/d/c;->a:C

    const/4 v3, 0x0

    :goto_1
    aget-object v4, p1, v2

    iget-object v4, v4, Lb/h/d/c;->b:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v2

    iget-object v4, v4, Lb/h/d/c;->b:[F

    aget-object v5, p1, v2

    iget-object v5, v5, Lb/h/d/c;->b:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
