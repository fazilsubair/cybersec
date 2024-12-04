.class public Lb/q/b;
.super Lb/q/q;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/q/q;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/q/q;->J(I)Lb/q/q;

    new-instance v1, Lb/q/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lb/q/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/q/q;->H(Lb/q/k;)Lb/q/q;

    new-instance v1, Lb/q/c;

    invoke-direct {v1}, Lb/q/c;-><init>()V

    invoke-virtual {p0, v1}, Lb/q/q;->H(Lb/q/k;)Lb/q/q;

    new-instance v1, Lb/q/d;

    invoke-direct {v1, v0}, Lb/q/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/q/q;->H(Lb/q/k;)Lb/q/q;

    return-void
.end method
