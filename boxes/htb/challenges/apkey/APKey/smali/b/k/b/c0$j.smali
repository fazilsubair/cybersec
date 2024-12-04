.class public Lb/k/b/c0$j;
.super Lb/a/e/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/e/f/a<",
        "Ljava/lang/Object;",
        "Lb/a/e/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/e/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lb/a/e/a;

    invoke-direct {v0, p1, p2}, Lb/a/e/a;-><init>(ILandroid/content/Intent;)V

    return-object v0
.end method
