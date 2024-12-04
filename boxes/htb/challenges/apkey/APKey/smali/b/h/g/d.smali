.class public Lb/h/g/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/h/g/d$a;

    invoke-direct {v0}, Lb/h/g/d$a;-><init>()V

    sput-object v0, Lb/h/g/d;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/content/Context;Lb/h/g/e;Landroid/os/CancellationSignal;)Lb/h/g/k;
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1
    iget-object v3, v0, Lb/h/g/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 3
    iget-object v7, v0, Lb/h/g/e;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lb/h/g/d;->a:Ljava/util/Comparator;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    iget-object v1, v0, Lb/h/g/e;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v2, v4}, Lb/h/b/a;->P(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    .line 9
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v2, v6, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lb/h/g/d;->a:Ljava/util/Comparator;

    invoke-static {v6, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_2

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_3

    :goto_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v6, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v5, v7

    :goto_6
    if-nez v5, :cond_7

    .line 11
    new-instance v0, Lb/h/g/k;

    invoke-direct {v0, v8, v7}, Lb/h/g/k;-><init>(I[Lb/h/g/l;)V

    return-object v0

    .line 12
    :cond_7
    iget-object v1, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v2, "result_code"

    const-string v3, "font_italic"

    const-string v5, "font_weight"

    const-string v6, "font_ttc_index"

    const-string v9, "file_id"

    const-string v10, "_id"

    .line 13
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Landroid/net/Uri$Builder;

    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    const-string v13, "content"

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v14, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v13, "file"

    invoke-virtual {v1, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v13, 0x7

    :try_start_0
    new-array v13, v13, [Ljava/lang/String;

    aput-object v10, v13, v4

    aput-object v9, v13, v8

    const/4 v14, 0x2

    aput-object v6, v13, v14

    const/4 v14, 0x3

    const-string v15, "font_variation_settings"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    aput-object v5, v13, v14

    const/4 v14, 0x5

    aput-object v3, v13, v14

    const/4 v14, 0x6

    aput-object v2, v13, v14

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x10

    if-le v14, v15, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v17, "query = ?"

    new-array v15, v8, [Ljava/lang/String;

    .line 14
    iget-object v0, v0, Lb/h/g/e;->c:Ljava/lang/String;

    aput-object v0, v15, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v15

    move-object v15, v12

    move-object/from16 v16, v13

    move-object/from16 v18, v0

    .line 15
    invoke-virtual/range {v14 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v17, "query = ?"

    new-array v15, v8, [Ljava/lang/String;

    .line 16
    iget-object v0, v0, Lb/h/g/e;->c:Ljava/lang/String;

    aput-object v0, v15, v4

    const/16 v19, 0x0

    move-object v0, v15

    move-object v15, v12

    move-object/from16 v16, v13

    move-object/from16 v18, v0

    .line 17
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_7
    move-object v7, v0

    if-eqz v7, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, -0x1

    if-eq v0, v10, :cond_9

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v19, v13

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    const/16 v19, 0x0

    :goto_9
    if-eq v6, v10, :cond_a

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v16, v13

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_a
    if-ne v9, v10, :cond_b

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    goto :goto_b

    :cond_b
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    :goto_b
    move-object v15, v13

    if-eq v5, v10, :cond_c

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v17, v13

    goto :goto_c

    :cond_c
    const/16 v13, 0x190

    const/16 v17, 0x190

    :goto_c
    if-eq v3, v10, :cond_d

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v8, :cond_d

    const/4 v10, 0x1

    const/16 v18, 0x1

    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    const/16 v18, 0x0

    .line 18
    :goto_d
    new-instance v10, Lb/h/g/l;

    move-object v14, v10

    invoke-direct/range {v14 .. v19}, Lb/h/g/l;-><init>(Landroid/net/Uri;IIZI)V

    .line 19
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_e
    if-eqz v7, :cond_f

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f
    new-array v0, v4, [Lb/h/g/l;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/h/g/l;

    .line 20
    new-instance v1, Lb/h/g/k;

    invoke-direct {v1, v4, v0}, Lb/h/g/k;-><init>(I[Lb/h/g/l;)V

    return-object v1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_10

    .line 21
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    .line 22
    :cond_11
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but package was not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, v0, Lb/h/g/e;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v1, "No package found for authority: "

    invoke-static {v1, v3}, Lc/a/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e
.end method
