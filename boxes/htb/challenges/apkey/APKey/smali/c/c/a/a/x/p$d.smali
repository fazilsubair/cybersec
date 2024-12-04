.class public Lc/c/a/a/x/p$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/x/p;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/c/a/a/x/p;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/p;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/p$d;->b:Lc/c/a/a/x/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/c/a/a/x/p$d;->b:Lc/c/a/a/x/p;

    iget-object p1, p1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lc/c/a/a/x/p$d;->b:Lc/c/a/a/x/p;

    invoke-static {v1}, Lc/c/a/a/x/p;->e(Lc/c/a/a/x/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    iget-object p1, p0, Lc/c/a/a/x/p$d;->b:Lc/c/a/a/x/p;

    iget-object p1, p1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->o()V

    return-void
.end method
