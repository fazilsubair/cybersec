.class public Lb/k/b/f0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lb/m/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb/m/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Lb/k/b/f0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lb/k/b/f0;-><init>(Z)V

    return-object p1
.end method
