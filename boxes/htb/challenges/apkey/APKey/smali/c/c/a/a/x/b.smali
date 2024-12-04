.class public Lc/c/a/a/x/b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lc/c/a/a/x/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/b;->a:Lc/c/a/a/x/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/x/b;->a:Lc/c/a/a/x/a;

    iget-object p1, p1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    return-void
.end method
