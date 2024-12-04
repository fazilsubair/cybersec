.class public Lb/b/g/e/h$a;
.super Lb/h/j/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/view/ActionProvider;

.field public final synthetic c:Lb/b/g/e/h;


# direct methods
.method public constructor <init>(Lb/b/g/e/h;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    iput-object p1, p0, Lb/b/g/e/h$a;->c:Lb/b/g/e/h;

    invoke-direct {p0, p2}, Lb/h/j/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public f(Landroid/view/SubMenu;)V
    .locals 2

    iget-object v0, p0, Lb/b/g/e/h$a;->b:Landroid/view/ActionProvider;

    iget-object v1, p0, Lb/b/g/e/h$a;->c:Lb/b/g/e/h;

    invoke-virtual {v1, p1}, Lb/b/g/e/c;->d(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
