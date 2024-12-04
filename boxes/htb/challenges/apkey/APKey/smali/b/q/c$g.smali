.class public Lb/q/c$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->k(Landroid/view/ViewGroup;Lb/q/s;Lb/q/s;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/q/c$i;

.field private mViewBounds:Lb/q/c$i;


# direct methods
.method public constructor <init>(Lb/q/c;Lb/q/c$i;)V
    .locals 0

    iput-object p2, p0, Lb/q/c$g;->a:Lb/q/c$i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p2, p0, Lb/q/c$g;->mViewBounds:Lb/q/c$i;

    return-void
.end method
