.class public Lb/f/b/h/l/k;
.super Lb/f/b/h/l/o;
.source ""


# static fields
.field public static k:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lb/f/b/h/l/k;->k:[I

    return-void
.end method

.method public constructor <init>(Lb/f/b/h/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/f/b/h/l/o;-><init>(Lb/f/b/h/d;)V

    iget-object p1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    sget-object v0, Lb/f/b/h/l/f$a;->e:Lb/f/b/h/l/f$a;

    iput-object v0, p1, Lb/f/b/h/l/f;->e:Lb/f/b/h/l/f$a;

    iget-object p1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    sget-object v0, Lb/f/b/h/l/f$a;->f:Lb/f/b/h/l/f$a;

    iput-object v0, p1, Lb/f/b/h/l/f;->e:Lb/f/b/h/l/f$a;

    const/4 p1, 0x0

    iput p1, p0, Lb/f/b/h/l/o;->f:I

    return-void
.end method


# virtual methods
.method public a(Lb/f/b/h/l/d;)V
    .locals 17

    move-object/from16 v8, p0

    sget-object v9, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    iget-object v0, v8, Lb/f/b/h/l/o;->j:Lb/f/b/h/l/o$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v10, :cond_1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v0, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    iget-object v0, v0, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {v8, v1, v0, v11}, Lb/f/b/h/l/o;->l(Lb/f/b/h/c;Lb/f/b/h/c;I)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v3, v0, Lb/f/b/h/l/f;->j:Z

    const/high16 v12, 0x3f000000    # 0.5f

    if-nez v3, :cond_20

    iget-object v3, v8, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-ne v3, v9, :cond_20

    iget-object v3, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget v4, v3, Lb/f/b/h/d;->l:I

    if-eq v4, v1, :cond_1f

    if-eq v4, v2, :cond_2

    goto/16 :goto_11

    :cond_2
    iget v1, v3, Lb/f/b/h/d;->m:I

    const/4 v4, -0x1

    if-eqz v1, :cond_6

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 1
    :cond_3
    iget v1, v3, Lb/f/b/h/d;->T:I

    if-eq v1, v4, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v10, :cond_5

    const/4 v1, 0x0

    goto/16 :goto_10

    .line 2
    :cond_4
    iget-object v1, v3, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v1, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    int-to-float v1, v1

    .line 3
    iget v2, v3, Lb/f/b/h/d;->S:F

    div-float/2addr v1, v2

    goto/16 :goto_f

    .line 4
    :cond_5
    iget-object v1, v3, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v1, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    int-to-float v1, v1

    .line 5
    iget v2, v3, Lb/f/b/h/d;->S:F

    goto/16 :goto_e

    .line 6
    :cond_6
    :goto_1
    iget-object v0, v3, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v13, v0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v14, v0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v0, v3, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    iget-object v0, v0, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v1, v3, Lb/f/b/h/d;->E:Lb/f/b/h/c;

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget-object v2, v3, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    iget-object v5, v3, Lb/f/b/h/d;->G:Lb/f/b/h/c;

    iget-object v5, v5, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 7
    :goto_5
    iget v15, v3, Lb/f/b/h/d;->T:I

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    if-eqz v2, :cond_13

    if-eqz v5, :cond_13

    .line 8
    iget v7, v3, Lb/f/b/h/d;->S:F

    .line 9
    iget-boolean v0, v13, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v14, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_d

    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v1, v0, Lb/f/b/h/l/f;->c:Z

    if-eqz v1, :cond_c

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-boolean v1, v1, Lb/f/b/h/l/f;->c:Z

    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v1, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v1, v1, Lb/f/b/h/l/f;->f:I

    add-int v2, v0, v1

    iget-object v0, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget v1, v1, Lb/f/b/h/l/f;->f:I

    sub-int v3, v0, v1

    iget v0, v13, Lb/f/b/h/l/f;->g:I

    iget v1, v13, Lb/f/b/h/l/f;->f:I

    add-int v4, v0, v1

    iget v0, v14, Lb/f/b/h/l/f;->g:I

    iget v1, v14, Lb/f/b/h/l/f;->f:I

    sub-int v5, v0, v1

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    move-object/from16 v0, p0

    move v6, v7

    move v7, v15

    invoke-virtual/range {v0 .. v7}, Lb/f/b/h/l/k;->m([IIIIIFI)V

    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lb/f/b/h/l/g;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lb/f/b/h/l/g;->c(I)V

    :cond_c
    :goto_6
    return-void

    :cond_d
    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v1, v0, Lb/f/b/h/l/f;->j:Z

    if-eqz v1, :cond_10

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-boolean v2, v1, Lb/f/b/h/l/f;->j:Z

    if-eqz v2, :cond_10

    iget-boolean v2, v13, Lb/f/b/h/l/f;->c:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v14, Lb/f/b/h/l/f;->c:Z

    if-nez v2, :cond_e

    goto :goto_7

    :cond_e
    iget v2, v0, Lb/f/b/h/l/f;->g:I

    iget v0, v0, Lb/f/b/h/l/f;->f:I

    add-int/2addr v2, v0

    iget v0, v1, Lb/f/b/h/l/f;->g:I

    iget v1, v1, Lb/f/b/h/l/f;->f:I

    sub-int v3, v0, v1

    iget-object v0, v13, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget v1, v13, Lb/f/b/h/l/f;->f:I

    add-int v4, v0, v1

    iget-object v0, v14, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget v1, v14, Lb/f/b/h/l/f;->f:I

    sub-int v5, v0, v1

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    move-object/from16 v0, p0

    move v6, v7

    move/from16 v16, v7

    move v7, v15

    invoke-virtual/range {v0 .. v7}, Lb/f/b/h/l/k;->m([IIIIIFI)V

    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lb/f/b/h/l/g;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    aget v1, v1, v10

    invoke-virtual {v0, v1}, Lb/f/b/h/l/g;->c(I)V

    goto :goto_8

    :cond_f
    :goto_7
    return-void

    :cond_10
    move/from16 v16, v7

    :goto_8
    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v1, v0, Lb/f/b/h/l/f;->c:Z

    if-eqz v1, :cond_12

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-boolean v1, v1, Lb/f/b/h/l/f;->c:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v13, Lb/f/b/h/l/f;->c:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v14, Lb/f/b/h/l/f;->c:Z

    if-nez v1, :cond_11

    goto :goto_9

    :cond_11
    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v1, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v1, v1, Lb/f/b/h/l/f;->f:I

    add-int v2, v0, v1

    iget-object v0, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget v1, v1, Lb/f/b/h/l/f;->f:I

    sub-int v3, v0, v1

    iget-object v0, v13, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget v1, v13, Lb/f/b/h/l/f;->f:I

    add-int v4, v0, v1

    iget-object v0, v14, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget v1, v14, Lb/f/b/h/l/f;->f:I

    sub-int v5, v0, v1

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    move-object/from16 v0, p0

    move/from16 v6, v16

    move v7, v15

    invoke-virtual/range {v0 .. v7}, Lb/f/b/h/l/k;->m([IIIIIFI)V

    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    aget v1, v1, v11

    invoke-virtual {v0, v1}, Lb/f/b/h/l/g;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    sget-object v1, Lb/f/b/h/l/k;->k:[I

    aget v1, v1, v10

    goto/16 :goto_10

    :cond_12
    :goto_9
    return-void

    :cond_13
    if-eqz v0, :cond_19

    if-eqz v2, :cond_19

    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v1, v0, Lb/f/b/h/l/f;->c:Z

    if-eqz v1, :cond_18

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-boolean v1, v1, Lb/f/b/h/l/f;->c:Z

    if-nez v1, :cond_14

    goto :goto_b

    .line 10
    :cond_14
    iget v1, v3, Lb/f/b/h/d;->S:F

    .line 11
    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v2, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v2, v2, Lb/f/b/h/l/f;->f:I

    add-int/2addr v0, v2

    iget-object v2, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, v2, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/b/h/l/f;

    iget v2, v2, Lb/f/b/h/l/f;->g:I

    iget-object v3, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget v3, v3, Lb/f/b/h/l/f;->f:I

    sub-int/2addr v2, v3

    if-eq v15, v4, :cond_16

    if-eqz v15, :cond_16

    if-eq v15, v10, :cond_15

    goto/16 :goto_11

    :cond_15
    sub-int/2addr v2, v0

    invoke-virtual {v8, v2, v11}, Lb/f/b/h/l/o;->g(II)I

    move-result v0

    int-to-float v2, v0

    div-float/2addr v2, v1

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v8, v2, v10}, Lb/f/b/h/l/o;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_17

    int-to-float v0, v3

    mul-float v0, v0, v1

    goto :goto_a

    :cond_16
    sub-int/2addr v2, v0

    invoke-virtual {v8, v2, v11}, Lb/f/b/h/l/o;->g(II)I

    move-result v0

    int-to-float v2, v0

    mul-float v2, v2, v1

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v8, v2, v10}, Lb/f/b/h/l/o;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_17

    int-to-float v0, v3

    div-float/2addr v0, v1

    :goto_a
    add-float/2addr v0, v12

    float-to-int v0, v0

    :cond_17
    iget-object v1, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v1, v0}, Lb/f/b/h/l/g;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v0, v3}, Lb/f/b/h/l/g;->c(I)V

    goto/16 :goto_11

    :cond_18
    :goto_b
    return-void

    :cond_19
    if-eqz v1, :cond_20

    if-eqz v5, :cond_20

    iget-boolean v0, v13, Lb/f/b/h/l/f;->c:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, v14, Lb/f/b/h/l/f;->c:Z

    if-nez v0, :cond_1a

    goto :goto_d

    .line 12
    :cond_1a
    iget v0, v3, Lb/f/b/h/d;->S:F

    .line 13
    iget-object v1, v13, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/l/f;

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    iget v2, v13, Lb/f/b/h/l/f;->f:I

    add-int/2addr v1, v2

    iget-object v2, v14, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/b/h/l/f;

    iget v2, v2, Lb/f/b/h/l/f;->g:I

    iget v3, v14, Lb/f/b/h/l/f;->f:I

    sub-int/2addr v2, v3

    if-eq v15, v4, :cond_1c

    if-eqz v15, :cond_1b

    if-eq v15, v10, :cond_1c

    goto :goto_11

    :cond_1b
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v10}, Lb/f/b/h/l/o;->g(II)I

    move-result v1

    int-to-float v2, v1

    mul-float v2, v2, v0

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v8, v2, v11}, Lb/f/b/h/l/o;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_1d

    int-to-float v1, v3

    div-float/2addr v1, v0

    goto :goto_c

    :cond_1c
    sub-int/2addr v2, v1

    invoke-virtual {v8, v2, v10}, Lb/f/b/h/l/o;->g(II)I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, v0

    add-float/2addr v2, v12

    float-to-int v2, v2

    invoke-virtual {v8, v2, v11}, Lb/f/b/h/l/o;->g(II)I

    move-result v3

    if-eq v2, v3, :cond_1d

    int-to-float v1, v3

    mul-float v1, v1, v0

    :goto_c
    add-float/2addr v1, v12

    float-to-int v0, v1

    move v1, v0

    :cond_1d
    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v0, v3}, Lb/f/b/h/l/g;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    goto :goto_10

    :cond_1e
    :goto_d
    return-void

    .line 14
    :cond_1f
    iget-object v1, v3, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v1, :cond_20

    .line 15
    iget-object v1, v1, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v1, v1, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v2, v1, Lb/f/b/h/l/f;->j:Z

    if-eqz v2, :cond_20

    iget v2, v3, Lb/f/b/h/d;->q:F

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    int-to-float v1, v1

    :goto_e
    mul-float v1, v1, v2

    :goto_f
    add-float/2addr v1, v12

    float-to-int v1, v1

    :goto_10
    invoke-virtual {v0, v1}, Lb/f/b/h/l/g;->c(I)V

    :cond_20
    :goto_11
    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v1, v0, Lb/f/b/h/l/f;->c:Z

    if-eqz v1, :cond_28

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-boolean v2, v1, Lb/f/b/h/l/f;->c:Z

    if-nez v2, :cond_21

    goto/16 :goto_13

    :cond_21
    iget-boolean v0, v0, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_22

    iget-boolean v0, v1, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_22

    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v0, v0, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_22

    return-void

    :cond_22
    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v0, v0, Lb/f/b/h/l/f;->j:Z

    if-nez v0, :cond_23

    iget-object v0, v8, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-ne v0, v9, :cond_23

    iget-object v0, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget v1, v0, Lb/f/b/h/d;->l:I

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lb/f/b/h/d;->w()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v2, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v3, v2, Lb/f/b/h/l/f;->f:I

    add-int/2addr v0, v3

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    iget-object v3, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget v3, v3, Lb/f/b/h/l/f;->f:I

    add-int/2addr v1, v3

    sub-int v3, v1, v0

    invoke-virtual {v2, v0}, Lb/f/b/h/l/f;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-virtual {v0, v1}, Lb/f/b/h/l/f;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v0, v3}, Lb/f/b/h/l/g;->c(I)V

    return-void

    :cond_23
    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v0, v0, Lb/f/b/h/l/f;->j:Z

    if-nez v0, :cond_25

    iget-object v0, v8, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-ne v0, v9, :cond_25

    iget v0, v8, Lb/f/b/h/l/o;->a:I

    if-ne v0, v10, :cond_25

    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/l/f;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    iget-object v2, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v2, v2, Lb/f/b/h/l/f;->f:I

    add-int/2addr v0, v2

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    iget-object v2, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget v2, v2, Lb/f/b/h/l/f;->f:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v0, v0, Lb/f/b/h/l/g;->m:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget v2, v1, Lb/f/b/h/d;->p:I

    iget v1, v1, Lb/f/b/h/d;->o:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v2, :cond_24

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_24
    iget-object v1, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v1, v0}, Lb/f/b/h/l/g;->c(I)V

    :cond_25
    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v0, v0, Lb/f/b/h/l/f;->j:Z

    if-nez v0, :cond_26

    return-void

    :cond_26
    iget-object v0, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/b/h/l/f;

    iget-object v1, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/b/h/l/f;

    iget v2, v0, Lb/f/b/h/l/f;->g:I

    iget-object v3, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v4, v3, Lb/f/b/h/l/f;->f:I

    add-int/2addr v4, v2

    iget v5, v1, Lb/f/b/h/l/f;->g:I

    iget-object v6, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget v6, v6, Lb/f/b/h/l/f;->f:I

    add-int/2addr v6, v5

    iget-object v7, v8, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    .line 16
    iget v7, v7, Lb/f/b/h/d;->Z:F

    if-ne v0, v1, :cond_27

    const/high16 v7, 0x3f000000    # 0.5f

    goto :goto_12

    :cond_27
    move v2, v4

    move v5, v6

    :goto_12
    sub-int/2addr v5, v2

    .line 17
    iget-object v0, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    sub-int/2addr v5, v0

    int-to-float v0, v2

    add-float/2addr v0, v12

    int-to-float v1, v5

    mul-float v1, v1, v7

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {v3, v0}, Lb/f/b/h/l/f;->c(I)V

    iget-object v0, v8, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, v8, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget v1, v1, Lb/f/b/h/l/f;->g:I

    iget-object v2, v8, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v2, v2, Lb/f/b/h/l/f;->g:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lb/f/b/h/l/f;->c(I)V

    :cond_28
    :goto_13
    return-void
.end method

.method public d()V
    .locals 6

    sget-object v0, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    sget-object v1, Lb/f/b/h/d$a;->e:Lb/f/b/h/d$a;

    sget-object v2, Lb/f/b/h/d$a;->b:Lb/f/b/h/d$a;

    iget-object v3, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-boolean v4, v3, Lb/f/b/h/d;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v3}, Lb/f/b/h/d;->r()I

    move-result v3

    invoke-virtual {v4, v3}, Lb/f/b/h/l/g;->c(I)V

    :cond_0
    iget-object v3, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v3, v3, Lb/f/b/h/l/f;->j:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    invoke-virtual {v3}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v3

    iput-object v3, p0, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-eq v3, v0, :cond_7

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    .line 1
    iget-object v3, v3, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v3, :cond_1

    .line 2
    invoke-virtual {v3}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v4

    if-eq v4, v2, :cond_2

    :cond_1
    invoke-virtual {v3}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v4

    if-ne v4, v1, :cond_3

    :cond_2
    invoke-virtual {v3}, Lb/f/b/h/d;->r()I

    move-result v0

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {v1}, Lb/f/b/h/c;->d()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, v3, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v2, v2, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v4, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v4, v4, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    invoke-virtual {v4}, Lb/f/b/h/c;->d()I

    move-result v4

    invoke-virtual {p0, v1, v2, v4}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, v3, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v2, v2, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v3, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v3, v3, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {v3}, Lb/f/b/h/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v1, v0}, Lb/f/b/h/l/g;->c(I)V

    return-void

    :cond_3
    iget-object v1, p0, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    invoke-virtual {v2}, Lb/f/b/h/d;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Lb/f/b/h/l/g;->c(I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-ne v3, v1, :cond_7

    iget-object v3, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    .line 3
    iget-object v3, v3, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v3, :cond_5

    .line 4
    invoke-virtual {v3}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v4

    if-eq v4, v2, :cond_6

    :cond_5
    invoke-virtual {v3}, Lb/f/b/h/d;->m()Lb/f/b/h/d$a;

    move-result-object v2

    if-ne v2, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v1, v3, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v1, v1, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->D:Lb/f/b/h/c;

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, v3, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v1, v1, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->F:Lb/f/b/h/c;

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    return-void

    :cond_7
    :goto_0
    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-boolean v2, v1, Lb/f/b/h/l/f;->j:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_e

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-boolean v5, v2, Lb/f/b/h/d;->a:Z

    if-eqz v5, :cond_e

    iget-object v0, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v1, v0, v3

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v1, :cond_b

    aget-object v1, v0, v4

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Lb/f/b/h/d;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lb/f/b/h/c;->d()I

    move-result v1

    iput v1, v0, Lb/f/b/h/l/f;->f:I

    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v1, v1, v4

    goto/16 :goto_7

    :cond_8
    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    .line 5
    iget-object v3, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v1, Lb/f/b/h/l/f;->f:I

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_9
    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    .line 7
    iget-object v3, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v1, Lb/f/b/h/l/f;->f:I

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_a
    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iput-boolean v4, v0, Lb/f/b/h/l/f;->b:Z

    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iput-boolean v4, v0, Lb/f/b/h/l/f;->b:Z

    goto/16 :goto_9

    :cond_b
    aget-object v1, v0, v3

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v1, :cond_c

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    .line 9
    iget-object v3, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v1, Lb/f/b/h/l/f;->f:I

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_c
    aget-object v1, v0, v4

    iget-object v1, v1, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v1, :cond_d

    aget-object v0, v0, v4

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    .line 11
    iget-object v3, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v1, Lb/f/b/h/l/f;->f:I

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v2, v2, Lb/f/b/h/l/f;->g:I

    neg-int v2, v2

    goto :goto_2

    :cond_d
    instance-of v0, v2, Lb/f/b/h/g;

    if-nez v0, :cond_1c

    .line 13
    iget-object v0, v2, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v0, :cond_1c

    .line 14
    sget-object v0, Lb/f/b/h/c$a;->h:Lb/f/b/h/c$a;

    invoke-virtual {v2, v0}, Lb/f/b/h/d;->i(Lb/f/b/h/c$a;)Lb/f/b/h/c;

    move-result-object v0

    iget-object v0, v0, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    .line 15
    iget-object v1, v0, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    .line 16
    iget-object v1, v1, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v1, v1, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v0}, Lb/f/b/h/d;->s()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    :goto_1
    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget v2, v2, Lb/f/b/h/l/f;->g:I

    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    goto/16 :goto_9

    :cond_e
    iget-object v2, p0, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    if-ne v2, v0, :cond_15

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget v2, v0, Lb/f/b/h/d;->l:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_13

    const/4 v5, 0x3

    if-eq v2, v5, :cond_f

    goto/16 :goto_6

    :cond_f
    iget v2, v0, Lb/f/b/h/d;->m:I

    if-ne v2, v5, :cond_12

    iget-object v2, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iput-object p0, v2, Lb/f/b/h/l/f;->a:Lb/f/b/h/l/d;

    iget-object v2, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iput-object p0, v2, Lb/f/b/h/l/f;->a:Lb/f/b/h/l/d;

    iget-object v2, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v5, v2, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iput-object p0, v5, Lb/f/b/h/l/f;->a:Lb/f/b/h/l/d;

    iget-object v2, v2, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iput-object p0, v2, Lb/f/b/h/l/f;->a:Lb/f/b/h/l/d;

    iput-object p0, v1, Lb/f/b/h/l/f;->a:Lb/f/b/h/l/d;

    invoke-virtual {v0}, Lb/f/b/h/d;->x()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v1, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-object p0, v1, Lb/f/b/h/l/f;->a:Lb/f/b/h/l/d;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v1, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    iget-object v0, v0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v1, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    invoke-virtual {v0}, Lb/f/b/h/d;->w()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v1, v1, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    goto :goto_3

    :cond_12
    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v1, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v4, v0, Lb/f/b/h/l/f;->b:Z

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    :goto_3
    iget-object v0, v0, Lb/f/b/h/l/f;->l:Ljava/util/List;

    :goto_4
    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    goto :goto_5

    .line 17
    :cond_13
    iget-object v0, v0, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-nez v0, :cond_14

    goto :goto_6

    .line 18
    :cond_14
    iget-object v0, v0, Lb/f/b/h/d;->e:Lb/f/b/h/l/m;

    iget-object v0, v0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v1, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v4, v0, Lb/f/b/h/l/f;->b:Z

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    :goto_5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_6
    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v0, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v1, v3

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v2, :cond_19

    aget-object v2, v1, v4

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lb/f/b/h/d;->w()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lb/f/b/h/c;->d()I

    move-result v1

    iput v1, v0, Lb/f/b/h/l/f;->f:I

    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v1, v1, v4

    :goto_7
    invoke-virtual {v1}, Lb/f/b/h/c;->d()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lb/f/b/h/l/f;->f:I

    goto/16 :goto_9

    :cond_16
    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v0, v0, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v1, v1, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v1

    .line 19
    iget-object v2, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0, p0}, Lb/f/b/h/l/k;->a(Lb/f/b/h/l/d;)V

    :cond_17
    iget-object v0, v1, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lb/f/b/h/l/f;->j:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0, p0}, Lb/f/b/h/l/k;->a(Lb/f/b/h/l/d;)V

    .line 20
    :cond_18
    sget-object v0, Lb/f/b/h/l/o$a;->e:Lb/f/b/h/l/o$a;

    iput-object v0, p0, Lb/f/b/h/l/o;->j:Lb/f/b/h/l/o$a;

    goto/16 :goto_9

    :cond_19
    aget-object v2, v1, v3

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v2, :cond_1a

    aget-object v0, v1, v3

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    .line 21
    iget-object v3, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v1, Lb/f/b/h/l/f;->f:I

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 22
    :cond_1a
    aget-object v2, v1, v4

    iget-object v2, v2, Lb/f/b/h/c;->f:Lb/f/b/h/c;

    if-eqz v2, :cond_1b

    aget-object v0, v1, v4

    invoke-virtual {p0, v0}, Lb/f/b/h/l/o;->h(Lb/f/b/h/c;)Lb/f/b/h/l/f;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget-object v2, v2, Lb/f/b/h/d;->L:[Lb/f/b/h/c;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lb/f/b/h/c;->d()I

    move-result v2

    neg-int v2, v2

    .line 23
    iget-object v3, v1, Lb/f/b/h/l/f;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v2, v1, Lb/f/b/h/l/f;->f:I

    iget-object v0, v0, Lb/f/b/h/l/f;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    const/4 v2, -0x1

    iget-object v3, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {p0, v0, v1, v2, v3}, Lb/f/b/h/l/o;->c(Lb/f/b/h/l/f;Lb/f/b/h/l/f;ILb/f/b/h/l/g;)V

    goto :goto_9

    :cond_1b
    instance-of v1, v0, Lb/f/b/h/g;

    if-nez v1, :cond_1c

    .line 25
    iget-object v1, v0, Lb/f/b/h/d;->P:Lb/f/b/h/d;

    if-eqz v1, :cond_1c

    .line 26
    iget-object v1, v1, Lb/f/b/h/d;->d:Lb/f/b/h/l/k;

    iget-object v1, v1, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v0}, Lb/f/b/h/d;->s()I

    move-result v0

    invoke-virtual {p0, v2, v1, v0}, Lb/f/b/h/l/o;->b(Lb/f/b/h/l/f;Lb/f/b/h/l/f;I)V

    :goto_8
    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-object v2, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {p0, v0, v1, v4, v2}, Lb/f/b/h/l/o;->c(Lb/f/b/h/l/f;Lb/f/b/h/l/f;ILb/f/b/h/l/g;)V

    :cond_1c
    :goto_9
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iget-boolean v1, v0, Lb/f/b/h/l/f;->j:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget v0, v0, Lb/f/b/h/l/f;->g:I

    .line 1
    iput v0, v1, Lb/f/b/h/d;->U:I

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/b/h/l/o;->c:Lb/f/b/h/l/l;

    iget-object v0, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v0}, Lb/f/b/h/l/f;->b()V

    iget-object v0, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-virtual {v0}, Lb/f/b/h/l/f;->b()V

    iget-object v0, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    invoke-virtual {v0}, Lb/f/b/h/l/f;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/b/h/l/o;->g:Z

    return-void
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, Lb/f/b/h/l/o;->d:Lb/f/b/h/d$a;

    sget-object v1, Lb/f/b/h/d$a;->d:Lb/f/b/h/d$a;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    iget v0, v0, Lb/f/b/h/d;->l:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final m([IIIIIFI)V
    .locals 2

    sub-int/2addr p3, p2

    sub-int/2addr p5, p4

    const/4 p2, -0x1

    const/4 p4, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    if-eq p7, p2, :cond_2

    if-eqz p7, :cond_1

    if-eq p7, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p2, p3

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p3, p1, p4

    aput p2, p1, v1

    goto :goto_0

    :cond_1
    int-to-float p2, p5

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    aput p2, p1, p4

    aput p5, p1, v1

    goto :goto_0

    :cond_2
    int-to-float p2, p5

    mul-float p2, p2, p6

    add-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p7, p3

    div-float/2addr p7, p6

    add-float/2addr p7, v0

    float-to-int p6, p7

    if-gt p2, p3, :cond_3

    if-gt p5, p5, :cond_3

    aput p2, p1, p4

    aput p5, p1, v1

    goto :goto_0

    :cond_3
    if-gt p3, p3, :cond_4

    if-gt p6, p5, :cond_4

    aput p3, p1, p4

    aput p6, p1, v1

    :cond_4
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/b/h/l/o;->g:Z

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    invoke-virtual {v1}, Lb/f/b/h/l/f;->b()V

    iget-object v1, p0, Lb/f/b/h/l/o;->h:Lb/f/b/h/l/f;

    iput-boolean v0, v1, Lb/f/b/h/l/f;->j:Z

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    invoke-virtual {v1}, Lb/f/b/h/l/f;->b()V

    iget-object v1, p0, Lb/f/b/h/l/o;->i:Lb/f/b/h/l/f;

    iput-boolean v0, v1, Lb/f/b/h/l/f;->j:Z

    iget-object v1, p0, Lb/f/b/h/l/o;->e:Lb/f/b/h/l/g;

    iput-boolean v0, v1, Lb/f/b/h/l/f;->j:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "HorizontalRun "

    invoke-static {v0}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/f/b/h/l/o;->b:Lb/f/b/h/d;

    .line 1
    iget-object v1, v1, Lb/f/b/h/d;->d0:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
