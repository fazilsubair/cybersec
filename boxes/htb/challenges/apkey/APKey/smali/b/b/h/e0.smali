.class public Lb/b/h/e0;
.super Lb/b/h/c0;
.source ""

# interfaces
.implements Lb/b/h/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/h/e0$a;
    }
.end annotation


# static fields
.field public static F:Ljava/lang/reflect/Method;


# instance fields
.field public E:Lb/b/h/d0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_0

    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lb/b/h/e0;->F:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MenuPopupWindow"

    const-string v1, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lb/b/h/c0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public a(Lb/b/g/e/f;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/e0;->E:Lb/b/h/d0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb/b/h/d0;->a(Lb/b/g/e/f;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public d(Lb/b/g/e/f;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lb/b/h/e0;->E:Lb/b/h/d0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb/b/h/d0;->d(Lb/b/g/e/f;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;Z)Lb/b/h/x;
    .locals 1

    new-instance v0, Lb/b/h/e0$a;

    invoke-direct {v0, p1, p2}, Lb/b/h/e0$a;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lb/b/h/e0$a;->setHoverListener(Lb/b/h/d0;)V

    return-object v0
.end method
