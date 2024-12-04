.class public Lb/k/b/l$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/l;


# direct methods
.method public constructor <init>(Lb/k/b/l;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/l$c;->b:Lb/k/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object p1, p0, Lb/k/b/l$c;->b:Lb/k/b/l;

    .line 1
    iget-object v0, p1, Lb/k/b/l;->f0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lb/k/b/l;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
