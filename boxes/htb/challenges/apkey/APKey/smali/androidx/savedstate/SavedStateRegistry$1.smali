.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# instance fields
.field public final synthetic a:Lb/p/a;


# direct methods
.method public constructor <init>(Lb/p/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/p/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 0

    sget-object p1, Lb/m/d$a;->ON_START:Lb/m/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/p/a;

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Lb/p/a;->e:Z

    goto :goto_1

    :cond_0
    sget-object p1, Lb/m/d$a;->ON_STOP:Lb/m/d$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/p/a;

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
