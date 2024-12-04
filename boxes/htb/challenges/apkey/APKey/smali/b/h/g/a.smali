.class public Lb/h/g/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lb/h/g/m;

.field public final synthetic c:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lb/h/g/c;Lb/h/g/m;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p2, p0, Lb/h/g/a;->b:Lb/h/g/m;

    iput-object p3, p0, Lb/h/g/a;->c:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/h/g/a;->b:Lb/h/g/m;

    iget-object v1, p0, Lb/h/g/a;->c:Landroid/graphics/Typeface;

    check-cast v0, Lb/h/d/d$a;

    .line 1
    iget-object v0, v0, Lb/h/d/d$a;->a:Lb/h/c/b/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lb/h/c/b/g;->e(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
