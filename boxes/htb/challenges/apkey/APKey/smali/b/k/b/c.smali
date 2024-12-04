.class public Lb/k/b/c;
.super Lb/k/b/y0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/k/b/c$d;,
        Lb/k/b/c$b;,
        Lb/k/b/c$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/k/b/y0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Z)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/k/b/y0$d;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v6, p2

    sget-object v8, Lb/k/b/y0$d$c;->d:Lb/k/b/y0$d$c;

    sget-object v9, Lb/k/b/y0$d$c;->c:Lb/k/b/y0$d$c;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v10, v1

    move-object v11, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/b/y0$d;

    .line 1
    iget-object v4, v1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 2
    iget-object v4, v4, Lb/k/b/m;->F:Landroid/view/View;

    invoke-static {v4}, Lb/k/b/y0$d$c;->c(Landroid/view/View;)Lb/k/b/y0$d$c;

    move-result-object v4

    .line 3
    iget-object v5, v1, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    .line 4
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_1

    if-eq v5, v2, :cond_2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_1
    if-eq v4, v9, :cond_0

    move-object v11, v1

    goto :goto_0

    :cond_2
    if-ne v4, v9, :cond_0

    if-nez v10, :cond_0

    move-object v10, v1

    goto :goto_0

    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/b/y0$d;

    new-instance v2, Lb/h/f/a;

    invoke-direct {v2}, Lb/h/f/a;-><init>()V

    .line 5
    invoke-virtual {v1}, Lb/k/b/y0$d;->d()V

    iget-object v3, v1, Lb/k/b/y0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v3, Lb/k/b/c$b;

    invoke-direct {v3, v1, v2, v6}, Lb/k/b/c$b;-><init>(Lb/k/b/y0$d;Lb/h/f/a;Z)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lb/h/f/a;

    invoke-direct {v2}, Lb/h/f/a;-><init>()V

    .line 7
    invoke-virtual {v1}, Lb/k/b/y0$d;->d()V

    iget-object v3, v1, Lb/k/b/y0$d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v3, Lb/k/b/c$d;

    if-eqz v6, :cond_4

    if-ne v1, v10, :cond_5

    goto :goto_2

    :cond_4
    if-ne v1, v11, :cond_5

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-direct {v3, v1, v2, v6, v4}, Lb/k/b/c$d;-><init>(Lb/k/b/y0$d;Lb/h/f/a;ZZ)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lb/k/b/c$a;

    invoke-direct {v2, v7, v14, v1}, Lb/k/b/c$a;-><init>(Lb/k/b/c;Ljava/util/List;Lb/k/b/y0$d;)V

    .line 9
    iget-object v1, v1, Lb/k/b/y0$d;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_6
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v5, v1

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/b/c$d;

    invoke-virtual {v1}, Lb/k/b/c$c;->b()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 11
    :cond_8
    iget-object v2, v1, Lb/k/b/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lb/k/b/c$d;->c(Ljava/lang/Object;)Lb/k/b/t0;

    move-result-object v2

    iget-object v3, v1, Lb/k/b/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lb/k/b/c$d;->c(Ljava/lang/Object;)Lb/k/b/t0;

    move-result-object v3

    const-string v4, " returned Transition "

    const-string v16, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
    iget-object v3, v1, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 13
    iget-object v3, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lb/k/b/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lb/k/b/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v3

    :goto_6
    if-nez v5, :cond_c

    move-object v5, v2

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_7

    if-ne v5, v2, :cond_d

    goto :goto_4

    .line 15
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v16 .. v16}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 16
    iget-object v3, v1, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 17
    iget-object v3, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, v1, Lb/k/b/c$d;->c:Ljava/lang/Object;

    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v4, "FragmentManager"

    if-nez v5, :cond_10

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/b/c$d;

    .line 21
    iget-object v2, v1, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 22
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lb/k/b/c$c;->a()V

    goto :goto_7

    :cond_f
    move-object v10, v8

    move-object/from16 v24, v12

    move-object/from16 v29, v14

    move-object v8, v15

    move-object v12, v4

    goto/16 :goto_1e

    :cond_10
    new-instance v3, Landroid/view/View;

    .line 23
    iget-object v0, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v12

    new-instance v12, Lb/e/a;

    invoke-direct {v12}, Lb/e/a;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v2

    move-object/from16 v2, v16

    move-object/from16 v26, v17

    const/16 v27, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v3, v10

    move-object v4, v11

    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_24

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v28, v9

    move-object/from16 v9, v18

    check-cast v9, Lb/k/b/c$d;

    .line 25
    iget-object v9, v9, Lb/k/b/c$d;->e:Ljava/lang/Object;

    if-eqz v9, :cond_11

    const/16 v18, 0x1

    goto :goto_9

    :cond_11
    const/16 v18, 0x0

    :goto_9
    if-eqz v18, :cond_23

    if-eqz v3, :cond_23

    if-eqz v4, :cond_23

    .line 26
    invoke-virtual {v5, v9}, Lb/k/b/t0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Lb/k/b/t0;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 27
    iget-object v2, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 28
    iget-object v2, v2, Lb/k/b/m;->I:Lb/k/b/m$b;

    if-eqz v2, :cond_12

    iget-object v2, v2, Lb/k/b/m$b;->i:Ljava/util/ArrayList;

    if-nez v2, :cond_13

    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    move-object/from16 v18, v5

    .line 29
    iget-object v5, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 30
    iget-object v5, v5, Lb/k/b/m;->I:Lb/k/b/m$b;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lb/k/b/m$b;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_15

    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    move-object/from16 v29, v14

    .line 31
    iget-object v14, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 32
    iget-object v14, v14, Lb/k/b/m;->I:Lb/k/b/m$b;

    if-eqz v14, :cond_16

    iget-object v14, v14, Lb/k/b/m$b;->j:Ljava/util/ArrayList;

    if-nez v14, :cond_17

    :cond_16
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    const/16 v19, 0x0

    move-object/from16 v30, v8

    move-object/from16 v31, v13

    const/4 v8, 0x0

    .line 33
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_19

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v19, v14

    const/4 v14, -0x1

    if-eq v13, v14, :cond_18

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v19

    goto :goto_a

    .line 34
    :cond_19
    iget-object v5, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 35
    iget-object v5, v5, Lb/k/b/m;->I:Lb/k/b/m$b;

    if-eqz v5, :cond_1a

    iget-object v5, v5, Lb/k/b/m$b;->j:Ljava/util/ArrayList;

    if-nez v5, :cond_1b

    :cond_1a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    move-object v8, v5

    if-nez v6, :cond_1c

    .line 36
    iget-object v5, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 37
    invoke-virtual {v5}, Lb/k/b/m;->p()V

    .line 38
    iget-object v5, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 39
    invoke-virtual {v5}, Lb/k/b/m;->m()V

    goto :goto_b

    .line 40
    :cond_1c
    iget-object v5, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 41
    invoke-virtual {v5}, Lb/k/b/m;->m()V

    .line 42
    iget-object v5, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 43
    invoke-virtual {v5}, Lb/k/b/m;->p()V

    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v5, :cond_1d

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v14, v5}, Lb/e/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v20

    goto :goto_c

    :cond_1d
    new-instance v13, Lb/e/a;

    invoke-direct {v13}, Lb/e/a;-><init>()V

    .line 44
    iget-object v5, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 45
    iget-object v5, v5, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v7, v13, v5}, Lb/k/b/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 46
    invoke-static {v13, v2}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {v13}, Lb/e/a;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 48
    invoke-static {v12, v5}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 49
    new-instance v14, Lb/e/a;

    invoke-direct {v14}, Lb/e/a;-><init>()V

    .line 50
    iget-object v5, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 51
    iget-object v5, v5, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v7, v14, v5}, Lb/k/b/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 52
    invoke-static {v14, v8}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 53
    invoke-virtual {v12}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object v5

    .line 54
    invoke-static {v14, v5}, Lb/e/e;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 55
    invoke-static {v12, v14}, Lb/k/b/r0;->m(Lb/e/a;Lb/e/a;)V

    invoke-virtual {v12}, Lb/e/a;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v7, v13, v5}, Lb/k/b/c;->l(Lb/e/a;Ljava/util/Collection;)V

    invoke-virtual {v12}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v7, v14, v5}, Lb/k/b/c;->l(Lb/e/a;Ljava/util/Collection;)V

    invoke-virtual {v12}, Lb/e/f;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v5, p1

    move-object v6, v1

    move-object/from16 v32, v12

    move-object v8, v15

    move-object/from16 v35, v17

    move-object v15, v0

    move-object v12, v11

    move-object/from16 v0, v16

    move-object/from16 v11, v18

    goto/16 :goto_10

    .line 56
    :cond_1e
    iget-object v4, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    iget-object v3, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    const/4 v5, 0x1

    .line 57
    invoke-static {v4, v3, v6, v13, v5}, Lb/k/b/r0;->c(Lb/k/b/m;Lb/k/b/m;ZLb/e/a;Z)V

    .line 58
    iget-object v5, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 59
    new-instance v4, Lb/k/b/h;

    move-object v3, v0

    move-object v0, v4

    move-object v6, v1

    move-object/from16 v1, p0

    move-object/from16 v32, v12

    move-object/from16 v12, p1

    move-object/from16 p1, v2

    move-object v2, v11

    move-object/from16 v33, v11

    move-object/from16 v34, v15

    move-object/from16 v11, v16

    move-object v15, v3

    move-object v3, v10

    move-object/from16 v36, v10

    move-object/from16 v35, v17

    move-object v10, v4

    move/from16 v4, p2

    move-object/from16 v37, v11

    move-object/from16 v38, v12

    move-object/from16 v11, v18

    move-object v12, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lb/k/b/h;-><init>(Lb/k/b/c;Lb/k/b/y0$d;Lb/k/b/y0$d;ZLb/e/a;)V

    invoke-static {v12, v10}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    invoke-virtual {v13}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lb/e/e$e;

    invoke-virtual {v0}, Lb/e/e$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    move-object v1, v0

    check-cast v1, Lb/e/e$a;

    invoke-virtual {v1}, Lb/e/e$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Lb/e/e$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v7, v6, v1}, Lb/k/b/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_d

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v11, v9, v0}, Lb/k/b/t0;->t(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v26, v0

    :cond_20
    invoke-virtual {v14}, Lb/e/a;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lb/e/e$e;

    invoke-virtual {v0}, Lb/e/e$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    move-object v1, v0

    check-cast v1, Lb/e/e$a;

    invoke-virtual {v1}, Lb/e/e$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lb/e/e$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v7, v15, v1}, Lb/k/b/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_e

    :cond_21
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v14, v0}, Lb/e/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_22

    .line 60
    iget-object v1, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 61
    new-instance v2, Lb/k/b/i;

    move-object/from16 v5, v38

    invoke-direct {v2, v7, v11, v0, v5}, Lb/k/b/i;-><init>(Lb/k/b/c;Lb/k/b/t0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v2}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    const/4 v0, 0x1

    move-object/from16 v0, v37

    const/16 v27, 0x1

    goto :goto_f

    :cond_22
    move-object/from16 v5, v38

    move-object/from16 v0, v37

    :goto_f
    invoke-virtual {v11, v9, v0, v6}, Lb/k/b/t0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    invoke-virtual/range {v16 .. v23}, Lb/k/b/t0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v8, v34

    move-object/from16 v10, v36

    invoke-virtual {v8, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, v33

    invoke-virtual {v8, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v9

    move-object v3, v10

    move-object v4, v12

    goto :goto_10

    :cond_23
    move-object v6, v1

    move-object/from16 v30, v8

    move-object/from16 v32, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v14

    move-object v8, v15

    move-object/from16 v35, v17

    move-object v15, v0

    move-object v12, v11

    move-object/from16 v0, v16

    move-object v11, v5

    move-object/from16 v5, p1

    :goto_10
    move-object/from16 v16, v0

    move-object/from16 p1, v5

    move-object v1, v6

    move-object v5, v11

    move-object v11, v12

    move-object v0, v15

    move-object/from16 v9, v28

    move-object/from16 v14, v29

    move-object/from16 v13, v31

    move-object/from16 v12, v32

    move-object/from16 v17, v35

    move/from16 v6, p2

    move-object v15, v8

    move-object/from16 v8, v30

    goto/16 :goto_8

    :cond_24
    move-object v6, v1

    move-object/from16 v30, v8

    move-object/from16 v28, v9

    move-object/from16 v32, v12

    move-object/from16 v31, v13

    move-object/from16 v29, v14

    move-object v8, v15

    move-object/from16 v35, v17

    move-object v15, v0

    move-object v12, v11

    move-object/from16 v0, v16

    move-object v11, v5

    move-object/from16 v5, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/k/b/c$d;

    invoke-virtual {v14}, Lb/k/b/c$c;->b()Z

    move-result v16

    if-eqz v16, :cond_25

    move-object/from16 p1, v9

    .line 62
    iget-object v9, v14, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    move-object/from16 v33, v12

    .line 63
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lb/k/b/c$c;->a()V

    move-object/from16 v16, v0

    move-object/from16 v25, v2

    move-object v2, v4

    move-object v9, v10

    move-object/from16 v0, v26

    move-object/from16 v4, v28

    move-object/from16 v10, v30

    goto/16 :goto_17

    :cond_25
    move-object/from16 p1, v9

    move-object/from16 v33, v12

    .line 64
    iget-object v9, v14, Lb/k/b/c$d;->c:Ljava/lang/Object;

    .line 65
    invoke-virtual {v11, v9}, Lb/k/b/t0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 66
    iget-object v12, v14, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    if-eqz v2, :cond_27

    if-eq v12, v3, :cond_26

    if-ne v12, v4, :cond_27

    :cond_26
    const/4 v4, 0x1

    goto :goto_12

    :cond_27
    const/4 v4, 0x0

    :goto_12
    if-nez v9, :cond_29

    if-nez v4, :cond_28

    .line 67
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Lb/k/b/c$c;->a()V

    :cond_28
    move-object/from16 v16, v0

    move-object/from16 v25, v2

    move-object v2, v10

    move-object/from16 v0, v26

    move-object/from16 v4, v28

    move-object/from16 v10, v30

    goto/16 :goto_16

    :cond_29
    move-object/from16 v25, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v34, v10

    .line 68
    iget-object v10, v12, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 69
    iget-object v10, v10, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v7, v2, v10}, Lb/k/b/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v4, :cond_2b

    if-ne v12, v3, :cond_2a

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_2a
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_2b
    :goto_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v11, v9, v0}, Lb/k/b/t0;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v16, v0

    move-object/from16 v10, v30

    goto :goto_14

    :cond_2c
    invoke-virtual {v11, v9, v2}, Lb/k/b/t0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    move-object/from16 v19, v2

    invoke-virtual/range {v16 .. v23}, Lb/k/b/t0;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 70
    iget-object v4, v12, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    move-object/from16 v10, v30

    if-ne v4, v10, :cond_2d

    move-object/from16 v4, v29

    .line 71
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v16, v0

    .line 72
    iget-object v0, v12, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 73
    iget-object v0, v0, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v11, v9, v0, v2}, Lb/k/b/t0;->q(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 74
    iget-object v0, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 75
    new-instance v4, Lb/k/b/j;

    invoke-direct {v4, v7, v2}, Lb/k/b/j;-><init>(Lb/k/b/c;Ljava/util/ArrayList;)V

    invoke-static {v0, v4}, Lb/h/j/o;->a(Landroid/view/View;Ljava/lang/Runnable;)Lb/h/j/o;

    goto :goto_14

    :cond_2d
    move-object/from16 v16, v0

    .line 76
    :goto_14
    iget-object v0, v12, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    move-object/from16 v4, v28

    if-ne v0, v4, :cond_2f

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v27, :cond_2e

    invoke-virtual {v11, v9, v5}, Lb/k/b/t0;->s(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2e
    move-object/from16 v0, v26

    goto :goto_15

    :cond_2f
    move-object/from16 v0, v26

    invoke-virtual {v11, v9, v0}, Lb/k/b/t0;->t(Ljava/lang/Object;Landroid/view/View;)V

    :goto_15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-boolean v2, v14, Lb/k/b/c$d;->d:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v11, v13, v9, v2}, Lb/k/b/t0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v2, v34

    goto :goto_16

    :cond_30
    const/4 v2, 0x0

    move-object/from16 v12, v34

    invoke-virtual {v11, v12, v9, v2}, Lb/k/b/t0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_16
    move-object v9, v2

    move-object/from16 v2, v33

    :goto_17
    move-object/from16 v26, v0

    move-object/from16 v28, v4

    move-object/from16 v30, v10

    move-object/from16 v0, v16

    move-object/from16 v12, v33

    move-object v4, v2

    move-object v10, v9

    move-object/from16 v2, v25

    move-object/from16 v9, p1

    goto/16 :goto_11

    :cond_31
    move-object/from16 v33, v12

    move-object v12, v10

    move-object/from16 v10, v30

    invoke-virtual {v11, v13, v12, v2}, Lb/k/b/t0;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb/k/b/c$d;

    invoke-virtual {v5}, Lb/k/b/c$c;->b()Z

    move-result v9

    if-eqz v9, :cond_32

    goto :goto_18

    .line 80
    :cond_32
    iget-object v9, v5, Lb/k/b/c$d;->c:Ljava/lang/Object;

    .line 81
    iget-object v12, v5, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    move-object/from16 v13, v33

    if-eqz v2, :cond_34

    if-eq v12, v3, :cond_33

    if-ne v12, v13, :cond_34

    :cond_33
    const/4 v14, 0x1

    goto :goto_19

    :cond_34
    const/4 v14, 0x0

    :goto_19
    if-nez v9, :cond_36

    if-eqz v14, :cond_35

    goto :goto_1a

    :cond_35
    move-object/from16 v12, v35

    goto :goto_1c

    .line 82
    :cond_36
    :goto_1a
    iget-object v9, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 83
    invoke-static {v9}, Lb/h/j/q;->u(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_38

    const/4 v9, 0x2

    invoke-static {v9}, Lb/k/b/c0;->M(I)Z

    move-result v9

    if-eqz v9, :cond_37

    const-string v9, "SpecialEffectsController: Container "

    invoke-static {v9}, Lc/a/a/a/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 84
    iget-object v14, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 85
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " has not been laid out. Completing operation "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, v35

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_37
    move-object/from16 v12, v35

    :goto_1b
    invoke-virtual {v5}, Lb/k/b/c$c;->a()V

    :goto_1c
    move-object/from16 v35, v12

    goto :goto_1d

    :cond_38
    move-object/from16 v12, v35

    .line 86
    iget-object v9, v5, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 87
    iget-object v9, v9, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 88
    iget-object v14, v5, Lb/k/b/c$c;->b:Lb/h/f/a;

    move-object/from16 p1, v3

    .line 89
    new-instance v3, Lb/k/b/k;

    invoke-direct {v3, v7, v5}, Lb/k/b/k;-><init>(Lb/k/b/c;Lb/k/b/c$d;)V

    invoke-virtual {v11, v9, v0, v14, v3}, Lb/k/b/t0;->u(Lb/k/b/m;Ljava/lang/Object;Lb/h/f/a;Ljava/lang/Runnable;)V

    move-object/from16 v3, p1

    :goto_1d
    move-object/from16 v33, v13

    goto :goto_18

    :cond_39
    move-object/from16 v12, v35

    .line 90
    iget-object v3, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 91
    invoke-static {v3}, Lb/h/j/q;->u(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_1e

    :cond_3a
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lb/k/b/r0;->o(Ljava/util/ArrayList;I)V

    invoke-virtual {v11, v15}, Lb/k/b/t0;->n(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    .line 92
    iget-object v3, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 93
    invoke-virtual {v11, v3, v0}, Lb/k/b/t0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 94
    iget-object v0, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    move-object/from16 v16, v11

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v15

    move-object/from16 v21, v32

    .line 95
    invoke-virtual/range {v16 .. v21}, Lb/k/b/t0;->v(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lb/k/b/r0;->o(Ljava/util/ArrayList;I)V

    invoke-virtual {v11, v2, v6, v15}, Lb/k/b/t0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 96
    :goto_1e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    .line 97
    iget-object v11, v7, Lb/k/b/y0;->a:Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_1f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lb/k/b/c$b;

    invoke-virtual {v6}, Lb/k/b/c$c;->b()Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_20

    :cond_3b
    invoke-virtual {v6, v13}, Lb/k/b/c$b;->c(Landroid/content/Context;)Lb/k/b/t;

    move-result-object v1

    if-nez v1, :cond_3c

    goto :goto_20

    :cond_3c
    iget-object v5, v1, Lb/k/b/t;->b:Landroid/animation/Animator;

    if-nez v5, :cond_3d

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 99
    :cond_3d
    iget-object v4, v6, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 100
    iget-object v1, v4, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 101
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x2

    invoke-static {v2}, Lb/k/b/c0;->M(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring Animator set on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as this Fragment was involved in a Transition."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    :goto_20
    invoke-virtual {v6}, Lb/k/b/c$c;->a()V

    goto :goto_1f

    .line 102
    :cond_3f
    iget-object v0, v4, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    if-ne v0, v10, :cond_40

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_21

    :cond_40
    const/4 v0, 0x0

    const/16 v16, 0x0

    :goto_21
    move-object/from16 v3, v29

    if-eqz v16, :cond_41

    .line 103
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_41
    iget-object v2, v1, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v1, Lb/k/b/d;

    move-object v0, v1

    move-object/from16 v34, v8

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 p1, v2

    move-object v2, v11

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    move-object/from16 v18, v4

    move/from16 v4, v16

    move-object/from16 v30, v10

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 p2, v6

    invoke-direct/range {v0 .. v6}, Lb/k/b/d;-><init>(Lb/k/b/c;Landroid/view/ViewGroup;Landroid/view/View;ZLb/k/b/y0$d;Lb/k/b/c$b;)V

    invoke-virtual {v10, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    move-object/from16 v1, p2

    .line 104
    iget-object v0, v1, Lb/k/b/c$c;->b:Lb/h/f/a;

    .line 105
    new-instance v1, Lb/k/b/e;

    invoke-direct {v1, v7, v10}, Lb/k/b/e;-><init>(Lb/k/b/c;Landroid/animation/Animator;)V

    invoke-virtual {v0, v1}, Lb/h/f/a;->b(Lb/h/f/a$a;)V

    const/4 v0, 0x1

    move-object/from16 v29, v17

    move-object/from16 v10, v30

    move-object/from16 v8, v34

    goto/16 :goto_1f

    :cond_42
    move-object/from16 v17, v29

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/k/b/c$b;

    .line 106
    iget-object v3, v2, Lb/k/b/c$c;->a:Lb/k/b/y0$d;

    .line 107
    iget-object v4, v3, Lb/k/b/y0$d;->c:Lb/k/b/m;

    const-string v5, "Ignoring Animation set on "

    if-eqz v9, :cond_43

    const/4 v3, 0x2

    .line 108
    invoke-static {v3}, Lb/k/b/c0;->M(I)Z

    move-result v3

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Transitions."

    goto :goto_23

    :cond_43
    const/4 v6, 0x2

    if-eqz v0, :cond_45

    invoke-static {v6}, Lb/k/b/c0;->M(I)Z

    move-result v3

    if-eqz v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as Animations cannot run alongside Animators."

    :goto_23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-virtual {v2}, Lb/k/b/c$c;->a()V

    goto :goto_22

    :cond_45
    iget-object v4, v4, Lb/k/b/m;->F:Landroid/view/View;

    invoke-virtual {v2, v13}, Lb/k/b/c$b;->c(Landroid/content/Context;)Lb/k/b/t;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iget-object v5, v5, Lb/k/b/t;->a:Landroid/view/animation/Animation;

    .line 111
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    iget-object v3, v3, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    .line 113
    sget-object v6, Lb/k/b/y0$d$c;->b:Lb/k/b/y0$d$c;

    if-eq v3, v6, :cond_46

    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2}, Lb/k/b/c$c;->a()V

    goto :goto_24

    :cond_46
    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    new-instance v3, Lb/k/b/u;

    invoke-direct {v3, v5, v11, v4}, Lb/k/b/u;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    new-instance v5, Lb/k/b/f;

    invoke-direct {v5, v7, v11, v4, v2}, Lb/k/b/f;-><init>(Lb/k/b/c;Landroid/view/ViewGroup;Landroid/view/View;Lb/k/b/c$b;)V

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 114
    :goto_24
    iget-object v3, v2, Lb/k/b/c$c;->b:Lb/h/f/a;

    .line 115
    new-instance v5, Lb/k/b/g;

    invoke-direct {v5, v7, v4, v11, v2}, Lb/k/b/g;-><init>(Lb/k/b/c;Landroid/view/View;Landroid/view/ViewGroup;Lb/k/b/c$b;)V

    invoke-virtual {v3, v5}, Lb/h/f/a;->b(Lb/h/f/a$a;)V

    goto/16 :goto_22

    .line 116
    :cond_47
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/k/b/y0$d;

    .line 117
    iget-object v2, v1, Lb/k/b/y0$d;->c:Lb/k/b/m;

    .line 118
    iget-object v2, v2, Lb/k/b/m;->F:Landroid/view/View;

    .line 119
    iget-object v1, v1, Lb/k/b/y0$d;->a:Lb/k/b/y0$d$c;

    .line 120
    invoke-virtual {v1, v2}, Lb/k/b/y0$d$c;->a(Landroid/view/View;)V

    goto :goto_25

    .line 121
    :cond_48
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public j(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lb/h/j/q;->s(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lb/k/b/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public k(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lb/h/j/q;->s(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1, v2}, Lb/k/b/c;->k(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public l(Lb/e/a;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lb/e/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lb/e/e$b;

    invoke-virtual {p1}, Lb/e/e$b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lb/e/e$d;

    invoke-virtual {v0}, Lb/e/e$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lb/e/e$d;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lb/h/j/q;->s(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lb/e/e$d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
