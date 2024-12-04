.class public Lc/c/a/a/x/h$a;
.super Lc/c/a/a/q/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/x/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc/c/a/a/x/h;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/h$a;->b:Lc/c/a/a/x/h;

    invoke-direct {p0}, Lc/c/a/a/q/j;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/x/h$a;->b:Lc/c/a/a/x/h;

    iget-object p1, p1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/a/x/h;->e(Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/x/h$a;->b:Lc/c/a/a/x/h;

    .line 1
    iget-object v0, v0, Lc/c/a/a/x/h;->n:Landroid/view/accessibility/AccessibilityManager;

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/c/a/a/x/h;->f(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/x/h$a;->b:Lc/c/a/a/x/h;

    iget-object v0, v0, Lc/c/a/a/x/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    new-instance v0, Lc/c/a/a/x/h$a$a;

    invoke-direct {v0, p0, p1}, Lc/c/a/a/x/h$a$a;-><init>(Lc/c/a/a/x/h$a;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
