.class public abstract Lb/b/g/e/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/g/e/k;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/content/Context;

.field public d:Lb/b/g/e/f;

.field public e:Landroid/view/LayoutInflater;

.field public f:Lb/b/g/e/k$a;

.field public g:I

.field public h:I

.field public i:Lb/b/g/e/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/e/b;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lb/b/g/e/b;->e:Landroid/view/LayoutInflater;

    iput p2, p0, Lb/b/g/e/b;->g:I

    iput p3, p0, Lb/b/g/e/b;->h:I

    return-void
.end method


# virtual methods
.method public d(Lb/b/g/e/f;Lb/b/g/e/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Lb/b/g/e/k$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/g/e/b;->f:Lb/b/g/e/k$a;

    return-void
.end method

.method public l(Lb/b/g/e/f;Lb/b/g/e/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
