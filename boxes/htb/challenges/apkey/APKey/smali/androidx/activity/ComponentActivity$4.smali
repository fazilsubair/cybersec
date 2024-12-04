.class public Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/m/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/ComponentActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Lb/m/g;Lb/m/d$a;)V
    .locals 0

    sget-object p1, Lb/m/d$a;->ON_DESTROY:Lb/m/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    iget-object p1, p1, Landroidx/activity/ComponentActivity;->c:Lb/a/d/a;

    const/4 p2, 0x0

    .line 1
    iput-object p2, p1, Lb/a/d/a;->b:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->d()Lb/m/t;

    move-result-object p1

    invoke-virtual {p1}, Lb/m/t;->a()V

    :cond_0
    return-void
.end method
