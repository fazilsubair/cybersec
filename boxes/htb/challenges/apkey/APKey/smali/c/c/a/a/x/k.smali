.class public Lc/c/a/a/x/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field public final synthetic a:Lc/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/k;->a:Lc/c/a/a/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    iget-object v0, p0, Lc/c/a/a/x/k;->a:Lc/c/a/a/x/h;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/c/a/a/x/h;->i:Z

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Lc/c/a/a/x/h;->k:J

    .line 4
    iget-object v0, p0, Lc/c/a/a/x/k;->a:Lc/c/a/a/x/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc/c/a/a/x/h;->g(Lc/c/a/a/x/h;Z)V

    return-void
.end method
