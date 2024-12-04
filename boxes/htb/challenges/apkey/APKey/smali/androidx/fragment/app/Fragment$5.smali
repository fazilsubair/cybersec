.class public Landroidx/fragment/app/Fragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# instance fields
.field public final synthetic a:Lb/k/b/m;


# direct methods
.method public constructor <init>(Lb/k/b/m;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$5;->a:Lb/k/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 0

    sget-object p1, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/Fragment$5;->a:Lb/k/b/m;

    iget-object p1, p1, Lb/k/b/m;->F:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method
