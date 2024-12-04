.class public Lb/q/q$a;
.super Lb/q/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/q;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/q/k;


# direct methods
.method public constructor <init>(Lb/q/q;Lb/q/k;)V
    .locals 0

    iput-object p2, p0, Lb/q/q$a;->a:Lb/q/k;

    invoke-direct {p0}, Lb/q/n;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/q/k;)V
    .locals 1

    iget-object v0, p0, Lb/q/q$a;->a:Lb/q/k;

    invoke-virtual {v0}, Lb/q/k;->y()V

    invoke-virtual {p1, p0}, Lb/q/k;->v(Lb/q/k$d;)Lb/q/k;

    return-void
.end method
