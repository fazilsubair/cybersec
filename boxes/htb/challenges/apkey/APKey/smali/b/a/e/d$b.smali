.class public Lb/a/e/d$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lb/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/e/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final b:Lb/a/e/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/e/f/a<",
            "*TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/e/b;Lb/a/e/f/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/e/b<",
            "TO;>;",
            "Lb/a/e/f/a<",
            "*TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/e/d$b;->a:Lb/a/e/b;

    iput-object p2, p0, Lb/a/e/d$b;->b:Lb/a/e/f/a;

    return-void
.end method
