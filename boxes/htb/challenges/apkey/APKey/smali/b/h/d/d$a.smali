.class public Lb/h/d/d$a;
.super Lb/h/g/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lb/h/c/b/g;


# direct methods
.method public constructor <init>(Lb/h/c/b/g;)V
    .locals 0

    invoke-direct {p0}, Lb/h/g/m;-><init>()V

    iput-object p1, p0, Lb/h/d/d$a;->a:Lb/h/c/b/g;

    return-void
.end method
