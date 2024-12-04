.class public Lb/h/g/o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/g/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/h/i/a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/h/g/o;Lb/h/i/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lb/h/g/o$a;->b:Lb/h/i/a;

    iput-object p3, p0, Lb/h/g/o$a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/h/g/o$a;->b:Lb/h/i/a;

    iget-object v1, p0, Lb/h/g/o$a;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lb/h/i/a;->a(Ljava/lang/Object;)V

    return-void
.end method
