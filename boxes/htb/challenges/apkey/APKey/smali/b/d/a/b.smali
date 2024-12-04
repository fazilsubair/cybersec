.class public Lb/d/a/b;
.super Lb/d/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    new-instance v0, Lb/d/a/b$a;

    invoke-direct {v0, p0}, Lb/d/a/b$a;-><init>(Lb/d/a/b;)V

    sput-object v0, Lb/d/a/h;->h:Lb/d/a/h$a;

    return-void
.end method
