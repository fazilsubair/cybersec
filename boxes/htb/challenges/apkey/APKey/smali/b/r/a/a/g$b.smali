.class public Lb/r/a/a/g$b;
.super Lb/r/a/a/g$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/r/a/a/g$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/g$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/r/a/a/g$f;-><init>(Lb/r/a/a/g$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
