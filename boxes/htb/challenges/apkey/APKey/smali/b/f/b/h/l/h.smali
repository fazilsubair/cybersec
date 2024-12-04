.class public Lb/f/b/h/l/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lb/f/b/h/l/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/f/b/h/l/b$a;

    invoke-direct {v0}, Lb/f/b/h/l/b$a;-><init>()V

    sput-object v0, Lb/f/b/h/l/h;->a:Lb/f/b/h/l/b$a;

    return-void
.end method

.method public static a(Lb/f/b/h/d;)Z
    .locals 8

    sget-object v0, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    sget-object v1, Lb/f/b/h/d$a;->c:Lb/f/b/h/d$a;

    sget-object v2, Lb/f/b/h/d$a;->b:Lb/f/b/h/d$a;

    invoke-virtual {p0}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v3

    invoke-virtual {p0}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v4

    .line 1
    iget-object v5, p0, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v5, :cond_0

    .line 2
    check-cast v5, Lb/f/b/h/e;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v6

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v5

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_5

    if-ne v3, v0, :cond_3

    iget v3, p0, Lb/f/b/h/d;->l:I

    if-nez v3, :cond_3

    iget v3, p0, Lb/f/b/h/d;->S:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {p0, v6}, Lb/f/b/h/d;->u(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    invoke-virtual {p0}, Lb/f/b/h/d;->z()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eq v4, v2, :cond_8

    if-eq v4, v1, :cond_8

    if-ne v4, v0, :cond_6

    iget v0, p0, Lb/f/b/h/d;->m:I

    if-nez v0, :cond_6

    iget v0, p0, Lb/f/b/h/d;->S:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_6

    invoke-virtual {p0, v7}, Lb/f/b/h/d;->u(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    invoke-virtual {p0}, Lb/f/b/h/d;->A()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iget p0, p0, Lb/f/b/h/d;->S:F

    cmpl-float p0, p0, v5

    if-lez p0, :cond_a

    if-nez v3, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    return v7

    :cond_a
    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    const/4 v6, 0x1

    :cond_b
    return v6
.end method

.method public static b(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    sget-object v3, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    instance-of v4, v0, Lb/f/b/h/e;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lb/f/b/h/d;->y()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static/range {p0 .. p0}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lb/f/b/h/l/b$a;

    invoke-direct {v4}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {v0, v1, v4, v5}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_0
    sget-object v4, Lb/f/b/h/c$a;->c:Lb/f/b/h/c$a;

    invoke-virtual {v0, v4}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v4

    sget-object v6, Lb/f/b/h/c$a;->e:Lb/f/b/h/c$a;

    invoke-virtual {v0, v6}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v6

    invoke-virtual {v4}, Lb/f/b/h/c;->c()I

    move-result v7

    invoke-virtual {v6}, Lb/f/b/h/c;->c()I

    move-result v8

    .line 1
    iget-object v9, v4, Lb/f/b/h/c;->a:Ljava/util/HashSet;

    const/4 v10, 0x0

    const/16 v11, 0x8

    if-eqz v9, :cond_c

    .line 2
    iget-boolean v4, v4, Lb/f/b/h/c;->c:Z

    if-eqz v4, :cond_c

    .line 3
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/f/b/h/c;

    iget-object v13, v9, Lb/f/b/h/c;->d:Lb/f/b/h/d;

    invoke-static {v13}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v14

    invoke-virtual {v13}, Lb/f/b/h/d;->y()Z

    move-result v15

    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    new-instance v15, Lb/f/b/h/l/b$a;

    invoke-direct {v15}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {v13, v1, v15, v5}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_2
    invoke-virtual {v13}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v15

    if-ne v15, v3, :cond_8

    if-eqz v14, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v14

    if-ne v14, v3, :cond_1

    iget v14, v13, Lb/f/b/h/d;->p:I

    if-ltz v14, :cond_1

    iget v14, v13, Lb/f/b/h/d;->o:I

    if-ltz v14, :cond_1

    .line 4
    iget v14, v13, Lb/f/b/h/d;->c0:I

    if-eq v14, v11, :cond_4

    .line 5
    iget v14, v13, Lb/f/b/h/d;->l:I

    if-nez v14, :cond_1

    .line 6
    iget v14, v13, Lb/f/b/h/d;->S:F

    cmpl-float v14, v14, v10

    if-nez v14, :cond_1

    .line 7
    :cond_4
    invoke-virtual {v13}, Lb/f/b/h/d;->w()Z

    move-result v14

    if-nez v14, :cond_1

    .line 8
    iget-boolean v14, v13, Lb/f/b/h/d;->A:Z

    if-nez v14, :cond_1

    .line 9
    iget-object v14, v13, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    if-ne v9, v14, :cond_5

    iget-object v15, v13, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v15, v15, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v15, :cond_5

    .line 10
    iget-boolean v15, v15, Lb/f/b/h/c;->c:Z

    if-nez v15, :cond_6

    .line 11
    :cond_5
    iget-object v15, v13, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    if-ne v9, v15, :cond_7

    iget-object v9, v14, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v9, :cond_7

    .line 12
    iget-boolean v9, v9, Lb/f/b/h/c;->c:Z

    if-eqz v9, :cond_7

    :cond_6
    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    .line 13
    invoke-virtual {v13}, Lb/f/b/h/d;->w()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v0, v1, v13, v2}, Lb/f/b/h/l/h;->d(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/d;Z)V

    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {v13}, Lb/f/b/h/d;->y()Z

    move-result v14

    if-eqz v14, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v14, v13, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    if-ne v9, v14, :cond_a

    iget-object v15, v13, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v15, v15, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v15, :cond_a

    invoke-virtual {v14}, Lb/f/b/h/c;->d()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v13}, Lb/f/b/h/d;->r()I

    move-result v14

    add-int/2addr v14, v9

    invoke-virtual {v13, v9, v14}, Lb/f/b/h/d;->F(II)V

    goto :goto_3

    :cond_a
    iget-object v15, v13, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    if-ne v9, v15, :cond_b

    iget-object v12, v14, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v12, :cond_b

    invoke-virtual {v15}, Lb/f/b/h/c;->d()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {v13}, Lb/f/b/h/d;->r()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v13, v12, v9}, Lb/f/b/h/d;->F(II)V

    :goto_3
    invoke-static {v13, v1, v2}, Lb/f/b/h/l/h;->b(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Z)V

    goto/16 :goto_0

    :cond_b
    if-ne v9, v14, :cond_1

    iget-object v9, v15, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v9, :cond_1

    .line 14
    iget-boolean v9, v9, Lb/f/b/h/c;->c:Z

    if-eqz v9, :cond_1

    .line 15
    invoke-virtual {v13}, Lb/f/b/h/d;->w()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v1, v13, v2}, Lb/f/b/h/l/h;->c(Lb/f/b/h/l/b$b;Lb/f/b/h/d;Z)V

    goto/16 :goto_0

    :cond_c
    instance-of v4, v0, Lb/f/b/h/f;

    if-eqz v4, :cond_d

    return-void

    .line 16
    :cond_d
    iget-object v4, v6, Lb/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_19

    .line 17
    iget-boolean v6, v6, Lb/f/b/h/c;->c:Z

    if-eqz v6, :cond_19

    .line 18
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/f/b/h/c;

    iget-object v7, v6, Lb/f/b/h/c;->d:Lb/f/b/h/d;

    invoke-static {v7}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v9

    invoke-virtual {v7}, Lb/f/b/h/d;->y()Z

    move-result v12

    if-eqz v12, :cond_f

    if-eqz v9, :cond_f

    new-instance v12, Lb/f/b/h/l/b$a;

    invoke-direct {v12}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {v7, v1, v12, v5}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_f
    iget-object v12, v7, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    if-ne v6, v12, :cond_10

    iget-object v13, v7, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v13, v13, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v13, :cond_10

    .line 19
    iget-boolean v13, v13, Lb/f/b/h/c;->c:Z

    if-nez v13, :cond_11

    .line 20
    :cond_10
    iget-object v13, v7, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    if-ne v6, v13, :cond_12

    iget-object v12, v12, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v12, :cond_12

    .line 21
    iget-boolean v12, v12, Lb/f/b/h/c;->c:Z

    if-eqz v12, :cond_12

    :cond_11
    const/4 v12, 0x1

    goto :goto_5

    :cond_12
    const/4 v12, 0x0

    .line 22
    :goto_5
    invoke-virtual {v7}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v13

    if-ne v13, v3, :cond_15

    if-eqz v9, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {v7}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v6

    if-ne v6, v3, :cond_e

    iget v6, v7, Lb/f/b/h/d;->p:I

    if-ltz v6, :cond_e

    iget v6, v7, Lb/f/b/h/d;->o:I

    if-ltz v6, :cond_e

    .line 23
    iget v6, v7, Lb/f/b/h/d;->c0:I

    if-eq v6, v11, :cond_14

    .line 24
    iget v6, v7, Lb/f/b/h/d;->l:I

    if-nez v6, :cond_e

    .line 25
    iget v6, v7, Lb/f/b/h/d;->S:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_e

    .line 26
    :cond_14
    invoke-virtual {v7}, Lb/f/b/h/d;->w()Z

    move-result v6

    if-nez v6, :cond_e

    .line 27
    iget-boolean v6, v7, Lb/f/b/h/d;->A:Z

    if-nez v6, :cond_e

    if-eqz v12, :cond_e

    .line 28
    invoke-virtual {v7}, Lb/f/b/h/d;->w()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v0, v1, v7, v2}, Lb/f/b/h/l/h;->d(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/d;Z)V

    goto :goto_4

    :cond_15
    :goto_6
    invoke-virtual {v7}, Lb/f/b/h/d;->y()Z

    move-result v9

    if-eqz v9, :cond_16

    goto/16 :goto_4

    :cond_16
    iget-object v9, v7, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    if-ne v6, v9, :cond_17

    iget-object v13, v7, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v13, v13, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v13, :cond_17

    invoke-virtual {v9}, Lb/f/b/h/c;->d()I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v7}, Lb/f/b/h/d;->r()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v6, v9}, Lb/f/b/h/d;->F(II)V

    goto :goto_7

    :cond_17
    iget-object v13, v7, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    if-ne v6, v13, :cond_18

    iget-object v6, v9, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v6, :cond_18

    invoke-virtual {v13}, Lb/f/b/h/c;->d()I

    move-result v6

    sub-int v6, v8, v6

    invoke-virtual {v7}, Lb/f/b/h/d;->r()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {v7, v9, v6}, Lb/f/b/h/d;->F(II)V

    :goto_7
    invoke-static {v7, v1, v2}, Lb/f/b/h/l/h;->b(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Z)V

    goto/16 :goto_4

    :cond_18
    if-eqz v12, :cond_e

    invoke-virtual {v7}, Lb/f/b/h/d;->w()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v1, v7, v2}, Lb/f/b/h/l/h;->c(Lb/f/b/h/l/b$b;Lb/f/b/h/d;Z)V

    goto/16 :goto_4

    :cond_19
    return-void
.end method

.method public static c(Lb/f/b/h/l/b$b;Lb/f/b/h/d;Z)V
    .locals 6

    .line 1
    iget v0, p1, Lb/f/b/h/d;->Z:F

    .line 2
    iget-object v1, p1, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v1

    iget-object v2, p1, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v2}, Lb/f/b/h/c;->c()I

    move-result v2

    iget-object v3, p1, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p1, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {v4}, Lb/f/b/h/c;->d()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lb/f/b/h/d;->r()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v0, v1

    add-int v4, v0, v3

    if-le v1, v2, :cond_2

    sub-int v4, v0, v3

    :cond_2
    invoke-virtual {p1, v0, v4}, Lb/f/b/h/d;->F(II)V

    invoke-static {p1, p0, p2}, Lb/f/b/h/l/h;->b(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Z)V

    return-void
.end method

.method public static d(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/d;Z)V
    .locals 7

    .line 1
    iget v0, p2, Lb/f/b/h/d;->Z:F

    .line 2
    iget-object v1, p2, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v1

    iget-object v2, p2, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p2, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v1

    iget-object v3, p2, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    invoke-virtual {p2}, Lb/f/b/h/d;->r()I

    move-result v3

    .line 3
    iget v4, p2, Lb/f/b/h/d;->c0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 4
    iget v4, p2, Lb/f/b/h/d;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p0, Lb/f/b/h/e;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lb/f/b/h/d;->r()I

    move-result p0

    .line 7
    iget v3, p2, Lb/f/b/h/d;->Z:F

    mul-float v3, v3, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    .line 8
    :cond_2
    :goto_1
    iget p0, p2, Lb/f/b/h/d;->o:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p0, p2, Lb/f/b/h/d;->p:I

    if-lez p0, :cond_3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p0, v1

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v2, p0

    add-int/2addr v3, v2

    invoke-virtual {p2, v2, v3}, Lb/f/b/h/d;->F(II)V

    invoke-static {p2, p1, p3}, Lb/f/b/h/l/h;->b(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Z)V

    :cond_4
    return-void
.end method

.method public static e(Lb/f/b/h/l/b$b;Lb/f/b/h/d;)V
    .locals 6

    .line 1
    iget v0, p1, Lb/f/b/h/d;->a0:F

    .line 2
    iget-object v1, p1, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v1

    iget-object v2, p1, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v2}, Lb/f/b/h/c;->c()I

    move-result v2

    iget-object v3, p1, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p1, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    invoke-virtual {v4}, Lb/f/b/h/c;->d()I

    move-result v4

    sub-int v4, v2, v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    move v1, v3

    move v2, v4

    :goto_0
    invoke-virtual {p1}, Lb/f/b/h/d;->l()I

    move-result v3

    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    if-le v1, v2, :cond_1

    sub-int v4, v1, v2

    sub-int/2addr v4, v3

    :cond_1
    int-to-float v4, v4

    mul-float v0, v0, v4

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int v4, v1, v0

    add-int v5, v4, v3

    if-le v1, v2, :cond_2

    sub-int v4, v1, v0

    sub-int v5, v4, v3

    :cond_2
    invoke-virtual {p1, v4, v5}, Lb/f/b/h/d;->G(II)V

    invoke-static {p1, p0}, Lb/f/b/h/l/h;->g(Lb/f/b/h/d;Lb/f/b/h/l/b$b;)V

    return-void
.end method

.method public static f(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/d;)V
    .locals 7

    .line 1
    iget v0, p2, Lb/f/b/h/d;->a0:F

    .line 2
    iget-object v1, p2, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v1

    iget-object v2, p2, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p2, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v1

    iget-object v3, p2, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_4

    invoke-virtual {p2}, Lb/f/b/h/d;->l()I

    move-result v3

    .line 3
    iget v4, p2, Lb/f/b/h/d;->c0:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    .line 4
    iget v4, p2, Lb/f/b/h/d;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p0, Lb/f/b/h/e;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lb/f/b/h/d;->l()I

    move-result p0

    mul-float v3, v0, v6

    int-to-float p0, p0

    mul-float v3, v3, p0

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v1, v2

    :cond_2
    :goto_1
    iget p0, p2, Lb/f/b/h/d;->r:I

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p0, p2, Lb/f/b/h/d;->s:I

    if-lez p0, :cond_3

    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float p0, v1

    mul-float v0, v0, p0

    add-float/2addr v0, v6

    float-to-int p0, v0

    add-int/2addr v2, p0

    add-int/2addr v3, v2

    invoke-virtual {p2, v2, v3}, Lb/f/b/h/d;->G(II)V

    invoke-static {p2, p1}, Lb/f/b/h/l/h;->g(Lb/f/b/h/d;Lb/f/b/h/l/b$b;)V

    :cond_4
    return-void
.end method

.method public static g(Lb/f/b/h/d;Lb/f/b/h/l/b$b;)V
    .locals 14

    sget-object v0, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    instance-of v1, p0, Lb/f/b/h/e;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lb/f/b/h/d;->y()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lb/f/b/h/l/b$a;

    invoke-direct {v1}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {p0, p1, v1, v2}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_0
    sget-object v1, Lb/f/b/h/c$a;->d:Lb/f/b/h/c$a;

    invoke-virtual {p0, v1}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v1

    sget-object v3, Lb/f/b/h/c$a;->f:Lb/f/b/h/c$a;

    invoke-virtual {p0, v3}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v3

    invoke-virtual {v1}, Lb/f/b/h/c;->c()I

    move-result v4

    invoke-virtual {v3}, Lb/f/b/h/c;->c()I

    move-result v5

    .line 1
    iget-object v6, v1, Lb/f/b/h/c;->a:Ljava/util/HashSet;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v6, :cond_c

    .line 2
    iget-boolean v1, v1, Lb/f/b/h/c;->c:Z

    if-eqz v1, :cond_c

    .line 3
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb/f/b/h/c;

    iget-object v10, v6, Lb/f/b/h/c;->d:Lb/f/b/h/d;

    invoke-static {v10}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v11

    invoke-virtual {v10}, Lb/f/b/h/d;->y()Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    new-instance v12, Lb/f/b/h/l/b$a;

    invoke-direct {v12}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {v10, p1, v12, v2}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_2
    invoke-virtual {v10}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v12

    if-ne v12, v0, :cond_8

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v11

    if-ne v11, v0, :cond_1

    iget v11, v10, Lb/f/b/h/d;->s:I

    if-ltz v11, :cond_1

    iget v11, v10, Lb/f/b/h/d;->r:I

    if-ltz v11, :cond_1

    .line 4
    iget v11, v10, Lb/f/b/h/d;->c0:I

    if-eq v11, v8, :cond_4

    .line 5
    iget v11, v10, Lb/f/b/h/d;->m:I

    if-nez v11, :cond_1

    .line 6
    iget v11, v10, Lb/f/b/h/d;->S:F

    cmpl-float v11, v11, v7

    if-nez v11, :cond_1

    .line 7
    :cond_4
    invoke-virtual {v10}, Lb/f/b/h/d;->x()Z

    move-result v11

    if-nez v11, :cond_1

    .line 8
    iget-boolean v11, v10, Lb/f/b/h/d;->A:Z

    if-nez v11, :cond_1

    .line 9
    iget-object v11, v10, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    if-ne v6, v11, :cond_5

    iget-object v12, v10, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v12, v12, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v12, :cond_5

    .line 10
    iget-boolean v12, v12, Lb/f/b/h/c;->c:Z

    if-nez v12, :cond_6

    .line 11
    :cond_5
    iget-object v12, v10, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    if-ne v6, v12, :cond_7

    iget-object v6, v11, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v6, :cond_7

    .line 12
    iget-boolean v6, v6, Lb/f/b/h/c;->c:Z

    if-eqz v6, :cond_7

    :cond_6
    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {v10}, Lb/f/b/h/d;->x()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0, p1, v10}, Lb/f/b/h/l/h;->f(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/d;)V

    goto :goto_0

    :cond_8
    :goto_2
    invoke-virtual {v10}, Lb/f/b/h/d;->y()Z

    move-result v11

    if-eqz v11, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-object v11, v10, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    if-ne v6, v11, :cond_a

    iget-object v12, v10, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v12, v12, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v12, :cond_a

    invoke-virtual {v11}, Lb/f/b/h/c;->d()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v10}, Lb/f/b/h/d;->l()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v10, v6, v11}, Lb/f/b/h/d;->G(II)V

    goto :goto_3

    :cond_a
    iget-object v12, v10, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    if-ne v6, v12, :cond_b

    iget-object v13, v12, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v13, :cond_b

    invoke-virtual {v12}, Lb/f/b/h/c;->d()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v10}, Lb/f/b/h/d;->l()I

    move-result v11

    sub-int v11, v6, v11

    invoke-virtual {v10, v11, v6}, Lb/f/b/h/d;->G(II)V

    :goto_3
    invoke-static {v10, p1}, Lb/f/b/h/l/h;->g(Lb/f/b/h/d;Lb/f/b/h/l/b$b;)V

    goto/16 :goto_0

    :cond_b
    if-ne v6, v11, :cond_1

    iget-object v6, v12, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v6, :cond_1

    .line 14
    iget-boolean v6, v6, Lb/f/b/h/c;->c:Z

    if-eqz v6, :cond_1

    .line 15
    invoke-static {p1, v10}, Lb/f/b/h/l/h;->e(Lb/f/b/h/l/b$b;Lb/f/b/h/d;)V

    goto/16 :goto_0

    :cond_c
    instance-of v1, p0, Lb/f/b/h/f;

    if-eqz v1, :cond_d

    return-void

    .line 16
    :cond_d
    iget-object v1, v3, Lb/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_19

    .line 17
    iget-boolean v3, v3, Lb/f/b/h/c;->c:Z

    if-eqz v3, :cond_19

    .line 18
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/b/h/c;

    iget-object v4, v3, Lb/f/b/h/c;->d:Lb/f/b/h/d;

    invoke-static {v4}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v6

    invoke-virtual {v4}, Lb/f/b/h/d;->y()Z

    move-result v10

    if-eqz v10, :cond_f

    if-eqz v6, :cond_f

    new-instance v10, Lb/f/b/h/l/b$a;

    invoke-direct {v10}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {v4, p1, v10, v2}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_f
    iget-object v10, v4, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    if-ne v3, v10, :cond_10

    iget-object v11, v4, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v11, v11, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v11, :cond_10

    .line 19
    iget-boolean v11, v11, Lb/f/b/h/c;->c:Z

    if-nez v11, :cond_11

    .line 20
    :cond_10
    iget-object v11, v4, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    if-ne v3, v11, :cond_12

    iget-object v10, v10, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v10, :cond_12

    .line 21
    iget-boolean v10, v10, Lb/f/b/h/c;->c:Z

    if-eqz v10, :cond_12

    :cond_11
    const/4 v10, 0x1

    goto :goto_5

    :cond_12
    const/4 v10, 0x0

    .line 22
    :goto_5
    invoke-virtual {v4}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v11

    if-ne v11, v0, :cond_15

    if-eqz v6, :cond_13

    goto :goto_6

    :cond_13
    invoke-virtual {v4}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v3

    if-ne v3, v0, :cond_e

    iget v3, v4, Lb/f/b/h/d;->s:I

    if-ltz v3, :cond_e

    iget v3, v4, Lb/f/b/h/d;->r:I

    if-ltz v3, :cond_e

    .line 23
    iget v3, v4, Lb/f/b/h/d;->c0:I

    if-eq v3, v8, :cond_14

    .line 24
    iget v3, v4, Lb/f/b/h/d;->m:I

    if-nez v3, :cond_e

    .line 25
    iget v3, v4, Lb/f/b/h/d;->S:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_e

    .line 26
    :cond_14
    invoke-virtual {v4}, Lb/f/b/h/d;->x()Z

    move-result v3

    if-nez v3, :cond_e

    .line 27
    iget-boolean v3, v4, Lb/f/b/h/d;->A:Z

    if-nez v3, :cond_e

    if-eqz v10, :cond_e

    .line 28
    invoke-virtual {v4}, Lb/f/b/h/d;->x()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p0, p1, v4}, Lb/f/b/h/l/h;->f(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/d;)V

    goto :goto_4

    :cond_15
    :goto_6
    invoke-virtual {v4}, Lb/f/b/h/d;->y()Z

    move-result v6

    if-eqz v6, :cond_16

    goto/16 :goto_4

    :cond_16
    iget-object v6, v4, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    if-ne v3, v6, :cond_17

    iget-object v11, v4, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v11, v11, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v11, :cond_17

    invoke-virtual {v6}, Lb/f/b/h/c;->d()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v4}, Lb/f/b/h/d;->l()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v3, v6}, Lb/f/b/h/d;->G(II)V

    goto :goto_7

    :cond_17
    iget-object v11, v4, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    if-ne v3, v11, :cond_18

    iget-object v3, v6, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v3, :cond_18

    invoke-virtual {v11}, Lb/f/b/h/c;->d()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v4}, Lb/f/b/h/d;->l()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual {v4, v6, v3}, Lb/f/b/h/d;->G(II)V

    :goto_7
    invoke-static {v4, p1}, Lb/f/b/h/l/h;->g(Lb/f/b/h/d;Lb/f/b/h/l/b$b;)V

    goto/16 :goto_4

    :cond_18
    if-eqz v10, :cond_e

    invoke-virtual {v4}, Lb/f/b/h/d;->x()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p1, v4}, Lb/f/b/h/l/h;->e(Lb/f/b/h/l/b$b;Lb/f/b/h/d;)V

    goto/16 :goto_4

    :cond_19
    sget-object v1, Lb/f/b/h/c$a;->g:Lb/f/b/h/c$a;

    invoke-virtual {p0, v1}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object p0

    .line 29
    iget-object v1, p0, Lb/f/b/h/c;->a:Ljava/util/HashSet;

    if-eqz v1, :cond_1f

    .line 30
    iget-boolean v1, p0, Lb/f/b/h/c;->c:Z

    if-eqz v1, :cond_1f

    .line 31
    invoke-virtual {p0}, Lb/f/b/h/c;->c()I

    move-result v1

    .line 32
    iget-object p0, p0, Lb/f/b/h/c;->a:Ljava/util/HashSet;

    .line 33
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/f/b/h/c;

    iget-object v4, v3, Lb/f/b/h/c;->d:Lb/f/b/h/d;

    invoke-static {v4}, Lb/f/b/h/l/h;->a(Lb/f/b/h/d;)Z

    move-result v5

    invoke-virtual {v4}, Lb/f/b/h/d;->y()Z

    move-result v6

    if-eqz v6, :cond_1b

    if-eqz v5, :cond_1b

    new-instance v6, Lb/f/b/h/l/b$a;

    invoke-direct {v6}, Lb/f/b/h/l/b$a;-><init>()V

    invoke-static {v4, p1, v6, v2}, Lb/f/b/h/e;->X(Lb/f/b/h/d;Lb/f/b/h/l/b$b;Lb/f/b/h/l/b$a;I)Z

    :cond_1b
    invoke-virtual {v4}, Lb/f/b/h/d;->q()Lb/f/b/h/d$a;

    move-result-object v6

    if-ne v6, v0, :cond_1c

    if-eqz v5, :cond_1a

    :cond_1c
    invoke-virtual {v4}, Lb/f/b/h/d;->y()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_8

    :cond_1d
    iget-object v5, v4, Lb/f/b/h/d;->H:Lb/f/b/h/c;

    if-ne v3, v5, :cond_1a

    .line 34
    iget-boolean v3, v4, Lb/f/b/h/d;->y:Z

    if-nez v3, :cond_1e

    goto :goto_9

    :cond_1e
    iget v3, v4, Lb/f/b/h/d;->W:I

    sub-int v3, v1, v3

    iget v5, v4, Lb/f/b/h/d;->R:I

    add-int/2addr v5, v3

    iput v3, v4, Lb/f/b/h/d;->V:I

    iget-object v6, v4, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    invoke-virtual {v6, v3}, Lb/f/b/h/c;->j(I)V

    iget-object v3, v4, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    invoke-virtual {v3, v5}, Lb/f/b/h/c;->j(I)V

    iget-object v3, v4, Lb/f/b/h/d;->H:Lb/f/b/h/c;

    .line 35
    iput v1, v3, Lb/f/b/h/c;->b:I

    iput-boolean v9, v3, Lb/f/b/h/c;->c:Z

    .line 36
    iput-boolean v9, v4, Lb/f/b/h/d;->i:Z

    .line 37
    :goto_9
    :try_start_0
    invoke-static {v4, p1}, Lb/f/b/h/l/h;->g(Lb/f/b/h/d;Lb/f/b/h/l/b$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    throw p0

    :cond_1f
    return-void
.end method
