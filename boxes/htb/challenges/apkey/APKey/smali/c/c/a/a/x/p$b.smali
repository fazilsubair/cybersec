.class public Lc/c/a/a/x/p$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/x/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/x/p;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/p;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/p$b;->a:Lc/c/a/a/x/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    iget-object p1, p0, Lc/c/a/a/x/p$b;->a:Lc/c/a/a/x/p;

    iget-object v2, p1, Lc/c/a/a/x/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lc/c/a/a/x/p;->e(Lc/c/a/a/x/p;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    iget-object p1, p0, Lc/c/a/a/x/p$b;->a:Lc/c/a/a/x/p;

    .line 1
    iget-object p1, p1, Lc/c/a/a/x/p;->d:Landroid/text/TextWatcher;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lc/c/a/a/x/p$b;->a:Lc/c/a/a/x/p;

    .line 3
    iget-object p1, p1, Lc/c/a/a/x/p;->d:Landroid/text/TextWatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
