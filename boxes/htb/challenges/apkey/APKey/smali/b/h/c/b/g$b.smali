.class public Lb/h/c/b/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/c/b/g;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lb/h/c/b/g;


# direct methods
.method public constructor <init>(Lb/h/c/b/g;I)V
    .locals 0

    iput-object p1, p0, Lb/h/c/b/g$b;->c:Lb/h/c/b/g;

    iput p2, p0, Lb/h/c/b/g$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/h/c/b/g$b;->c:Lb/h/c/b/g;

    iget v1, p0, Lb/h/c/b/g$b;->b:I

    invoke-virtual {v0, v1}, Lb/h/c/b/g;->d(I)V

    return-void
.end method