.class public Lb/k/b/c0$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/c0;


# direct methods
.method public constructor <init>(Lb/k/b/c0;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/c0$g;->b:Lb/k/b/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/k/b/c0$g;->b:Lb/k/b/c0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/k/b/c0;->C(Z)Z

    return-void
.end method
