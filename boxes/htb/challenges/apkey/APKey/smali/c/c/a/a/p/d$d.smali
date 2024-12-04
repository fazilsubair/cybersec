.class public Lc/c/a/a/p/d$d;
.super Lc/c/a/a/p/d$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/p/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/a/p/d;


# direct methods
.method public constructor <init>(Lc/c/a/a/p/d;)V
    .locals 1

    iput-object p1, p0, Lc/c/a/a/p/d$d;->d:Lc/c/a/a/p/d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/c/a/a/p/d$h;-><init>(Lc/c/a/a/p/d;Lc/c/a/a/p/b;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    iget-object v0, p0, Lc/c/a/a/p/d$d;->d:Lc/c/a/a/p/d;

    iget v1, v0, Lc/c/a/a/p/d;->d:F

    iget v0, v0, Lc/c/a/a/p/d;->f:F

    add-float/2addr v1, v0

    return v1
.end method
