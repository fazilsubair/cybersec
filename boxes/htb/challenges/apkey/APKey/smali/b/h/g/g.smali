.class public Lb/h/g/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/i/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/i/a<",
        "Lb/h/g/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/h/g/c;


# direct methods
.method public constructor <init>(Lb/h/g/c;)V
    .locals 0

    iput-object p1, p0, Lb/h/g/g;->a:Lb/h/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lb/h/g/j$a;

    .line 1
    iget-object v0, p0, Lb/h/g/g;->a:Lb/h/g/c;

    invoke-virtual {v0, p1}, Lb/h/g/c;->a(Lb/h/g/j$a;)V

    return-void
.end method
