.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Combo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    }
.end annotation


# static fields
.field public static final BW_CLASS_A:B = 0x1t

.field public static final BW_CLASS_A_CHAR:C = 'A'

.field public static final BW_CLASS_B:B = 0x2t

.field public static final BW_CLASS_B_CHAR:C = 'B'

.field public static final BW_CLASS_C:B = 0x3t

.field public static final BW_CLASS_C_CHAR:C = 'C'

.field public static final BW_CLASS_D:B = 0x4t

.field public static final BW_CLASS_D_CHAR:C = 'D'

.field public static final BW_CLASS_E:B = 0x5t

.field public static final BW_CLASS_E_CHAR:C = 'E'

.field public static final BW_CLASS_F:B = 0x6t

.field public static final BW_CLASS_F_CHAR:C = 'F'

.field public static final BW_CLASS_INVALID:B = 0x0t

.field public static final BW_CLASS_INVALID_CHAR:C = '\u0000'

.field public static final DATA_TYPE_DL:B = -0x77t

.field public static final DATA_TYPE_UL:B = -0x76t


# instance fields
.field public mBWClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;",
            ">;"
        }
    .end annotation
.end field

.field public mDataType:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)Z
    .locals 3
    .param p1, "anotherCombo"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1378
    iget-object v0, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1379
    .local v0, "theOtherBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1382
    :cond_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1385
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->access$100(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v1

    return v1

    .line 1383
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 1380
    :cond_3
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1390
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1391
    return v0

    .line 1393
    :cond_0
    instance-of v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    if-nez v1, :cond_1

    .line 1394
    return v0

    .line 1396
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1397
    .local v1, "anotherCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getByteSize()I
    .locals 2

    .line 1367
    const/4 v0, 0x1

    .line 1368
    .local v0, "rtnVal":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1371
    :cond_0
    return v0
.end method

.method getOneLineString()Ljava/lang/String;
    .locals 5

    .line 1311
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1314
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1315
    .local v0, "line":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1316
    .local v2, "bwClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    .line 1317
    .local v3, "item":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1318
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1320
    .end local v2    # "bwClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1321
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    .line 1323
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1325
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1312
    .end local v0    # "line":Ljava/lang/StringBuffer;
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1402
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isAggregated()Z
    .locals 5

    .line 1300
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 1304
    return v2

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1307
    .local v0, "onlyConfig":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    iget-byte v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    iget-byte v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    const/4 v4, 0x6

    if-gt v3, v4, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 1301
    .end local v0    # "onlyConfig":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    :cond_3
    :goto_0
    return v1
.end method

.method isDL()Z
    .locals 2

    .line 1292
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    const/16 v1, -0x77

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUL()Z
    .locals 2

    .line 1296
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    const/16 v1, -0x76

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method readBWClassList(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1329
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_0

    goto :goto_3

    .line 1333
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1334
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    .line 1336
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1338
    .local v0, "band":B
    if-nez v0, :cond_1

    .line 1339
    return-void

    .line 1342
    :cond_1
    const/16 v1, -0x77

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/16 v3, -0x76

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 1349
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 1351
    .local v4, "bwClass":B
    if-nez v4, :cond_3

    .line 1352
    return-void

    .line 1355
    :cond_3
    if-eq v4, v1, :cond_5

    if-ne v4, v3, :cond_4

    goto :goto_1

    .line 1361
    :cond_4
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    new-instance v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    invoke-direct {v2, v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;-><init>(BB)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1362
    .end local v0    # "band":B
    .end local v4    # "bwClass":B
    goto :goto_0

    .line 1356
    .restart local v0    # "band":B
    .restart local v4    # "bwClass":B
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v1, v2, :cond_6

    .line 1357
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1359
    :cond_6
    return-void

    .line 1343
    .end local v4    # "bwClass":B
    :cond_7
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lt v1, v2, :cond_8

    .line 1344
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1346
    :cond_8
    return-void

    .line 1363
    .end local v0    # "band":B
    :cond_9
    return-void

    .line 1331
    :cond_a
    :goto_3
    return-void
.end method
