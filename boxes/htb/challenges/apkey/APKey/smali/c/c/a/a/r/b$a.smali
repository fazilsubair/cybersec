.class public Lc/c/a/a/r/b$a;
.super Lb/h/c/b/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/r/b;->b(Landroid/content/Context;Lc/c/a/a/r/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/r/d;

.field public final synthetic b:Lc/c/a/a/r/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/r/b;Lc/c/a/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/r/b$a;->b:Lc/c/a/a/r/b;

    iput-object p2, p0, Lc/c/a/a/r/b$a;->a:Lc/c/a/a/r/d;

    invoke-direct {p0}, Lb/h/c/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/r/b$a;->b:Lc/c/a/a/r/b;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/c/a/a/r/b;->m:Z

    .line 2
    iget-object v0, p0, Lc/c/a/a/r/b$a;->a:Lc/c/a/a/r/d;

    invoke-virtual {v0, p1}, Lc/c/a/a/r/d;->a(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/r/b$a;->b:Lc/c/a/a/r/b;

    iget v1, v0, Lc/c/a/a/r/b;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lc/c/a/a/r/b$a;->b:Lc/c/a/a/r/b;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lc/c/a/a/r/b;->m:Z

    .line 4
    iget-object v0, p0, Lc/c/a/a/r/b$a;->a:Lc/c/a/a/r/d;

    .line 5
    iget-object p1, p1, Lc/c/a/a/r/b;->n:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lc/c/a/a/r/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
