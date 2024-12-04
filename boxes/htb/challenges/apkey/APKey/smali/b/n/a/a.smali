.class public abstract Lb/n/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lb/m/g;)Lb/n/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lb/m/g;",
            ":",
            "Lb/m/u;",
            ">(TT;)",
            "Lb/n/a/a;"
        }
    .end annotation

    new-instance v0, Lb/n/a/b;

    move-object v1, p0

    check-cast v1, Lb/m/u;

    invoke-interface {v1}, Lb/m/u;->d()Lb/m/t;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/n/a/b;-><init>(Lb/m/g;Lb/m/t;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
