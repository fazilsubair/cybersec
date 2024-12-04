.class public Lb/h/j/b0$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/j/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lb/h/j/b0;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/h/j/b0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/h/j/b0;-><init>(Lb/h/j/b0;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/h/j/b0$e;->a:Lb/h/j/b0;

    return-void
.end method

.method public constructor <init>(Lb/h/j/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/j/b0$e;->a:Lb/h/j/b0;

    return-void
.end method


# virtual methods
.method public a()Lb/h/j/b0;
    .locals 1

    iget-object v0, p0, Lb/h/j/b0$e;->a:Lb/h/j/b0;

    return-object v0
.end method

.method public b(Lb/h/d/b;)V
    .locals 0

    return-void
.end method

.method public c(Lb/h/d/b;)V
    .locals 0

    return-void
.end method
