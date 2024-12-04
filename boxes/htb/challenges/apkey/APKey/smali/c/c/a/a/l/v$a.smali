.class public Lc/c/a/a/l/v$a;
.super Landroidx/recyclerview/widget/RecyclerView$z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/l/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final t:Landroid/widget/TextView;

.field public final u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Z)V
    .locals 7

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$z;-><init>(Landroid/view/View;)V

    const v0, 0x7f0800ee

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lc/c/a/a/l/v$a;->t:Landroid/widget/TextView;

    .line 1
    sget-object v1, Lb/h/j/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    new-instance v1, Lb/h/j/u;

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x7f080169

    const/16 v4, 0x1c

    invoke-direct {v1, v3, v2, v4}, Lb/h/j/u;-><init>(ILjava/lang/Class;I)V

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v1, v0, v2}, Lb/h/j/u;->d(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v1, v0}, Lb/h/j/q$b;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lb/h/j/u;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    invoke-static {v0}, Lb/h/j/q;->h(Landroid/view/View;)Lb/h/j/a;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lb/h/j/a;

    invoke-direct {v3}, Lb/h/j/a;-><init>()V

    :cond_3
    invoke-static {v0, v3}, Lb/h/j/q;->F(Landroid/view/View;Lb/h/j/a;)V

    .line 7
    iget v3, v1, Lb/h/j/q$b;->a:I

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget v1, v1, Lb/h/j/q$b;->d:I

    invoke-static {v0, v1}, Lb/h/j/q;->v(Landroid/view/View;I)V

    :cond_4
    :goto_2
    const v1, 0x7f0800e9

    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object p1, p0, Lc/c/a/a/l/v$a;->u:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    if-nez p2, :cond_5

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method
