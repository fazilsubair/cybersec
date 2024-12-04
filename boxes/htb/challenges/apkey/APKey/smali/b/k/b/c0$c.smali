.class public Lb/k/b/c0$c;
.super Lb/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/k/b/c0;


# direct methods
.method public constructor <init>(Lb/k/b/c0;Z)V
    .locals 0

    iput-object p1, p0, Lb/k/b/c0$c;->c:Lb/k/b/c0;

    invoke-direct {p0, p2}, Lb/a/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lb/k/b/c0$c;->c:Lb/k/b/c0;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Lb/k/b/c0;->C(Z)Z

    iget-object v1, v0, Lb/k/b/c0;->h:Lb/a/b;

    .line 2
    iget-boolean v1, v1, Lb/a/b;->a:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/k/b/c0;->U()Z

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb/k/b/c0;->g:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method
