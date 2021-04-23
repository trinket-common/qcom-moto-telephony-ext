.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
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
    name = "NvSprintCDMAVoiceSOType"
.end annotation


# static fields
.field private static final RDE_VOICE_CAI_SO_FULL_TDSO:S = 0x20s

.field private static final RDE_VOICE_CAI_SO_LOOPBACK:S = 0x2s

.field private static final RDE_VOICE_CAI_SO_LOOPBACK_13K:S = 0x9s

.field private static final RDE_VOICE_CAI_SO_LOOPBACK_SO55:S = 0x37s

.field private static final RDE_VOICE_CAI_SO_MARKOV:S = -0x7ffes

.field private static final RDE_VOICE_CAI_SO_MARKOV_13K:S = -0x7fe4s

.field private static final RDE_VOICE_CAI_SO_MARKOV_SO54:S = 0x36s

.field private static final RDE_VOICE_CAI_SO_RS1_MARKOV:S = -0x7fe2s

.field private static final RDE_VOICE_CAI_SO_RS2_MARKOV:S = -0x7fe1s

.field private static final RDE_VOICE_CAI_SO_TDSO:S = -0x7ff8s

.field private static final RDE_VOICE_CAI_SO_VOICE_13K:S = -0x8000s

.field private static final RDE_VOICE_CAI_SO_VOICE_4GV_NB:S = 0x44s

.field private static final RDE_VOICE_CAI_SO_VOICE_EVRC:S = 0x3s


# instance fields
.field public evrcCapabilityEnabled:B

.field public homeOrigVoiceSo:S

.field public homePageVoiceSo:S

.field public nam:B

.field public roamOrigVoiceSo:S


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2486
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->nam:B

    .line 2487
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->evrcCapabilityEnabled:B

    .line 2488
    iput-short v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homePageVoiceSo:S

    .line 2489
    iput-short v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homeOrigVoiceSo:S

    .line 2490
    iput-short v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->roamOrigVoiceSo:S

    .line 2491
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 2502
    const-string v0, "deserialize NvSprintCDMAVoiceSOType"

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 2503
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;-><init>()V

    .line 2504
    .local v0, "so":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->nam:B

    .line 2505
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->evrcCapabilityEnabled:B

    .line 2506
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homePageVoiceSo:S

    .line 2507
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homeOrigVoiceSo:S

    .line 2508
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->roamOrigVoiceSo:S

    .line 2509
    return-object v0
.end method

.method public static toNvSo(I)S
    .locals 1
    .param p0, "oemSo"    # I

    .line 2513
    packed-switch p0, :pswitch_data_0

    .line 2530
    const/16 v0, -0x8000

    return v0

    .line 2527
    :pswitch_0
    const/16 v0, 0x44

    return v0

    .line 2525
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 2523
    :pswitch_2
    const/16 v0, 0x9

    return v0

    .line 2521
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2519
    :pswitch_4
    const/16 v0, -0x7fe4

    return v0

    .line 2517
    :pswitch_5
    const/16 v0, -0x7ffe

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toOemSo(S)I
    .locals 2
    .param p0, "nvSo"    # S

    .line 2534
    const/4 v0, -0x1

    .line 2535
    .local v0, "oemSo":I
    const/16 v1, -0x8000

    if-eq p0, v1, :cond_6

    const/16 v1, -0x7ffe

    if-eq p0, v1, :cond_5

    const/16 v1, -0x7fe4

    if-eq p0, v1, :cond_4

    const/16 v1, 0x9

    if-eq p0, v1, :cond_3

    const/16 v1, 0x44

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 2558
    const/4 v0, -0x1

    goto :goto_0

    .line 2552
    :cond_0
    const/4 v0, 0x5

    .line 2553
    goto :goto_0

    .line 2540
    :cond_1
    const/4 v0, 0x3

    .line 2541
    goto :goto_0

    .line 2555
    :cond_2
    const/4 v0, 0x6

    .line 2556
    goto :goto_0

    .line 2543
    :cond_3
    const/4 v0, 0x4

    .line 2544
    goto :goto_0

    .line 2549
    :cond_4
    const/4 v0, 0x2

    .line 2550
    goto :goto_0

    .line 2546
    :cond_5
    const/4 v0, 0x1

    .line 2547
    goto :goto_0

    .line 2537
    :cond_6
    const/4 v0, 0x0

    .line 2538
    nop

    .line 2561
    :goto_0
    return v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 2494
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->nam:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2495
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->evrcCapabilityEnabled:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2496
    iget-short v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homePageVoiceSo:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2497
    iget-short v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homeOrigVoiceSo:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2498
    iget-short v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->roamOrigVoiceSo:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2499
    return-void
.end method

.method public size()I
    .locals 1

    .line 2565
    const/16 v0, 0x8

    return v0
.end method
