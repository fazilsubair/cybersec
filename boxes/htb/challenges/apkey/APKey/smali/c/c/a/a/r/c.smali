.class public Lc/c/a/a/r/c;
.super Lc/c/a/a/r/d;
.source ""


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Lc/c/a/a/r/d;

.field public final synthetic c:Lc/c/a/a/r/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/r/b;Landroid/text/TextPaint;Lc/c/a/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/r/c;->c:Lc/c/a/a/r/b;

    iput-object p2, p0, Lc/c/a/a/r/c;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lc/c/a/a/r/c;->b:Lc/c/a/a/r/d;

    invoke-direct {p0}, Lc/c/a/a/r/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/r/c;->b:Lc/c/a/a/r/d;

    invoke-virtual {v0, p1}, Lc/c/a/a/r/d;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/r/c;->c:Lc/c/a/a/r/b;

    iget-object v1, p0, Lc/c/a/a/r/c;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lc/c/a/a/r/b;->d(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lc/c/a/a/r/c;->b:Lc/c/a/a/r/d;

    invoke-virtual {v0, p1, p2}, Lc/c/a/a/r/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
