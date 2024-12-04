.class public Lb/b/h/x$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/h/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lb/b/h/x;


# direct methods
.method public constructor <init>(Lb/b/h/x;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/x$b;->b:Lb/b/h/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/b/h/x$b;->b:Lb/b/h/x;

    const/4 v1, 0x0

    iput-object v1, v0, Lb/b/h/x;->n:Lb/b/h/x$b;

    invoke-virtual {v0}, Lb/b/h/x;->drawableStateChanged()V

    return-void
.end method
