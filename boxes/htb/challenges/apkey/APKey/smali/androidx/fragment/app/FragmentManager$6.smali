.class public Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 1

    sget-object p1, Lb/m/d$a;->ON_START:Lb/m/d$a;

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    sget-object p1, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    throw v0

    .line 1
    :cond_1
    throw v0
.end method
