.class public Lb/i/a/a$b;
.super Landroid/database/DataSetObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/i/a/a;


# direct methods
.method public constructor <init>(Lb/i/a/a;)V
    .locals 0

    iput-object p1, p0, Lb/i/a/a$b;->a:Lb/i/a/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lb/i/a/a$b;->a:Lb/i/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/i/a/a;->b:Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Lb/i/a/a$b;->a:Lb/i/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/i/a/a;->b:Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
