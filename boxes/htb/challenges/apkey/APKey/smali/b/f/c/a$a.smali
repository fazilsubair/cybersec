.class public final enum Lb/f/c/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/f/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/f/c/a$a;

.field public static final enum c:Lb/f/c/a$a;

.field public static final enum d:Lb/f/c/a$a;

.field public static final enum e:Lb/f/c/a$a;

.field public static final enum f:Lb/f/c/a$a;

.field public static final enum g:Lb/f/c/a$a;

.field public static final enum h:Lb/f/c/a$a;

.field public static final synthetic i:[Lb/f/c/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lb/f/c/a$a;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/f/c/a$a;->b:Lb/f/c/a$a;

    new-instance v1, Lb/f/c/a$a;

    const-string v3, "FLOAT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/f/c/a$a;->c:Lb/f/c/a$a;

    new-instance v3, Lb/f/c/a$a;

    const-string v5, "COLOR_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/f/c/a$a;->d:Lb/f/c/a$a;

    new-instance v5, Lb/f/c/a$a;

    const-string v7, "COLOR_DRAWABLE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb/f/c/a$a;->e:Lb/f/c/a$a;

    new-instance v7, Lb/f/c/a$a;

    const-string v9, "STRING_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb/f/c/a$a;->f:Lb/f/c/a$a;

    new-instance v9, Lb/f/c/a$a;

    const-string v11, "BOOLEAN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lb/f/c/a$a;->g:Lb/f/c/a$a;

    new-instance v11, Lb/f/c/a$a;

    const-string v13, "DIMENSION_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lb/f/c/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lb/f/c/a$a;->h:Lb/f/c/a$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lb/f/c/a$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lb/f/c/a$a;->i:[Lb/f/c/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lb/f/c/a$a;
    .locals 1

    const-class v0, Lb/f/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/f/c/a$a;

    return-object p0
.end method

.method public static values()[Lb/f/c/a$a;
    .locals 1

    sget-object v0, Lb/f/c/a$a;->i:[Lb/f/c/a$a;

    invoke-virtual {v0}, [Lb/f/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/f/c/a$a;

    return-object v0
.end method
