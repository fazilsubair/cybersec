.class public Lb/h/g/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lb/h/g/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lb/h/g/e;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lb/h/g/e;I)V
    .locals 0

    iput-object p1, p0, Lb/h/g/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/h/g/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lb/h/g/h;->c:Lb/h/g/e;

    iput p4, p0, Lb/h/g/h;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/h/g/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lb/h/g/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lb/h/g/h;->c:Lb/h/g/e;

    iget v3, p0, Lb/h/g/h;->d:I

    invoke-static {v0, v1, v2, v3}, Lb/h/g/j;->a(Ljava/lang/String;Landroid/content/Context;Lb/h/g/e;I)Lb/h/g/j$a;

    move-result-object v0

    return-object v0
.end method
