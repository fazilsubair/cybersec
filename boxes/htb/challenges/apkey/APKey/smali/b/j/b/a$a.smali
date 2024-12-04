.class public final Lb/j/b/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/j/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/j/b/b<",
        "Lb/h/j/c0/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    check-cast p1, Lb/h/j/c0/b;

    .line 1
    iget-object p1, p1, Lb/h/j/c0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
