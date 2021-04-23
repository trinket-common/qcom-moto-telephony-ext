.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvLTECABWClassComboL"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x1ff


# instance fields
.field public mComboSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;",
            ">;"
        }
    .end annotation
.end field

.field public mNumOfElements:B

.field public mVersion:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1053
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .line 1053
    invoke-static {p0, p1, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsAll(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method private calculateNumOfElements()B
    .locals 4

    .line 1713
    const/4 v0, 0x0

    .line 1714
    .local v0, "rtnVal":B
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 1715
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1716
    .local v2, "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 1717
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    int-to-byte v0, v3

    .line 1719
    :cond_0
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1720
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    int-to-byte v0, v3

    .line 1722
    .end local v2    # "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_1
    goto :goto_0

    .line 1724
    :cond_2
    return v0
.end method

.method private static containsAll(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 8
    .param p2, "wildcard"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;",
            ">;",
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;",
            ">;Z)Z"
        }
    .end annotation

    .line 1619
    .local p0, "aList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .local p1, "bList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1622
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1623
    .local v1, "aCloneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1624
    .local v2, "bCloneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1625
    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1626
    const/4 v3, 0x0

    .line 1627
    .local v3, "i":I
    const/4 v4, 0x0

    .line 1628
    .local v4, "j":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1629
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1630
    .local v5, "curAItem":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1631
    .local v6, "curBItem":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    if-nez v5, :cond_1

    .line 1632
    add-int/lit8 v4, v4, 0x1

    .line 1633
    goto :goto_0

    .line 1635
    :cond_1
    if-nez v6, :cond_2

    .line 1636
    add-int/lit8 v3, v3, 0x1

    .line 1637
    goto :goto_0

    .line 1639
    :cond_2
    invoke-virtual {v5, v6}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1640
    add-int/lit8 v3, v3, 0x1

    .line 1641
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1642
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v5, v6}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->canHandle(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1643
    add-int/lit8 v3, v3, 0x1

    .line 1644
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1646
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 1648
    .end local v5    # "curAItem":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .end local v6    # "curBItem":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    :goto_1
    goto :goto_0

    .line 1649
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    .line 1620
    .end local v1    # "aCloneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v2    # "bCloneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_7
    :goto_2
    return v0
.end method

.method private containsCombo(Ljava/lang/String;BZ)Z
    .locals 8
    .param p1, "bandsCombo"    # Ljava/lang/String;
    .param p2, "dataType"    # B
    .param p3, "exactMatch"    # Z

    .line 1589
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getFromInputString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1590
    .local v0, "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 1593
    :cond_0
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getCombos(B)Ljava/util/List;

    move-result-object v2

    .line 1594
    .local v2, "allMatchCombos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1597
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1598
    .local v4, "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    iget-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1599
    .local v5, "curComboBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    if-eqz v5, :cond_3

    invoke-static {v5, v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsAll(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p3, :cond_2

    .line 1600
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1601
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1603
    .end local v4    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .end local v5    # "curComboBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :cond_3
    goto :goto_0

    .line 1604
    :cond_4
    return v1

    .line 1595
    :cond_5
    :goto_1
    return v1

    .line 1591
    .end local v2    # "allMatchCombos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :cond_6
    :goto_2
    return v1
.end method

.method private dedupeAList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 1876
    .local p1, "targetList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1879
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1880
    .local v0, "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1881
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1882
    .local v2, "anItem":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dedupe item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 1885
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1887
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1889
    .end local v2    # "anItem":Ljava/lang/Object;, "TE;"
    :goto_1
    goto :goto_0

    .line 1890
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    return-void

    .line 1877
    .end local v0    # "filter":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    :cond_3
    :goto_2
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 1407
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 1410
    :cond_0
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;-><init>()V

    .line 1411
    .local v0, "rtnVal":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mVersion:B

    .line 1412
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    .line 1413
    invoke-static {p0, v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->readComboSetList(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;)V

    .line 1414
    return-object v0

    .line 1408
    .end local v0    # "rtnVal":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCombos(B)Ljava/util/List;
    .locals 4
    .param p1, "dataType"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;",
            ">;"
        }
    .end annotation

    .line 1519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    .local v0, "rtnList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1521
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1522
    .local v2, "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    const/16 v3, -0x77

    if-ne p1, v3, :cond_0

    .line 1523
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1525
    :cond_0
    const/16 v3, -0x76

    if-ne p1, v3, :cond_1

    .line 1526
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1528
    .end local v2    # "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_1
    goto :goto_0

    .line 1530
    :cond_2
    return-object v0
.end method

.method private getFromInputString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "bandsCombo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;",
            ">;"
        }
    .end annotation

    .line 1574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v0, "rtnList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1576
    return-object v0

    .line 1578
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1579
    .local v1, "bandsComboArray":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1580
    .local v4, "oneBWClassStr":Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->fromString(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    move-result-object v5

    .line 1581
    .local v5, "oneBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    if-eqz v5, :cond_1

    .line 1582
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    .end local v4    # "oneBWClassStr":Ljava/lang/String;
    .end local v5    # "oneBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1585
    :cond_2
    return-object v0
.end method

.method private putACombo(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "aCombo"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1491
    if-nez p1, :cond_0

    .line 1492
    return-void

    .line 1494
    :cond_0
    iget-byte v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1495
    iget-object v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1497
    .local v1, "aBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    iget-byte v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1498
    iget-byte v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1499
    .end local v1    # "aBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    goto :goto_0

    .line 1501
    :cond_1
    return-void
.end method

.method private putAComboSet(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "comboSet"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1453
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1456
    :cond_0
    iget-object v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1458
    .local v1, "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->putACombo(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V

    .line 1459
    .end local v1    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_0

    .line 1461
    :cond_1
    iget-object v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1462
    iget-object v0, p2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1463
    .restart local v1    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->putACombo(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V

    .line 1464
    .end local v1    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_1

    .line 1466
    :cond_2
    return-void

    .line 1454
    :cond_3
    :goto_2
    return-void
.end method

.method private putComboSetList(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 1444
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1448
    .local v1, "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->putAComboSet(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;)V

    .line 1449
    .end local v1    # "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    goto :goto_0

    .line 1450
    :cond_1
    return-void

    .line 1445
    :cond_2
    :goto_1
    return-void
.end method

.method private static readACombo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 1469
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1473
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 1474
    .local v1, "dataType":B
    const/16 v2, -0x77

    if-eq v1, v2, :cond_1

    const/16 v2, -0x76

    if-eq v1, v2, :cond_1

    .line 1476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid combo data type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$200(Ljava/lang/String;)V

    .line 1477
    return-object v0

    .line 1479
    :cond_1
    new-instance v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1480
    .local v2, "aCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    iput-byte v1, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1481
    invoke-virtual {v2, p0, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->readBWClassList(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V

    .line 1483
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 1487
    :cond_2
    return-object v2

    .line 1484
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid combo BW Class List at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$200(Ljava/lang/String;)V

    .line 1485
    return-object v0

    .line 1470
    .end local v1    # "dataType":B
    .end local v2    # "aCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    :cond_4
    :goto_1
    return-object v0
.end method

.method private static readComboSetList(Ljava/nio/ByteBuffer;Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "output"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    .line 1418
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 1421
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1424
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->readACombo(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    move-result-object v1

    .line 1425
    .local v1, "nextCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    if-eqz v1, :cond_2

    .line 1426
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->isDL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1428
    new-instance v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    invoke-direct {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;-><init>()V

    move-object v0, v2

    .line 1429
    iget-object v2, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    :cond_1
    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->putACombo(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V

    goto :goto_1

    .line 1433
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    if-nez v2, :cond_3

    .line 1435
    goto :goto_2

    .line 1437
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1440
    .end local v1    # "nextCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    :goto_1
    goto :goto_0

    .line 1441
    :cond_4
    :goto_2
    return-void

    .line 1419
    .end local v0    # "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public appendDLCombo(Ljava/lang/String;)Z
    .locals 12
    .param p1, "bandsCombo"    # Ljava/lang/String;

    .line 1728
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1729
    return v1

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1732
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    .line 1735
    :cond_1
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;-><init>()V

    .line 1736
    .local v0, "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    .line 1737
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    .line 1739
    new-instance v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1740
    .local v2, "aDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/4 v3, 0x0

    .line 1741
    .local v3, "aULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/16 v4, -0x77

    iput-byte v4, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1742
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1743
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1744
    .local v4, "bwclassStrs":[Ljava/lang/String;
    array-length v5, v4

    move v6, v1

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 1745
    .local v8, "aBWClassStr":Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->fromString(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    move-result-object v9

    .line 1746
    .local v9, "aDLBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    if-nez v9, :cond_2

    .line 1747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "skip invalid bw class: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 1748
    goto :goto_1

    .line 1750
    :cond_2
    iget-object v10, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1752
    new-instance v10, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v10}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    move-object v3, v10

    .line 1753
    const/16 v10, -0x76

    iput-byte v10, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1754
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1755
    new-instance v10, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    iget-byte v11, v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    invoke-direct {v10, v11, v7}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;-><init>(BB)V

    move-object v7, v10

    .line 1756
    .local v7, "aULBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    iget-object v10, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1757
    iget-object v10, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1744
    .end local v7    # "aULBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .end local v8    # "aBWClassStr":Ljava/lang/String;
    .end local v9    # "aDLBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1760
    :cond_3
    iget-object v5, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 1761
    return v1

    .line 1765
    :cond_4
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->dedupeAList(Ljava/util/List;)V

    .line 1766
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1767
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1769
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->dedupeAList(Ljava/util/List;)V

    .line 1771
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->calculateNumOfElements()B

    move-result v1

    iput-byte v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    .line 1772
    return v7
.end method

.method public appendULCombo(Ljava/lang/String;)V
    .locals 10
    .param p1, "bandsCombo"    # Ljava/lang/String;

    .line 1817
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    return-void

    .line 1820
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getFromInputString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1821
    .local v0, "inputComboBWClass":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 1824
    :cond_1
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1825
    .local v1, "newULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/16 v2, -0x76

    iput-byte v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1826
    iput-object v0, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1827
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-nez v2, :cond_2

    .line 1828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    .line 1831
    :cond_2
    const/4 v2, 0x0

    .line 1832
    .local v2, "mergedIntoCurrentCombo":Z
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1833
    .local v4, "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->isValid()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1834
    goto :goto_0

    .line 1837
    :cond_3
    iget-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1838
    .local v5, "theDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/4 v6, 0x0

    .line 1839
    .local v6, "curULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v5, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->canHandle(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1841
    iget-object v7, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    .line 1842
    .local v7, "curULComboList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    if-nez v7, :cond_4

    .line 1843
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 1844
    iput-object v7, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    .line 1846
    :cond_4
    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1847
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1848
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1849
    invoke-virtual {v1, v6}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->canHandle(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1850
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1854
    .end local v8    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :cond_6
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    const/4 v2, 0x1

    .line 1857
    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .end local v5    # "theDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .end local v6    # "curULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .end local v7    # "curULComboList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :cond_7
    goto :goto_0

    .line 1859
    :cond_8
    if-nez v2, :cond_9

    .line 1861
    new-instance v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    invoke-direct {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;-><init>()V

    .line 1862
    .local v3, "newComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    .line 1863
    new-instance v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1864
    .local v4, "newDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/16 v5, -0x77

    iput-byte v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1865
    iget-object v5, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    iput-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1866
    iget-object v5, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1867
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    .line 1868
    iget-object v5, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1869
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1872
    .end local v3    # "newComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .end local v4    # "newDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    :cond_9
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->calculateNumOfElements()B

    move-result v3

    iput-byte v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    .line 1873
    return-void

    .line 1822
    .end local v1    # "newULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .end local v2    # "mergedIntoCurrentCombo":Z
    :cond_a
    :goto_2
    return-void
.end method

.method public containsDLCombo(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "bandsCombo"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z

    .line 1608
    const/16 v0, -0x77

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsCombo(Ljava/lang/String;BZ)Z

    move-result v0

    return v0
.end method

.method public containsULCombo(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "bandsCombo"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z

    .line 1612
    const/16 v0, -0x76

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsCombo(Ljava/lang/String;BZ)Z

    move-result v0

    return v0
.end method

.method public getByteSize()I
    .locals 4

    .line 1062
    const/4 v0, 0x2

    .line 1064
    .local v0, "rtnVal":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1066
    .local v2, "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->getByteSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 1067
    .end local v2    # "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    goto :goto_0

    .line 1069
    :cond_0
    return v0
.end method

.method public getDLList()[Ljava/lang/String;
    .locals 6

    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v0, "dlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1536
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1537
    .local v2, "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1538
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1539
    .local v4, "aDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1540
    .end local v4    # "aDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_1

    .line 1542
    .end local v2    # "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_0
    goto :goto_0

    .line 1544
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getDLULList()[Ljava/lang/String;
    .locals 8

    .line 1548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    .local v0, "dlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1551
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1552
    .local v2, "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1553
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1554
    .local v4, "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1555
    .end local v4    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_1

    .line 1557
    .end local v2    # "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_0
    goto :goto_0

    .line 1559
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1560
    .restart local v2    # "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 1561
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1562
    .restart local v4    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    iget-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_2

    iget-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    const/4 v7, 0x0

    .line 1563
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    iget-byte v5, v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    if-le v5, v6, :cond_3

    .line 1564
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_UL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    .end local v4    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    :cond_3
    goto :goto_3

    .line 1568
    .end local v2    # "curComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_4
    goto :goto_2

    .line 1570
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public removeDLCombo(Ljava/lang/String;)V
    .locals 18
    .param p1, "bandsCombo"    # Ljava/lang/String;

    .line 1653
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getFromInputString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1654
    .local v1, "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v16, v1

    goto/16 :goto_7

    .line 1657
    :cond_0
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v2, "newComboSets":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;>;"
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1660
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1661
    .local v4, "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->isValid()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1662
    goto :goto_0

    .line 1665
    :cond_1
    iget-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1666
    .local v5, "theDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    iget-object v7, v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1667
    .local v7, "curComboBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    if-eqz v7, :cond_7

    .line 1668
    invoke-static {v7, v1, v6}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsAll(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1669
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1670
    .local v9, "toRemoveBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    invoke-interface {v7, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1671
    .end local v9    # "toRemoveBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    goto :goto_1

    .line 1673
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1674
    const/4 v8, 0x0

    .line 1677
    .local v8, "aNewComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1678
    .local v10, "bwClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    new-instance v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    invoke-direct {v11}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;-><init>()V

    move-object v8, v11

    .line 1679
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1680
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v8, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    .line 1681
    new-instance v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v11}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1682
    .local v11, "aNewDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/16 v12, -0x77

    iput-byte v12, v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1683
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1685
    iget-object v12, v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v12, v6, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1686
    iget-object v12, v8, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1688
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v8, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    .line 1689
    iget-object v12, v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1690
    .local v13, "aDLBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    new-instance v14, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v14}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1691
    .local v14, "aNewULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    iget-object v15, v8, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    const/16 v15, -0x76

    iput-byte v15, v14, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1693
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1694
    iget-object v15, v14, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    new-instance v6, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    move-object/from16 v16, v1

    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .local v16, "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    iget-byte v1, v13, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    move-object/from16 v17, v4

    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .local v17, "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    iget-byte v4, v13, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    invoke-direct {v6, v1, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;-><init>(BB)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    .end local v13    # "aDLBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .end local v14    # "aNewULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    move-object/from16 v1, v16

    move-object/from16 v4, v17

    const/4 v6, 0x0

    goto :goto_3

    .line 1689
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .line 1697
    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .end local v10    # "bwClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .end local v11    # "aNewDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1677
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_4
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    goto :goto_4

    .line 1673
    .end local v8    # "aNewComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .line 1699
    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 1668
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    goto :goto_5

    .line 1667
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v17    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_7
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    .line 1701
    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v4    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .end local v5    # "theDLCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .end local v7    # "curComboBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :goto_5
    move-object/from16 v1, v16

    goto/16 :goto_0

    .line 1659
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :cond_8
    move-object/from16 v16, v1

    .line 1702
    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;>;"
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1703
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1706
    :cond_9
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->dedupeAList(Ljava/util/List;)V

    .line 1708
    invoke-direct/range {p0 .. p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->calculateNumOfElements()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    goto :goto_6

    .line 1657
    .end local v2    # "newComboSets":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;>;"
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :cond_a
    move-object/from16 v16, v1

    .line 1710
    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :goto_6
    return-void

    .line 1654
    .end local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :cond_b
    move-object/from16 v16, v1

    .line 1655
    .end local v1    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    .restart local v16    # "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :goto_7
    return-void
.end method

.method public removeULCombo(Ljava/lang/String;)V
    .locals 14
    .param p1, "bandsCombo"    # Ljava/lang/String;

    .line 1776
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getFromInputString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1777
    .local v0, "inputCombo":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1780
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1781
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1782
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1783
    .local v2, "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1784
    goto :goto_0

    .line 1786
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v3, "newULCombos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    iget-object v4, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iteratorULCombo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1788
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1789
    .local v5, "aULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    iget-object v6, v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1790
    .local v6, "curComboBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    if-eqz v6, :cond_4

    const/4 v7, 0x0

    .line 1791
    invoke-static {v6, v0, v7}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsAll(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1792
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 1793
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1795
    .local v8, "aBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    new-instance v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    invoke-direct {v9}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;-><init>()V

    .line 1796
    .local v9, "aNewULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    const/16 v10, -0x76

    iput-byte v10, v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mDataType:B

    .line 1797
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    .line 1798
    iget-object v10, v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->mBWClassList:Ljava/util/List;

    new-instance v11, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    iget-byte v12, v8, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;-><init>(BB)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1799
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    .end local v8    # "aBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .end local v9    # "aNewULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_2

    .line 1802
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1804
    .end local v5    # "aULCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    .end local v6    # "curComboBWClassList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;>;"
    :cond_4
    goto :goto_1

    .line 1805
    .end local v4    # "iteratorULCombo":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1806
    iget-object v4, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1808
    iget-object v4, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->dedupeAList(Ljava/util/List;)V

    .line 1810
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->calculateNumOfElements()B

    move-result v4

    iput-byte v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    .line 1812
    .end local v2    # "aComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    .end local v3    # "newULCombos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;>;"
    :cond_6
    goto/16 :goto_0

    .line 1814
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;>;"
    :cond_7
    return-void

    .line 1778
    :cond_8
    :goto_3
    return-void
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 1505
    if-nez p1, :cond_0

    .line 1506
    return-void

    .line 1508
    :cond_0
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mVersion:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1509
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1510
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->putComboSetList(Ljava/nio/ByteBuffer;)V

    .line 1511
    return-void
.end method

.method public size()I
    .locals 1

    .line 1515
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getByteSize()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1894
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1895
    .local v0, "rtnVal":Ljava/lang/StringBuffer;
    const-string v1, "[ByteSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getByteSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1896
    const-string v2, "[Version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mVersion:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1897
    const-string v2, "[NumOfElements "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mNumOfElements:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1898
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1899
    const-string v2, "[ComboSetList "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1900
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->mComboSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1901
    .local v3, "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1902
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    const-string v5, ";"

    const-string v6, " ]"

    if-eqz v4, :cond_1

    .line 1903
    const-string v4, "DL ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1904
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1905
    .local v7, "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1906
    .end local v7    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_1

    .line 1907
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1909
    :cond_1
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1910
    const-string v4, "UL ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1911
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1912
    .restart local v7    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v7}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1913
    .end local v7    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_2

    .line 1914
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1916
    .end local v3    # "comboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    :cond_3
    goto :goto_0

    .line 1917
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1919
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
