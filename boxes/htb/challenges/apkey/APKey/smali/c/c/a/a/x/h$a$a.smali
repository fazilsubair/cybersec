.class public Lc/c/a/a/x/h$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/x/h$a;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/AutoCompleteTextView;

.field public final synthetic c:Lc/c/a/a/x/h$a;


# direct methods
.method public constructor <init>(Lc/c/a/a/x/h$a;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/x/h$a$a;->c:Lc/c/a/a/x/h$a;

    iput-object p2, p0, Lc/c/a/a/x/h$a$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/x/h$a$a;->b:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iget-object v1, p0, Lc/c/a/a/x/h$a$a;->c:Lc/c/a/a/x/h$a;

    iget-object v1, v1, Lc/c/a/a/x/h$a;->b:Lc/c/a/a/x/h;

    invoke-static {v1, v0}, Lc/c/a/a/x/h;->g(Lc/c/a/a/x/h;Z)V

    iget-object v1, p0, Lc/c/a/a/x/h$a$a;->c:Lc/c/a/a/x/h$a;

    iget-object v1, v1, Lc/c/a/a/x/h$a;->b:Lc/c/a/a/x/h;

    .line 1
    iput-boolean v0, v1, Lc/c/a/a/x/h;->i:Z

    return-void
.end method
