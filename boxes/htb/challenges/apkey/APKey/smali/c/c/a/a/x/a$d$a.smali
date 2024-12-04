.class public Lc/c/a/a/x/a$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/x/a$d;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lc/c/a/a/x/a$d;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/a$d;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/a$d$a;->c:Lc/c/a/a/x/a$d;

    iput-object p2, p0, Lc/c/a/a/x/a$d$a;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/x/a$d$a;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lc/c/a/a/x/a$d$a;->c:Lc/c/a/a/x/a$d;

    iget-object v1, v1, Lc/c/a/a/x/a$d;->a:Lc/c/a/a/x/a;

    .line 1
    iget-object v1, v1, Lc/c/a/a/x/a;->d:Landroid/text/TextWatcher;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
