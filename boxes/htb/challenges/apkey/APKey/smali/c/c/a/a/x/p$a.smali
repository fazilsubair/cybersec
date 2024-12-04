.class public Lc/c/a/a/x/p$a;
.super Lc/c/a/a/q/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/x/p;
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

    iput-object p1, p0, Lc/c/a/a/x/p$a;->b:Lc/c/a/a/x/p;

    invoke-direct {p0}, Lc/c/a/a/q/j;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lc/c/a/a/x/p$a;->b:Lc/c/a/a/x/p;

    iget-object p2, p1, Lc/c/a/a/x/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lc/c/a/a/x/p;->e(Lc/c/a/a/x/p;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
