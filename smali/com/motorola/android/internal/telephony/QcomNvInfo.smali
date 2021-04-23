.class public Lcom/motorola/android/internal/telephony/QcomNvInfo;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaNAMInfo;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCallProcessingData;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvEvdoData;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgInfo;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSignalInfo;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSelectionInfo;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvAKeyDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLteAvailableFileRecord;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomLteData;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTERRCStateDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;,
        Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final QC_OEM_IDENTIFIER:Ljava/lang/String; = "QOEMHOOK"

.field public static final RDE_BAND_PRIORITY_LIST:I = 0x272a

.field public static final RDE_EFS_1XADVANCED_CAPABILITY_STATUS_I:I = 0x271f

.field public static final RDE_EFS_DSS_I:I = 0x272e

.field public static final RDE_EFS_SO73_COP0_SUPPORTED_I:I = 0x2720

.field public static final RDE_LTE_AVAILABLE_FILE_I:I = 0x2727

.field public static final RDE_LTE_CA_BW_CLASS_COMBO:I = 0x5209

.field public static final RDE_LTE_LONG_SCAN_I:I = 0x2724

.field public static final RDE_LTE_MAXBSR_TIMER_STAGES_I:I = 0x2726

.field public static final RDE_LTE_SPRINT_HD_256QAMDL_I:I = 0x2739

.field public static final RDE_LTE_SPRINT_HD_4X4MIMO_I:I = 0x2738

.field public static final RDE_LTE_SPRINT_HD_64QAMUL_I:I = 0x273a

.field public static final RDE_LTE_SPRINT_HD_FDD_TM9_I:I = 0x273b

.field public static final RDE_LTE_SPRINT_HD_TDD_TM9_I:I = 0x273c

.field public static final RDE_LTE_TELESCOPE_MAXBSR_TIME_I:I = 0x2725

.field public static final RDE_MIP_ERROR_CODE_I:I = 0x2723

.field public static final RDE_MOT_NV_CARRIER_SIM_LOCK_I:I = 0x1f5b

.field public static final RDE_MOT_NV_CARRIER_SIM_NONCE_I:I = 0x1f60

.field public static final RDE_MOT_NV_ENABLE_BAND_CARRIER_AGGREGATION_END:I = 0x4f1f

.field public static final RDE_MOT_NV_ENABLE_BAND_CARRIER_AGGREGATION_START:I = 0x4e20

.field public static final RDE_MOT_NV_SIM_LOCK_ACTIVE_I:I = 0x20d8

.field public static final RDE_NV_CDMA_RX_DIVERSITY_CTRL_I:I = 0x26

.field public static final RDE_NV_CDMA_SO68_ENABLED_I:I = 0x30

.field public static final RDE_NV_CDMA_SO73_ENABLED_I:I = 0x2d

.field public static final RDE_NV_DIAL_I:I = 0x6

.field public static final RDE_NV_EHRPD_ENABLED_I:I = 0x2b

.field public static final RDE_NV_HDR_RX_DIVERSITY_CTRL_I:I = 0x27

.field public static final RDE_NV_MOB_TERM_FOR_NID_I:I = 0x34

.field public static final RDE_NV_MOB_TERM_FOR_SID_I:I = 0x33

.field public static final RDE_NV_MOB_TERM_HOME_I:I = 0x32

.field public static final RDE_NV_PREF_VOICE_SO_I:I = 0x1e

.field public static final RDE_NV_SCM_I:I = 0x24

.field public static final RDE_NV_SLOT_CYCLE_INDEX_I:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "MotoExtTM: QcomNvInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvInfo;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvInfo;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;
    .param p1, "x1"    # I

    .line 49
    invoke-static {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->parseName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildManualSelectRawPayload(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;)[B
    .locals 3
    .param p0, "info"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    .line 2134
    const/16 v0, 0xd

    new-array v0, v0, [B

    .line 2136
    .local v0, "payload":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2137
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2140
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2143
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2145
    iget v2, p0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mMcc:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2146
    iget v2, p0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mMnc:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2147
    iget-byte v2, p0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mPcsDigit:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2148
    iget v2, p0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mCsgId:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2149
    iget-byte v2, p0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mRat:B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2151
    return-object v0
.end method

.method public static getCSGSelectionPayload(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;)[B
    .locals 1
    .param p0, "info"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    .line 2122
    if-eqz p0, :cond_0

    .line 2123
    const-string v0, "Manual Selection: "

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->logd(Ljava/lang/String;)V

    .line 2124
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->buildManualSelectRawPayload(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;)[B

    move-result-object v0

    .local v0, "payload":[B
    goto :goto_0

    .line 2126
    .end local v0    # "payload":[B
    :cond_0
    const-string v0, "Auto Selection: "

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->logd(Ljava/lang/String;)V

    .line 2127
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 2130
    .restart local v0    # "payload":[B
    :goto_0
    return-object v0

    :array_0
    .array-data 1
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getRdeByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .line 2649
    const v0, 0x2000016

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public static getRdeNvName(I)Ljava/lang/String;
    .locals 2
    .param p0, "elementId"    # I

    .line 2575
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4f1f

    if-gt p0, v0, :cond_0

    .line 2577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RDE_MOT_NV_ENABLE_BAND_CARRIER_AGGREGATION_START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v1, p0, -0x4e20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2581
    :cond_0
    const/16 v0, 0x26

    if-eq p0, v0, :cond_6

    const/16 v0, 0x27

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x30

    if-eq p0, v0, :cond_3

    const/16 v0, 0x271f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2720

    if-eq p0, v0, :cond_1

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown RDE element ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtTM: QcomNvInfo"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const-string v0, ""

    return-object v0

    .line 2625
    :pswitch_0
    const-string v0, "RDE_LTE_SPRINT_HD_TDD_TM9_I"

    return-object v0

    .line 2623
    :pswitch_1
    const-string v0, "RDE_LTE_SPRINT_HD_FDD_TM9_I"

    return-object v0

    .line 2621
    :pswitch_2
    const-string v0, "RDE_LTE_SPRINT_HD_64QAMUL_I"

    return-object v0

    .line 2619
    :pswitch_3
    const-string v0, "RDE_LTE_SPRINT_HD_256QAMDL_I"

    return-object v0

    .line 2617
    :pswitch_4
    const-string v0, "RDE_LTE_SPRINT_HD_4X4MIMO_I"

    return-object v0

    .line 2611
    :pswitch_5
    const-string v0, "RDE_LTE_AVAILABLE_FILE_I"

    return-object v0

    .line 2609
    :pswitch_6
    const-string v0, "RDE_LTE_MAXBSR_TIMER_STAGES_I"

    return-object v0

    .line 2607
    :pswitch_7
    const-string v0, "RDE_LTE_TELESCOPE_MAXBSR_TIME_I"

    return-object v0

    .line 2605
    :pswitch_8
    const-string v0, "RDE_LTE_LONG_SCAN_I"

    return-object v0

    .line 2627
    :pswitch_9
    const-string v0, "RDE_MIP_ERROR_CODE_I"

    return-object v0

    .line 2637
    :pswitch_a
    const-string v0, "RDE_NV_MOB_TERM_FOR_NID_I"

    return-object v0

    .line 2635
    :pswitch_b
    const-string v0, "RDE_NV_MOB_TERM_FOR_SID_I"

    return-object v0

    .line 2633
    :pswitch_c
    const-string v0, "RDE_NV_MOB_TERM_HOME_I"

    return-object v0

    .line 2603
    :sswitch_0
    const-string v0, "RDE_LTE_CA_BW_CLASS_COMBO"

    return-object v0

    .line 2641
    :sswitch_1
    const-string v0, "RDE_EFS_DSS_I"

    return-object v0

    .line 2613
    :sswitch_2
    const-string v0, "RDE_BAND_PRIORITY_LIST"

    return-object v0

    .line 2601
    :sswitch_3
    const-string v0, "RDE_MOT_NV_SIM_LOCK_ACTIVE_I"

    return-object v0

    .line 2615
    :sswitch_4
    const-string v0, "RDE_MOT_NV_CARRIER_SIM_NONCE_I"

    return-object v0

    .line 2599
    :sswitch_5
    const-string v0, "RDE_MOT_NV_CARRIER_SIM_LOCK_I"

    return-object v0

    .line 2591
    :sswitch_6
    const-string v0, "RDE_NV_CDMA_SO73_ENABLED_I"

    return-object v0

    .line 2589
    :sswitch_7
    const-string v0, "RDE_NV_EHRPD_ENABLED_I"

    return-object v0

    .line 2629
    :sswitch_8
    const-string v0, "RDE_NV_SCM_I"

    return-object v0

    .line 2639
    :sswitch_9
    const-string v0, "RDE_NV_PREF_VOICE_SO_I"

    return-object v0

    .line 2583
    :sswitch_a
    const-string v0, "RDE_NV_DIAL_I"

    return-object v0

    .line 2597
    :cond_1
    const-string v0, "RDE_EFS_SO73_COP0_SUPPORTED_I"

    return-object v0

    .line 2595
    :cond_2
    const-string v0, "RDE_EFS_1XADVANCED_CAPABILITY_STATUS_I"

    return-object v0

    .line 2593
    :cond_3
    const-string v0, "RDE_NV_CDMA_SO68_ENABLED_I"

    return-object v0

    .line 2631
    :cond_4
    const-string v0, "RDE_NV_SLOT_CYCLE_INDEX_I"

    return-object v0

    .line 2587
    :cond_5
    const-string v0, "RDE_NV_HDR_RX_DIVERSITY_CTRL_I"

    return-object v0

    .line 2585
    :cond_6
    const-string v0, "RDE_NV_CDMA_RX_DIVERSITY_CTRL_I"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_a
        0x1e -> :sswitch_9
        0x24 -> :sswitch_8
        0x2b -> :sswitch_7
        0x2d -> :sswitch_6
        0x1f5b -> :sswitch_5
        0x1f60 -> :sswitch_4
        0x20d8 -> :sswitch_3
        0x272a -> :sswitch_2
        0x272e -> :sswitch_1
        0x5209 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2723
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2738
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 2654
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvInfo;->DBG:Z

    if-eqz v0, :cond_0

    .line 2655
    const-string v0, "MotoExtTM: QcomNvInfo"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    :cond_0
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .line 2660
    const-string v0, "MotoExtTM: QcomNvInfo"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    return-void
.end method

.method private static parseName(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "nameLen"    # I

    .line 2077
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 2078
    .local v0, "byteOrder":Ljava/nio/ByteOrder;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2079
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2080
    .local v1, "strBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 2081
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2080
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2083
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2084
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
