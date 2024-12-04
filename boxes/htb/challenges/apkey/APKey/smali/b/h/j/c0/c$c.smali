.class public Lb/h/j/c0/c$c;
.super Lb/h/j/c0/c$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/j/c0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lb/h/j/c0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/h/j/c0/c$b;-><init>(Lb/h/j/c0/c;)V

    return-void
.end method


# virtual methods
.method public addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lb/h/j/c0/c$a;->a:Lb/h/j/c0/c;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
