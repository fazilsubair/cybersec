.class public Lb/b/h/r0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/b/h/r0;


# direct methods
.method public constructor <init>(Lb/b/h/r0;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/r0$a;->b:Lb/b/h/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/h/r0$a;->b:Lb/b/h/r0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/h/r0;->d(Z)V

    return-void
.end method