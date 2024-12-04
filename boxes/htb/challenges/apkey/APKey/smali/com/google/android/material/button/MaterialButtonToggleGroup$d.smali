.class public Lcom/google/android/material/button/MaterialButtonToggleGroup$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final e:Lc/c/a/a/u/c;


# instance fields
.field public a:Lc/c/a/a/u/c;

.field public b:Lc/c/a/a/u/c;

.field public c:Lc/c/a/a/u/c;

.field public d:Lc/c/a/a/u/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/a/u/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/a/u/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->e:Lc/c/a/a/u/c;

    return-void
.end method

.method public constructor <init>(Lc/c/a/a/u/c;Lc/c/a/a/u/c;Lc/c/a/a/u/c;Lc/c/a/a/u/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->a:Lc/c/a/a/u/c;

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->b:Lc/c/a/a/u/c;

    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->c:Lc/c/a/a/u/c;

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$d;->d:Lc/c/a/a/u/c;

    return-void
.end method
