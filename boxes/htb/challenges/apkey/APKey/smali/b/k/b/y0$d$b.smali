.class public final enum Lb/k/b/y0$d$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/y0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/k/b/y0$d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/k/b/y0$d$b;

.field public static final enum c:Lb/k/b/y0$d$b;

.field public static final enum d:Lb/k/b/y0$d$b;

.field public static final synthetic e:[Lb/k/b/y0$d$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lb/k/b/y0$d$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/k/b/y0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/k/b/y0$d$b;->b:Lb/k/b/y0$d$b;

    new-instance v1, Lb/k/b/y0$d$b;

    const-string v3, "ADDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/k/b/y0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/k/b/y0$d$b;->c:Lb/k/b/y0$d$b;

    new-instance v3, Lb/k/b/y0$d$b;

    const-string v5, "REMOVING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/k/b/y0$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/k/b/y0$d$b;->d:Lb/k/b/y0$d$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lb/k/b/y0$d$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lb/k/b/y0$d$b;->e:[Lb/k/b/y0$d$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/k/b/y0$d$b;
    .locals 1

    const-class v0, Lb/k/b/y0$d$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/k/b/y0$d$b;

    return-object p0
.end method

.method public static values()[Lb/k/b/y0$d$b;
    .locals 1

    sget-object v0, Lb/k/b/y0$d$b;->e:[Lb/k/b/y0$d$b;

    invoke-virtual {v0}, [Lb/k/b/y0$d$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/k/b/y0$d$b;

    return-object v0
.end method
