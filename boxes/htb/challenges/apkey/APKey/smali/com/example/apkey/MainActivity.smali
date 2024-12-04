.class public Lcom/example/apkey/MainActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Lc/b/a/b;

.field public f:Lc/b/a/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lc/b/a/b;

    invoke-direct {v0}, Lc/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/example/apkey/MainActivity;->e:Lc/b/a/b;

    new-instance v0, Lc/b/a/g;

    invoke-direct {v0}, Lc/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/example/apkey/MainActivity;->f:Lc/b/a/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f080057

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/apkey/MainActivity;->b:Landroid/widget/Button;

    const p1, 0x7f080097

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/apkey/MainActivity;->c:Landroid/widget/EditText;

    const p1, 0x7f080096

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/example/apkey/MainActivity;->d:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/example/apkey/MainActivity;->b:Landroid/widget/Button;

    new-instance v0, Lcom/example/apkey/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/example/apkey/MainActivity$a;-><init>(Lcom/example/apkey/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
