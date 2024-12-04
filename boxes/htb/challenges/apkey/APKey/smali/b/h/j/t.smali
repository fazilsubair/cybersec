.class public Lb/h/j/t;
.super Lb/h/j/q$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/h/j/q$b<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Class;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lb/h/j/q$b;-><init>(ILjava/lang/Class;II)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
