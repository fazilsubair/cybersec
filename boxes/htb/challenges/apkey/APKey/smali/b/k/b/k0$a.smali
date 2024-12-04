.class public final Lb/k/b/k0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lb/k/b/m;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lb/m/d$b;

.field public h:Lb/m/d$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILb/k/b/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/k/b/k0$a;->a:I

    iput-object p2, p0, Lb/k/b/k0$a;->b:Lb/k/b/m;

    sget-object p1, Lb/m/d$b;->f:Lb/m/d$b;

    iput-object p1, p0, Lb/k/b/k0$a;->g:Lb/m/d$b;

    iput-object p1, p0, Lb/k/b/k0$a;->h:Lb/m/d$b;

    return-void
.end method
