.class public Lb/q/r;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lb/q/r;->a:Z

    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    sput-boolean v3, Lb/q/r;->b:Z

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Lb/q/r;->c:Z

    return-void
.end method
