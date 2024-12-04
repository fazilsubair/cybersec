.class public Lb/b/h/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:Lb/b/h/c0;


# direct methods
.method public constructor <init>(Lb/b/h/c0;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/b0;->b:Lb/b/h/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lb/b/h/b0;->b:Lb/b/h/c0;

    iget-object p1, p1, Lb/b/h/c0;->d:Lb/b/h/x;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lb/b/h/x;->setListSelectionHidden(Z)V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
