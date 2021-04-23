.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
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
    name = "NvBandConfigDataType"
.end annotation


# static fields
.field private static final BAND_CONFIG_LENGTH_VERSION_1:I = 0x10

.field private static final BAND_CONFIG_LENGTH_VERSION_2:I = 0x28

.field private static final BAND_CONFIG_LENGTH_VERSION_3:I = 0xa8

.field private static final LTE_CONFIG_LENGTH_LONG_VERSION_1:I = 0x1

.field private static final LTE_CONFIG_LENGTH_LONG_VERSION_2:I = 0x4

.field private static final NAS_CONFIG_LENGTH_LONG:I = 0x1

.field private static final NSA_CONFIG_LENGTH_LONG_VERSION:I = 0x8

.field private static final SA_CONFIG_LENGTH_LONG_VERSION:I = 0x8

.field private static final VERSION_1:I = 0x1

.field private static final VERSION_2:I = 0x2

.field private static final VERSION_3:I = 0x3

.field private static final VERSION_UNKNOWN:I


# instance fields
.field private lteConfigs:[J

.field private nasConfig:J

.field private nsaConfigs:[J

.field private saConfigs:[J

.field private size:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    .line 598
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    .line 599
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    .line 600
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    .line 601
    const/16 v0, 0xa8

    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size:I

    .line 602
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    .line 603
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 633
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;-><init>()V

    .line 634
    .local v0, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    const/16 v1, 0x10

    if-ne v1, p1, :cond_0

    .line 635
    const/4 v2, 0x1

    iput v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    .line 636
    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size:I

    .line 637
    new-array v1, v2, [J

    iput-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    .line 638
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 639
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    goto/16 :goto_5

    .line 640
    :cond_0
    const/16 v1, 0x28

    const/4 v2, 0x4

    if-ne v1, p1, :cond_2

    .line 641
    const/4 v3, 0x2

    iput v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    .line 642
    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size:I

    .line 643
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "idx":I
    new-array v3, v2, [J

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    .line 646
    :goto_0
    if-ge v1, v2, :cond_1

    .line 647
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .local v4, "idx":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    aput-wide v5, v3, v1

    move v1, v4

    goto :goto_0

    .line 646
    .end local v4    # "idx":I
    :cond_1
    goto :goto_4

    .line 649
    :cond_2
    const/16 v1, 0xa8

    if-ne v1, p1, :cond_5

    .line 650
    const/4 v3, 0x3

    iput v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    .line 651
    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size:I

    .line 652
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    .line 654
    const/4 v1, 0x0

    .line 655
    .restart local v1    # "idx":I
    new-array v3, v2, [J

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    .line 656
    :goto_1
    if-ge v1, v2, :cond_3

    .line 657
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    aput-wide v5, v3, v1

    move v1, v4

    goto :goto_1

    .line 660
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_3
    const/4 v1, 0x0

    .line 661
    const/16 v2, 0x8

    new-array v3, v2, [J

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    .line 662
    :goto_2
    if-ge v1, v2, :cond_4

    .line 663
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    aput-wide v5, v3, v1

    move v1, v4

    goto :goto_2

    .line 666
    .end local v4    # "idx":I
    .restart local v1    # "idx":I
    :cond_4
    const/4 v1, 0x0

    .line 667
    new-array v3, v2, [J

    iput-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    .line 668
    :goto_3
    if-ge v1, v2, :cond_6

    .line 669
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "idx":I
    .restart local v4    # "idx":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    aput-wide v5, v3, v1

    move v1, v4

    goto :goto_3

    .line 649
    .end local v4    # "idx":I
    :cond_5
    :goto_4
    nop

    .line 672
    :cond_6
    :goto_5
    return-object v0
.end method

.method private isLTEBandValid(I)Z
    .locals 3
    .param p1, "bandId"    # I

    .line 676
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x40

    if-le p1, v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_1
    if-lez p1, :cond_3

    const/16 v0, 0x100

    if-gt p1, v0, :cond_3

    .line 680
    :cond_2
    return v1

    .line 682
    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public enableLTEBand(IZ)V
    .locals 7
    .param p1, "bandId"    # I
    .param p2, "enabled"    # Z

    .line 697
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isLTEBandValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x40

    .line 699
    .local v0, "row":I
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x40

    .line 700
    .local v1, "col":I
    const-wide/16 v2, 0x1

    if-eqz p2, :cond_0

    .line 701
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    aget-wide v5, v4, v0

    shl-long/2addr v2, v1

    or-long/2addr v2, v5

    aput-wide v2, v4, v0

    goto :goto_0

    .line 703
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    aget-wide v5, v4, v0

    shl-long/2addr v2, v1

    not-long v2, v2

    and-long/2addr v2, v5

    aput-wide v2, v4, v0

    .line 706
    .end local v0    # "row":I
    .end local v1    # "col":I
    :cond_1
    :goto_0
    return-void
.end method

.method public enableNSABand(IZ)V
    .locals 7
    .param p1, "bandId"    # I
    .param p2, "enabled"    # Z

    .line 770
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isNSABandValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x40

    .line 772
    .local v0, "row":I
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x40

    .line 773
    .local v1, "col":I
    const-wide/16 v2, 0x1

    if-eqz p2, :cond_0

    .line 774
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    aget-wide v5, v4, v0

    shl-long/2addr v2, v1

    or-long/2addr v2, v5

    aput-wide v2, v4, v0

    goto :goto_0

    .line 776
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    aget-wide v5, v4, v0

    shl-long/2addr v2, v1

    not-long v2, v2

    and-long/2addr v2, v5

    aput-wide v2, v4, v0

    .line 779
    .end local v0    # "row":I
    .end local v1    # "col":I
    :cond_1
    :goto_0
    return-void
.end method

.method public enableSABand(IZ)V
    .locals 7
    .param p1, "bandId"    # I
    .param p2, "enabled"    # Z

    .line 750
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isSABandValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x40

    .line 752
    .local v0, "row":I
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x40

    .line 753
    .local v1, "col":I
    const-wide/16 v2, 0x1

    if-eqz p2, :cond_0

    .line 754
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    aget-wide v5, v4, v0

    shl-long/2addr v2, v1

    or-long/2addr v2, v5

    aput-wide v2, v4, v0

    goto :goto_0

    .line 756
    :cond_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    aget-wide v5, v4, v0

    shl-long/2addr v2, v1

    not-long v2, v2

    and-long/2addr v2, v5

    aput-wide v2, v4, v0

    .line 759
    .end local v0    # "row":I
    .end local v1    # "col":I
    :cond_1
    :goto_0
    return-void
.end method

.method public getLteConfigBytes()[B
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 710
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 711
    .local v0, "bf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 712
    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getNRDeviceType()I
    .locals 7

    .line 782
    const/4 v0, 0x0

    .line 783
    .local v0, "res":I
    iget v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 784
    return v0

    .line 788
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_3

    .line 789
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    aget-wide v5, v5, v1

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    aget-wide v5, v5, v1

    cmp-long v5, v5, v3

    if-eqz v5, :cond_1

    goto :goto_1

    .line 788
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    :cond_2
    :goto_1
    or-int/lit8 v0, v0, 0x1

    .line 796
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x4

    .restart local v1    # "i":I
    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_6

    .line 797
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    aget-wide v5, v2, v1

    cmp-long v2, v5, v3

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    aget-wide v5, v2, v1

    cmp-long v2, v5, v3

    if-eqz v2, :cond_4

    goto :goto_3

    .line 796
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 798
    :cond_5
    :goto_3
    or-int/lit8 v0, v0, 0x2

    .line 802
    .end local v1    # "i":I
    :cond_6
    return v0
.end method

.method public getNRModeBitMask()I
    .locals 7

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "res":I
    iget v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 808
    return v0

    .line 811
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    if-ge v1, v4, :cond_2

    .line 812
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    aget-wide v5, v5, v1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    .line 813
    or-int/lit8 v0, v0, 0x1

    .line 814
    goto :goto_1

    .line 811
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "i":I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_4

    .line 819
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    aget-wide v5, v5, v1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_3

    .line 820
    or-int/lit8 v0, v0, 0x2

    .line 821
    goto :goto_3

    .line 818
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 824
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return v0
.end method

.method public getNSAConfigBytes()[B
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 729
    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 730
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 731
    .local v0, "bf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 732
    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getSAConfigBytes()[B
    .locals 4

    .line 718
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 719
    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 720
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 721
    .local v0, "bf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 722
    aget-wide v2, v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public isLTEBandEnabled(I)Z
    .locals 7
    .param p1, "bandId"    # I

    .line 686
    const/4 v0, 0x0

    .line 687
    .local v0, "enabled":Z
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isLTEBandValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x40

    .line 689
    .local v1, "row":I
    add-int/lit8 v2, p1, -0x1

    rem-int/lit8 v2, v2, 0x40

    .line 690
    .local v2, "col":I
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    aget-wide v3, v3, v1

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v2

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 693
    .end local v1    # "row":I
    .end local v2    # "col":I
    :cond_1
    return v0
.end method

.method public isNRSupported()Z
    .locals 2

    .line 738
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNSABandValid(I)Z
    .locals 2
    .param p1, "bandId"    # I

    .line 762
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x200

    if-gt p1, v0, :cond_0

    .line 764
    const/4 v0, 0x1

    return v0

    .line 766
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSABandValid(I)Z
    .locals 2
    .param p1, "bandId"    # I

    .line 742
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x200

    if-gt p1, v0, :cond_0

    .line 744
    const/4 v0, 0x1

    return v0

    .line 746
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVersionUnknown()Z
    .locals 1

    .line 828
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 606
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 607
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 608
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 609
    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ne v0, v1, :cond_2

    .line 610
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "idx":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 613
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "idx":I
    .local v3, "idx":I
    aget-wide v0, v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move v0, v3

    goto :goto_0

    .line 612
    .end local v3    # "idx":I
    :cond_1
    goto :goto_4

    .line 615
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 616
    iget-wide v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 617
    const/4 v0, 0x0

    .line 618
    .restart local v0    # "idx":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 619
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "idx":I
    .restart local v3    # "idx":I
    aget-wide v0, v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move v0, v3

    goto :goto_1

    .line 621
    .end local v3    # "idx":I
    .restart local v0    # "idx":I
    :cond_3
    const/4 v0, 0x0

    .line 622
    :goto_2
    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    .line 623
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    add-int/lit8 v2, v0, 0x1

    .end local v0    # "idx":I
    .local v2, "idx":I
    aget-wide v0, v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move v0, v2

    goto :goto_2

    .line 625
    .end local v2    # "idx":I
    .restart local v0    # "idx":I
    :cond_4
    const/4 v0, 0x0

    .line 626
    :goto_3
    if-ge v0, v1, :cond_6

    .line 627
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "idx":I
    .restart local v3    # "idx":I
    aget-wide v4, v2, v0

    invoke-virtual {p1, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move v0, v3

    goto :goto_3

    .line 615
    .end local v3    # "idx":I
    :cond_5
    :goto_4
    nop

    .line 630
    :cond_6
    :goto_5
    return-void
.end method

.method public size()I
    .locals 1

    .line 832
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "NvBandConfigData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, ": version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, ", nasConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nasConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 840
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    const-string v2, "]="

    if-eqz v1, :cond_0

    .line 841
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", lteConfigs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->lteConfigs:[J

    aget-wide v3, v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    if-eqz v1, :cond_1

    .line 846
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", saConfigs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->saConfigs:[J

    aget-wide v3, v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 846
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    if-eqz v1, :cond_2

    .line 851
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", nsaConfigs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->nsaConfigs:[J

    aget-wide v3, v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 851
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 855
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
