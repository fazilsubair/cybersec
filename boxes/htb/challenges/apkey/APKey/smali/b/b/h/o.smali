.class public Lb/b/h/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/j/d0/d;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lb/b/h/o;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/h/j/d0/e;ILandroid/os/Bundle;)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_1

    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    iget-object p2, p1, Lb/h/j/d0/e;->a:Lb/h/j/d0/e$c;

    invoke-interface {p2}, Lb/h/j/d0/e$c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p2, p1, Lb/h/j/d0/e;->a:Lb/h/j/d0/e$c;

    invoke-interface {p2}, Lb/h/j/d0/e$c;->d()Ljava/lang/Object;

    move-result-object p2

    .line 3
    check-cast p2, Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    :goto_0
    const-string v0, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ReceiveContent"

    const-string p3, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 4
    iget-object v0, p1, Lb/h/j/d0/e;->a:Lb/h/j/d0/e$c;

    invoke-interface {v0}, Lb/h/j/d0/e$c;->a()Landroid/content/ClipDescription;

    move-result-object v0

    .line 5
    new-instance v3, Landroid/content/ClipData$Item;

    .line 6
    iget-object v4, p1, Lb/h/j/d0/e;->a:Lb/h/j/d0/e$c;

    invoke-interface {v4}, Lb/h/j/d0/e$c;->e()Landroid/net/Uri;

    move-result-object v4

    .line 7
    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {p2, v0, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v0, Lb/h/j/c$a;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v3}, Lb/h/j/c$a;-><init>(Landroid/content/ClipData;I)V

    .line 8
    iget-object p1, p1, Lb/h/j/d0/e;->a:Lb/h/j/d0/e$c;

    invoke-interface {p1}, Lb/h/j/d0/e$c;->c()Landroid/net/Uri;

    move-result-object p1

    .line 9
    iput-object p1, v0, Lb/h/j/c$a;->d:Landroid/net/Uri;

    .line 10
    iput-object p3, v0, Lb/h/j/c$a;->e:Landroid/os/Bundle;

    .line 11
    new-instance p1, Lb/h/j/c;

    invoke-direct {p1, v0}, Lb/h/j/c;-><init>(Lb/h/j/c$a;)V

    .line 12
    iget-object p2, p0, Lb/b/h/o;->a:Landroid/view/View;

    invoke-static {p2, p1}, Lb/h/j/q;->z(Landroid/view/View;Lb/h/j/c;)Lb/h/j/c;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
