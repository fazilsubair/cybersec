.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# instance fields
.field public final a:Lb/m/c;


# direct methods
.method public constructor <init>(Lb/m/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/m/c;

    return-void
.end method


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/m/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lb/m/c;->a(Lb/m/g;Lb/m/d$a;ZLb/m/k;)V

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/m/c;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lb/m/c;->a(Lb/m/g;Lb/m/d$a;ZLb/m/k;)V

    return-void
.end method
