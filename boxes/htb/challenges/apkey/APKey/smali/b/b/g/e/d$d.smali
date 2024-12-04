.class public Lb/b/g/e/d$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lb/b/h/e0;

.field public final b:Lb/b/g/e/f;

.field public final c:I


# direct methods
.method public constructor <init>(Lb/b/h/e0;Lb/b/g/e/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b/g/e/d$d;->a:Lb/b/h/e0;

    iput-object p2, p0, Lb/b/g/e/d$d;->b:Lb/b/g/e/f;

    iput p3, p0, Lb/b/g/e/d$d;->c:I

    return-void
.end method
