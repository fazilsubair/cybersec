.class public Lb/h/j/c0/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/j/c0/c$c;,
        Lb/h/j/c0/c$b;,
        Lb/h/j/c0/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/h/j/c0/c$c;

    invoke-direct {v0, p0}, Lb/h/j/c0/c$c;-><init>(Lb/h/j/c0/c;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/h/j/c0/c$b;

    invoke-direct {v0, p0}, Lb/h/j/c0/c$b;-><init>(Lb/h/j/c0/c;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lb/h/j/c0/c$a;

    invoke-direct {v0, p0}, Lb/h/j/c0/c$a;-><init>(Lb/h/j/c0/c;)V

    :goto_0
    iput-object v0, p0, Lb/h/j/c0/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/j/c0/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lb/h/j/c0/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Lb/h/j/c0/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
