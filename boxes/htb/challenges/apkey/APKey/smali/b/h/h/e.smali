.class public final Lb/h/h/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/h/e$a;,
        Lb/h/h/e$b;,
        Lb/h/h/e$d;,
        Lb/h/h/e$c;
    }
.end annotation


# static fields
.field public static final a:Lb/h/h/d;

.field public static final b:Lb/h/h/d;

.field public static final c:Lb/h/h/d;

.field public static final d:Lb/h/h/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/h/h/e$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/h/h/e$d;-><init>(Lb/h/h/e$b;Z)V

    sput-object v0, Lb/h/h/e;->a:Lb/h/h/d;

    new-instance v0, Lb/h/h/e$d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/h/h/e$d;-><init>(Lb/h/h/e$b;Z)V

    sput-object v0, Lb/h/h/e;->b:Lb/h/h/d;

    new-instance v0, Lb/h/h/e$d;

    sget-object v1, Lb/h/h/e$a;->a:Lb/h/h/e$a;

    invoke-direct {v0, v1, v2}, Lb/h/h/e$d;-><init>(Lb/h/h/e$b;Z)V

    sput-object v0, Lb/h/h/e;->c:Lb/h/h/d;

    new-instance v0, Lb/h/h/e$d;

    invoke-direct {v0, v1, v3}, Lb/h/h/e$d;-><init>(Lb/h/h/e$b;Z)V

    sput-object v0, Lb/h/h/e;->d:Lb/h/h/d;

    return-void
.end method
