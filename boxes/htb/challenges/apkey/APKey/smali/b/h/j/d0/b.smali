.class public Lb/h/j/d0/b;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source ""


# instance fields
.field public final synthetic a:Lb/h/j/d0/d;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;ZLb/h/j/d0/d;)V
    .locals 0

    iput-object p3, p0, Lb/h/j/d0/b;->a:Lb/h/j/d0/d;

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 4

    iget-object v0, p0, Lb/h/j/d0/b;->a:Lb/h/j/d0/d;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lb/h/j/d0/e;

    new-instance v2, Lb/h/j/d0/e$a;

    invoke-direct {v2, p1}, Lb/h/j/d0/e$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lb/h/j/d0/e;-><init>(Lb/h/j/d0/e$c;)V

    .line 2
    :goto_0
    check-cast v0, Lb/b/h/o;

    invoke-virtual {v0, v1, p2, p3}, Lb/b/h/o;->a(Lb/h/j/d0/e;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
