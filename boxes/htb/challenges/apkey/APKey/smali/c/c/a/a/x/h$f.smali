.class public Lc/c/a/a/x/h$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/x/h;->a()V
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

    iput-object p1, p0, Lc/c/a/a/x/h$f;->b:Lc/c/a/a/x/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/x/h$f;->b:Lc/c/a/a/x/h;

    iget-object p1, p1, Lc/c/a/a/x/m;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    check-cast p1, Landroid/widget/AutoCompleteTextView;

    iget-object v0, p0, Lc/c/a/a/x/h$f;->b:Lc/c/a/a/x/h;

    invoke-static {v0, p1}, Lc/c/a/a/x/h;->h(Lc/c/a/a/x/h;Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
