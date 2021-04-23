.class public Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;
.super Ljava/lang/Object;
.source "QcomOemHookIndicationProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EMBMS_MESSAGE_UNSOLSIB16_COVERAGE:I = 0x19

.field private static final MOT_QMI_SPRINT_DS_PROFILE_MAX_APN_STRING_LEN_V01:I = 0x67

.field private static final OEMHOOK_TUNNELING_SERVICE_EMBMS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotoExtTM: QcomOemHookIndicationProcess"


# instance fields
.field private mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V
    .locals 0
    .param p1, "service"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 37
    return-void
.end method

.method private handleBandInfo(ILjava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 129
    .local v0, "dataLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 130
    .local v1, "bandArrayLength":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "bandInfos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 132
    new-instance v4, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;

    invoke-direct {v4}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;-><init>()V

    .line 133
    .local v4, "bandInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;
    invoke-virtual {v4, p2}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;->readFromByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 134
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-boolean v5, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " band Info changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MotoExtTM: QcomOemHookIndicationProcess"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v4    # "bandInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->setBandInfo(ILjava/util/List;)V

    .line 138
    return-void
.end method

.method private handleCaInfo(ILjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 141
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;-><init>()V

    .line 142
    .local v0, "caInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 143
    .local v1, "len":I
    const-string v2, "MotoExtTM: QcomOemHookIndicationProcess"

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 144
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response OEM_RIL_UNSOL_LTE_CA_INFO  size is Invalid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void

    .line 149
    :cond_1
    if-lt v1, v3, :cond_2

    .line 151
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 152
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 154
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;->caConfigured:B

    .line 157
    :cond_2
    const/16 v3, 0x9

    if-lt v1, v3, :cond_3

    .line 159
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 160
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    .line 162
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;->totalNRB:I

    .line 165
    :cond_3
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OEM_RIL_UNSOL_LTE_CA_INFO len = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_4
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v2, p1, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyCAInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;)V

    .line 167
    return-void
.end method

.method private handleLteError(ILjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 206
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;-><init>()V

    .line 207
    .local v0, "lteError":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;
    const/4 v1, 0x0

    .line 208
    .local v1, "apnNameLength":I
    const/16 v2, 0x67

    new-array v3, v2, [B

    .line 210
    .local v3, "apnNameAsByteArray":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 211
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    .line 213
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;->emmCode:I

    .line 214
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iput-boolean v4, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;->apnValid:Z

    .line 215
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    move v1, v4

    .line 216
    invoke-virtual {p2, v3, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 219
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v5, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;->apnName:Ljava/lang/String;

    .line 220
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;->esmCode:I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    nop

    .line 226
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v2, p1, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->setLteError(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;)V

    .line 227
    return-void

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "MotoExtTM: QcomOemHookIndicationProcess"

    const-string v5, "handleLteError fails."

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    return-void
.end method

.method private handleMipError(ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 231
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    .line 233
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 234
    .local v0, "error":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v1, p1, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyMipErrorForPhone(II)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "error":I
    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    const-string v1, "MotoExtTM: QcomOemHookIndicationProcess"

    const-string v2, "handleMipError fails."

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :goto_0
    return-void
.end method

.method private handleNITZInfo(ILjava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 262
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;-><init>()V

    .line 263
    .local v0, "info":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 264
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 265
    .local v1, "isValid":B
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 267
    .local v2, "longNameLen":I
    new-array v3, v2, [B

    .line 268
    .local v3, "longNamebyteArr":[B
    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 269
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 270
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 271
    .local v5, "shortNameLen":I
    new-array v6, v5, [B

    .line 272
    .local v6, "shortNamebyteArr":[B
    invoke-virtual {p2, v6, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 273
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 276
    .end local v2    # "longNameLen":I
    .end local v3    # "longNamebyteArr":[B
    .end local v5    # "shortNameLen":I
    .end local v6    # "shortNamebyteArr":[B
    :cond_0
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM_RIL_UNSOL_NITZ_INFO_IND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotoExtTM: QcomOemHookIndicationProcess"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v2, p1, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyTOEInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;)V

    .line 278
    return-void
.end method

.method private handlePCOInfo(ILjava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 170
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;-><init>()V

    .line 172
    .local v0, "pcoInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;
    const/4 v1, -0x1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->value:I

    .line 173
    iput p1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->phoneId:I

    .line 174
    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->subId:I

    .line 176
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 177
    .local v1, "apn_name_length":I
    new-array v2, v1, [B

    .line 178
    .local v2, "apnArray":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 179
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->apnName:Ljava/lang/String;

    .line 181
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 182
    .local v3, "mcc":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 183
    .local v4, "mnc":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 184
    .local v5, "mnc_includes_pcs_digit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 186
    .local v6, "app_specific_info_len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    iput v7, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->value:I

    .line 188
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    .line 191
    .local v7, "container_id":I
    sget-boolean v8, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    const-string v9, "MotoExtTM: QcomOemHookIndicationProcess"

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notify pco info updated, mcc="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mnc="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mnc_includes_pcs_digit="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", app_specific_info_len = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pco value="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->value:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", container_id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , apn name ="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->apnName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget v8, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->value:I

    if-gez v8, :cond_1

    .line 197
    const-string v8, "PCO value is invalid, will not notify to app!"

    invoke-static {v9, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v8, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getSubIdUsingPhoneId(I)I

    move-result v8

    iput v8, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;->subId:I

    .line 200
    iget-object v8, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v8, p1, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyPCOInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;)V

    .line 202
    :goto_0
    return-void
.end method

.method private handleQCGenericUnsol(ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "bf"    # Ljava/nio/ByteBuffer;

    .line 281
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 283
    .local v0, "responseSize":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 284
    .local v1, "serviceId":S
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleTunnelingServiceEMBMS(ILjava/nio/ByteBuffer;)V

    .line 287
    nop

    .line 292
    :goto_0
    return-void
.end method

.method private handleSimLockInfoChanged(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 241
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifySimLockInfoChangedForPhone(I)V

    .line 242
    return-void
.end method

.method private handleTunnelingServiceEMBMS(ILjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "oemHookResponse"    # Ljava/nio/ByteBuffer;

    .line 296
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 297
    .local v0, "messageId":S
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;-><init>(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$1;)V

    .line 300
    .local v1, "tlvObj":Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;
    invoke-static {v1, p2}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->access$100(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;Ljava/nio/ByteBuffer;)V

    .line 302
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->access$200(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;)[B

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->access$200(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;)[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3

    .line 303
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->access$200(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v3, v4

    :cond_1
    move v2, v3

    .line 304
    .local v2, "isInSIB16Coverage":Z
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v3, :cond_2

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMBMS_MESSAGE_UNSOLSIB16_COVERAGE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotoExtTM: QcomOemHookIndicationProcess"

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->notifySIB16Coverage(IZ)V

    .line 314
    .end local v1    # "tlvObj":Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;
    .end local v2    # "isInSIB16Coverage":Z
    :cond_3
    :goto_0
    return-void
.end method

.method private static isQcUnsolOemHookResp(Ljava/nio/ByteBuffer;)Z
    .locals 7
    .param p0, "bf"    # Ljava/nio/ByteBuffer;

    .line 103
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 104
    .local v1, "identifierSize":I
    add-int/lit8 v2, v1, 0x8

    .line 105
    .local v2, "headerSize":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 108
    .local v3, "buffSize":I
    const/4 v4, 0x0

    if-ge v3, v2, :cond_0

    .line 113
    return v4

    .line 115
    :cond_0
    new-array v5, v1, [B

    .line 116
    .local v5, "oemIdBytes":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 117
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 118
    .local v6, "oemIdString":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    return v4

    .line 123
    .end local v5    # "oemIdBytes":[B
    .end local v6    # "oemIdString":Ljava/lang/String;
    :cond_1
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotoExtTM: QcomOemHookIndicationProcess"

    const-string v4, "it\'s a Qcom Unsolicited oem hook message"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static isQcUnsolOemHookRespSupported(I)Z
    .locals 1
    .param p0, "oemHookRespId"    # I

    .line 93
    const v0, 0x80425

    if-eq p0, v0, :cond_1

    const v0, 0x80443

    if-eq p0, v0, :cond_1

    const v0, 0x80444

    if-eq p0, v0, :cond_1

    const v0, 0x8044c

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 97
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private notifySIB16Coverage(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "inCoverage"    # Z

    .line 332
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifySIB16CoverageForPhone(IZ)V

    .line 333
    return-void
.end method


# virtual methods
.method public processUnsolOemhookIndication(I[B)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "response"    # [B

    .line 40
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    const-string v1, "MotoExtTM: QcomOemHookIndicationProcess"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processUnsolOemhookIndication: raw message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 44
    .local v0, "bf":Ljava/nio/ByteBuffer;
    const/4 v2, -0x1

    .line 46
    .local v2, "msgId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->isQcUnsolOemHookResp(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 48
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->isQcUnsolOemHookRespSupported(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 49
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not support QCOM  Unsolicted Oem Hook Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_1
    return-void

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 57
    :cond_3
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processUnsolOemhookIndication: msgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_4
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 82
    :sswitch_0
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleNITZInfo(ILjava/nio/ByteBuffer;)V

    .line 83
    goto :goto_0

    .line 79
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleSimLockInfoChanged(I)V

    .line 80
    goto :goto_0

    .line 64
    :sswitch_2
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleCaInfo(ILjava/nio/ByteBuffer;)V

    .line 65
    goto :goto_0

    .line 61
    :sswitch_3
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleBandInfo(ILjava/nio/ByteBuffer;)V

    .line 62
    goto :goto_0

    .line 73
    :sswitch_4
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleLteError(ILjava/nio/ByteBuffer;)V

    .line 74
    goto :goto_0

    .line 76
    :sswitch_5
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleMipError(ILjava/nio/ByteBuffer;)V

    .line 77
    goto :goto_0

    .line 70
    :sswitch_6
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handleQCGenericUnsol(ILjava/nio/ByteBuffer;)V

    .line 71
    goto :goto_0

    .line 67
    :sswitch_7
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->handlePCOInfo(ILjava/nio/ByteBuffer;)V

    .line 68
    nop

    .line 88
    :goto_0
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOemHookRawEventForPhone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_5
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v1, p1, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyOemHookRawEventForPhone(I[B)V

    .line 90
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x80425 -> :sswitch_7
        0x8044c -> :sswitch_6
        0x20001b0 -> :sswitch_5
        0x20001b1 -> :sswitch_4
        0x4001000 -> :sswitch_3
        0x4001100 -> :sswitch_2
        0x4001a00 -> :sswitch_1
        0x4001b00 -> :sswitch_0
    .end sparse-switch
.end method
