.class public Lcom/motorola/android/internal/telephony/QcomNvUtils;
.super Ljava/lang/Object;
.source "QcomNvUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;,
        Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    }
.end annotation


# static fields
.field public static final CDMA_SPC_LOCK_CODE_LENGTH:I = 0x6

.field private static final DBG:Z

.field public static final DEFAULT_SPC_CODE:Ljava/lang/String; = "000000"

.field private static final READING_RDE_RESP_BUF_SIZE:I = 0x1800

.field public static final READING_REQ_HEADER_SIZE:I = 0x8

.field private static final READING_RESP_BUF_SIZE:I = 0x1000

.field public static final SIZE_OF_NV_ITEM:I = 0x80

.field private static final TAG:Ljava/lang/String; = "MotoExtTM: QcomNvUtils"

.field private static final WRITING_RESP_BUF_SIZE:I = 0x800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateRdeOemReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;Ljava/lang/String;)[B
    .locals 4
    .param p0, "reqId"    # I
    .param p1, "rdeNv"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .param p2, "spcCode"    # Ljava/lang/String;

    .line 200
    nop

    .line 201
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    .line 200
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 202
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->getSize()I

    move-result v1

    sget-object v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    invoke-static {v0, p0, v1, v2, p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;Ljava/lang/String;)V

    .line 208
    iget v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 209
    iget v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->recordNum:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    iget v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 211
    iget-object v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 213
    iget-object v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    invoke-interface {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;->serialize(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 215
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 220
    .local v1, "data":[B
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RDE request for element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeNvName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Allocated OemReqData: data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 220
    const-string v3, "MotoExtTM: QcomNvUtils"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_1
    return-object v1
.end method

.method public static allocateReadingNvRespBuffer()[B
    .locals 1

    .line 337
    const/16 v0, 0x1000

    new-array v0, v0, [B

    return-object v0
.end method

.method public static allocateReadingRdeNvRespBuffer()[B
    .locals 1

    .line 322
    const/16 v0, 0x1800

    new-array v0, v0, [B

    return-object v0
.end method

.method public static allocateWritingNvRespBuffer()[B
    .locals 1

    .line 341
    const/16 v0, 0x800

    new-array v0, v0, [B

    return-object v0
.end method

.method public static allocateWritingRdeNvRespBuffer()[B
    .locals 1

    .line 326
    const/16 v0, 0x800

    new-array v0, v0, [B

    return-object v0
.end method

.method public static byteArrToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "arr"    # [B

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 436
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method public static byteArrToStringLog([B)Ljava/lang/String;
    .locals 5
    .param p0, "arr"    # [B

    .line 422
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 426
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 423
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    const-string v0, "null"

    return-object v0
.end method

.method public static decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    .locals 11
    .param p0, "reqId"    # I
    .param p1, "respData"    # [B

    .line 366
    const-string v0, "MotoExtTM: QcomNvUtils"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 367
    return-object v1

    .line 370
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 373
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    move-result-object v3

    .line 374
    .local v3, "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->error:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    sget-object v5, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 379
    :cond_1
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoding Reading Nv result for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->reqId:I

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getRequestName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_2
    const/4 v4, 0x0

    .line 381
    .local v4, "result":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    iget v5, v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->reqId:I

    sparse-switch v5, :sswitch_data_0

    .line 405
    goto :goto_0

    .line 383
    :sswitch_0
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;

    move-result-object v0

    move-object v4, v0

    .line 384
    goto :goto_1

    .line 398
    :sswitch_1
    new-instance v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    iget v6, v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->dataLength:I

    new-array v6, v6, [B

    invoke-direct {v5, v6}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>([B)V

    .line 399
    .local v5, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const/16 v7, 0x12

    iget-object v8, v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v9, 0x0

    iget v10, v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->dataLength:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    move-object v4, v5

    .line 402
    goto :goto_1

    .line 405
    .end local v5    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown oem request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_1
    return-object v4

    .line 375
    .end local v4    # "result":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    :cond_3
    :goto_2
    const-string v4, "decode Reading Nv error for header"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    return-object v1

    .line 409
    .end local v3    # "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    :catch_0
    move-exception v3

    .line 410
    .local v3, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "decodeReadingNvResult: buffer underflow"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2000001 -> :sswitch_1
        0x2000003 -> :sswitch_1
        0x2000005 -> :sswitch_1
        0x2000007 -> :sswitch_1
        0x200000b -> :sswitch_1
        0x200000d -> :sswitch_1
        0x200000f -> :sswitch_1
        0x2000011 -> :sswitch_1
        0x2000012 -> :sswitch_1
        0x20000b0 -> :sswitch_0
        0x20000b7 -> :sswitch_1
        0x20000bc -> :sswitch_1
        0x20000c0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static decodeReadingRdeNvResult([B)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .locals 7
    .param p0, "resultData"    # [B

    .line 226
    const-string v0, "MotoExtTM: QcomNvUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 227
    return-object v1

    .line 230
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 231
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 234
    .local v3, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    :try_start_0
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    move-result-object v4

    .line 235
    .local v4, "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->error:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    sget-object v6, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->deserializeRde(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v0

    .line 244
    .end local v3    # "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .end local v4    # "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    .local v0, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    nop

    .line 245
    return-object v0

    .line 236
    .end local v0    # "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .restart local v3    # "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .restart local v4    # "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    :cond_2
    :goto_0
    const-string v5, "decodeReadingRdeNv get error for head"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-object v1

    .line 241
    .end local v4    # "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    :catch_0
    move-exception v4

    .line 242
    .local v4, "e":Ljava/nio/BufferUnderflowException;
    const-string v5, "decodeReadingRdeNvResult: buffer underflow"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v1
.end method

.method private static deserializeRde(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 249
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;-><init>()V

    .line 250
    .local v0, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    .line 251
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->recordNum:I

    .line 252
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->offset:I

    .line 253
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->length:I

    .line 254
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>()V

    .line 255
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    iget v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->length:I

    if-lez v2, :cond_0

    .line 256
    iget v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->length:I

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 258
    :cond_0
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    const-string v3, "MotoExtTM: QcomNvUtils"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decoding response for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeNvName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iget v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    const/16 v4, 0x4e20

    const-string v5, ")"

    const/4 v6, 0x0

    const/16 v7, 0x22

    if-lt v2, v4, :cond_2

    iget v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    const/16 v4, 0x4f1f

    if-gt v2, v4, :cond_2

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deserialize RDE_MOT_NV_ENABLE_BAND_CARRIER_AGGREGATION ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v4, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    iget v8, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->length:I

    invoke-static {v2, v7, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 269
    :cond_2
    iget v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    const/16 v4, 0x26

    if-eq v2, v4, :cond_3

    const/16 v4, 0x27

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_3

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x271f

    if-eq v2, v4, :cond_3

    const/16 v4, 0x2720

    if-eq v2, v4, :cond_3

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deserialize unknown elementId ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :sswitch_0
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 304
    goto :goto_0

    .line 311
    :sswitch_1
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 312
    goto :goto_0

    .line 307
    :sswitch_2
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 308
    goto :goto_0

    .line 297
    :cond_3
    :pswitch_0
    :sswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    iget v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->length:I

    invoke-static {v2, v7, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iput-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 300
    nop

    .line 318
    :goto_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x1e -> :sswitch_1
        0x24 -> :sswitch_3
        0x2b -> :sswitch_3
        0x2d -> :sswitch_3
        0x1f5b -> :sswitch_3
        0x1f60 -> :sswitch_3
        0x20d8 -> :sswitch_3
        0x272a -> :sswitch_3
        0x272e -> :sswitch_3
        0x5209 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2723
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2738
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getReadingNvReqData(I)[B
    .locals 2
    .param p0, "reqId"    # I

    .line 345
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem Request to RIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getRequestName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtTM: QcomNvUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getReadingRdeNvReqData(Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;)[B
    .locals 2
    .param p0, "rdeNv"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    .line 190
    const v0, 0x2000016

    const-string v1, "000000"

    invoke-static {v0, p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateRdeOemReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)[B
    .locals 1
    .param p0, "reqId"    # I
    .param p1, "data"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 350
    const-string v0, "000000"

    invoke-static {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B
    .locals 3
    .param p0, "reqId"    # I
    .param p1, "data"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    .param p2, "spcCode"    # Ljava/lang/String;

    .line 354
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Oem Request to RIL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getRequestName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtTM: QcomNvUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-interface {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 356
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 358
    invoke-interface {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;->size()I

    move-result v1

    sget-object v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    invoke-static {v0, p0, v1, v2, p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;Ljava/lang/String;)V

    .line 361
    invoke-interface {p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;->serialize(Ljava/nio/ByteBuffer;)V

    .line 362
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static getWritingRdeNvReqData(Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;)[B
    .locals 2
    .param p0, "rdeNv"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    .line 195
    const v0, 0x2000015

    const-string v1, "000000"

    invoke-static {v0, p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateRdeOemReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static isValidBand(I)Z
    .locals 1
    .param p0, "bandId"    # I

    .line 440
    if-lez p0, :cond_0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    .line 441
    const/4 v0, 0x1

    return v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final readOemHookRespHeader(I[B)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    .locals 2
    .param p0, "reqId"    # I
    .param p1, "bytes"    # [B

    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 70
    const-string v0, "MotoExtTM: QcomNvUtils"

    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;-><init>()V

    .line 73
    .local v1, "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->reqId:I

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->dataLength:I

    .line 75
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->fromInt(I)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    move-result-object v2

    iput-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->error:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 76
    const/4 v2, 0x6

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->spcLockCode:[B

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->spcLockCode:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 78
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->spcLockCode:[B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    aput-byte v4, v3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readOemHookRespHeader: reqId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->reqId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  dataLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->dataLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->error:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 83
    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  spcLockCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->spcLockCode:[B

    .line 84
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    nop

    .line 90
    return-object v1

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "decode RespHeader exception, BufferUnderflowException"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public static writeOemHookReqHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;Ljava/lang/String;)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "reqId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 110
    .local v0, "arrSpcLockCode":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 111
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;[B)V

    .line 115
    return-void
.end method

.method public static writeOemHookReqHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;[B)V
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "reqId"    # I
    .param p2, "len"    # I
    .param p3, "err"    # Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    .param p4, "spcLockCode"    # [B

    .line 119
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->toInt()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 124
    aget-byte v1, p4, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_0
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvUtils;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeOemHookReqHeader: reqId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  dataLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  spcLockCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p4}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "MotoExtTM: QcomNvUtils"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    return-void
.end method

.method public static writeOemHookReqHeader(I)[B
    .locals 2
    .param p0, "reqId"    # I

    .line 94
    sget-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;)[B

    move-result-object v0

    return-object v0
.end method

.method public static writeOemHookReqHeader(IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;)[B
    .locals 2
    .param p0, "reqId"    # I
    .param p1, "len"    # I
    .param p2, "err"    # Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 100
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 103
    const-string v1, "000000"

    invoke-static {v0, p0, p1, p2, v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(Ljava/nio/ByteBuffer;IILcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static writeQcomOemHookReqHeader(I[B)[B
    .locals 5
    .param p0, "reqId"    # I
    .param p1, "data"    # [B

    .line 134
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 136
    .local v1, "headerSize":I
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 138
    .local v2, "header":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 139
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    array-length v0, p1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 145
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    return-object v2
.end method
