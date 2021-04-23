.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvEvdoData;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvEvdoData"
.end annotation


# static fields
.field private static final OEM_RIL_CDMA_EVDO_SECTOR_NUMBER:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 2181
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;-><init>()V

    .line 2183
    .local v0, "data":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->hdrChanNum:I

    .line 2184
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->uatiColorCode:I

    .line 2185
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->txUati:I

    .line 2186
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->pilotPn:I

    .line 2187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->hdrRssi:I

    .line 2188
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->rxPwrRx0Dbm:I

    .line 2190
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->measPkts:I

    .line 2192
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->errPkts:I

    .line 2193
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->sessionState:I

    .line 2194
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->atState:I

    .line 2195
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvEvdoData;->ipToString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->ip:Ljava/lang/String;

    .line 2196
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->userCount:I

    .line 2198
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2200
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2201
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->macIndex:I

    .line 2202
    const/16 v1, 0x10

    new-array v2, v1, [I

    iput-object v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->sectorIds:[I

    .line 2203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2204
    iget-object v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->sectorIds:[I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    .line 2203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2206
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->pilotEnergy:I

    .line 2207
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->drcCover:I

    .line 2208
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->sinr:I

    .line 2209
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;->anAuthStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2211
    goto :goto_1

    .line 2210
    :catch_0
    move-exception v1

    .line 2213
    :goto_1
    return-object v0
.end method

.method private static ipToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # I

    .line 2165
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2166
    .local v0, "dword":[I
    and-int/lit16 v1, p0, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2167
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 2168
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 2169
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 2171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2172
    .local v1, "ipSb":Ljava/lang/StringBuilder;
    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2173
    aget v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2174
    aget v3, v0, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2175
    aget v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
