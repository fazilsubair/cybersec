.class public Lb/h/c/b/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/c/b/g;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/graphics/Typeface;

.field public final synthetic c:Lb/h/c/b/g;


# direct methods
.method public constructor <init>(Lb/h/c/b/g;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lb/h/c/b/g$a;->c:Lb/h/c/b/g;

    iput-object p2, p0, Lb/h/c/b/g$a;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/h/c/b/g$a;->c:Lb/h/c/b/g;

    iget-object v1, p0, Lb/h/c/b/g$a;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lb/h/c/b/g;->e(Landroid/graphics/Typeface;)V

    return-void
.end method
