.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCallProcessingData;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvCallProcessingData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 2226
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;-><init>()V

    .line 2228
    .local v0, "data":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->fer:I

    .line 2229
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bestActivePilot:I

    .line 2230
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bestActiveStrength:I

    .line 2231
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bestNeighborPilot:I

    .line 2232
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bestNeighborStrength:I

    .line 2233
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->sid:I

    .line 2234
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->nid:I

    .line 2235
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->channel:I

    .line 2236
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->serviceOption:I

    .line 2237
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->droppedCallCounter:I

    .line 2239
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2240
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->txPower:I

    .line 2241
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->band:I

    .line 2242
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->activePilotCount:I

    .line 2243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->neighborPilotCount:I

    .line 2244
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->candPilotCount:I

    .line 2245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->cpState:I

    .line 2246
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->lastCallIndicator:I

    .line 2247
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->lnaStatus:I

    .line 2248
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->rssi:I

    .line 2250
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2252
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2254
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2255
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2256
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2257
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->PRevInUse:I

    .line 2258
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bid:I

    .line 2260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 2261
    iget-object v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->activeSetPn:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 2260
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2263
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2264
    iget-object v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->activeSetStrength:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v1

    .line 2263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2266
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    const/16 v2, 0x28

    if-ge v1, v2, :cond_2

    .line 2267
    iget-object v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->neighborSetPn:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    .line 2266
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2269
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bsLat:I

    .line 2270
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;->bsLon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2273
    goto :goto_3

    .line 2272
    :catch_0
    move-exception v1

    .line 2275
    :goto_3
    return-object v0
.end method
