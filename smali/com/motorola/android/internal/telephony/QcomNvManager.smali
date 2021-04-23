.class public Lcom/motorola/android/internal/telephony/QcomNvManager;
.super Ljava/lang/Object;
.source "QcomNvManager.java"


# static fields
.field private static final DBG:Z

.field private static final GET_ACTIVE_SINGLE_SLOT_DATA_LENGTH:I = 0x2

.field private static final SET_ACTIVE_SINGLE_SLOT_DATA_LENGTH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotoExtTM: QcomNvManager"


# instance fields
.field private VOICE_DOMAIN_SETTING_LENGTH_BYTE:I

.field private mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V
    .locals 1
    .param p1, "service"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->VOICE_DOMAIN_SETTING_LENGTH_BYTE:I

    .line 75
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/QcomNvManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomNvManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/QcomNvManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomNvManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private getFactoryResetType(I)B
    .locals 2
    .param p1, "resetType"    # I

    .line 537
    const/4 v0, -0x1

    .line 538
    .local v0, "type":B
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, -0x1

    .line 541
    nop

    .line 546
    :goto_0
    return v0
.end method

.method private getNVIndexForCA(I)I
    .locals 3
    .param p1, "primaryBandId"    # I

    .line 1512
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->isValidBand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1516
    add-int/lit16 v0, p1, 0x4e20

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1513
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNVIndexForCA: invalid primaryBandId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I

    .line 1375
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(III)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v0

    return-object v0
.end method

.method private getRdeNvValueByElementId(III)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "recordNum"    # I

    .line 1434
    const/4 v0, 0x0

    if-gez p2, :cond_0

    return-object v0

    .line 1436
    :cond_0
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    invoke-direct {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;-><init>()V

    .line 1437
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    iput p2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    .line 1438
    iput p3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->recordNum:I

    .line 1439
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingRdeNvReqData(Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;)[B

    move-result-object v2

    .line 1440
    .local v2, "reqRdeData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingRdeNvRespBuffer()[B

    move-result-object v3

    .line 1441
    .local v3, "respRdeData":[B
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v4, p1, v2, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v4

    if-ltz v4, :cond_1

    .line 1442
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingRdeNvResult([B)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v0

    return-object v0

    .line 1445
    :cond_1
    return-object v0
.end method

.method private getWritingNvRespResult(II[B[B)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "reqId"    # I
    .param p3, "reqData"    # [B
    .param p4, "respData"    # [B

    .line 1499
    const/4 v0, 0x0

    .line 1500
    .local v0, "result":Z
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v1, p1, p3, p4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1501
    invoke-static {p2, p4}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(I[B)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    move-result-object v1

    .line 1502
    .local v1, "respHeader":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Writing NV result for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->reqId:I

    .line 1503
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getRequestName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1502
    const-string v3, "MotoExtTM: QcomNvManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_0
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->error:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    sget-object v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    if-ne v2, v3, :cond_1

    .line 1505
    const/4 v0, 0x1

    .line 1508
    .end local v1    # "respHeader":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    :cond_1
    return v0
.end method

.method private getWritingRdeNvRespResult(I[B[B)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "reqData"    # [B
    .param p3, "respData"    # [B

    .line 1494
    const v0, 0x2000015

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1521
    const-string v0, "MotoExtTM: QcomNvManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1525
    const-string v0, "MotoExtTM: QcomNvManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void
.end method

.method private setBandClassSupport(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "bc"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    .line 184
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isVersionUnknown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    const v1, 0x5002c

    .line 187
    .local v1, "reqId":I
    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 189
    .local v2, "data":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 190
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 194
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {p2, v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->serialize(Ljava/nio/ByteBuffer;)V

    .line 197
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v2, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v4

    if-ltz v4, :cond_1

    .line 198
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_1
    return v0

    .line 184
    .end local v1    # "reqId":I
    .end local v2    # "data":[B
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    return v0
.end method

.method private setRdeNvValue(IIB)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "value"    # B

    .line 1455
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-direct {v0, p3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(B)V

    .line 1456
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v1

    return v1
.end method

.method private setRdeNvValue(III)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "value"    # I

    .line 1470
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 1471
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v1

    return v1
.end method

.method private setRdeNvValue(IIILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "rdeRecordNum"    # I
    .param p4, "nvData"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 1480
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;-><init>()V

    .line 1481
    .local v0, "nv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    iput p2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    .line 1482
    iput p3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->recordNum:I

    .line 1483
    iput-object p4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 1484
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(ILcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;)Z

    move-result v1

    return v1
.end method

.method private setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "nvData"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    .line 1475
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v0

    return v0
.end method

.method private setRdeNvValue(IIS)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "value"    # S

    .line 1465
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(SLjava/nio/ByteOrder;)V

    .line 1466
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v1

    return v1
.end method

.method private setRdeNvValue(IIZ)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "bValue"    # Z

    .line 1449
    move v0, p3

    .line 1450
    .local v0, "val":B
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-direct {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(B)V

    .line 1451
    .local v1, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-direct {p0, p1, p2, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v2

    return v2
.end method

.method private setRdeNvValue(II[B)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "rdeElementId"    # I
    .param p3, "value"    # [B

    .line 1460
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-direct {v0, p3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>([B)V

    .line 1461
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v1

    return v1
.end method

.method private setRdeNvValue(ILcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "nv"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    .line 1488
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingRdeNvReqData(Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;)[B

    move-result-object v0

    .line 1489
    .local v0, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingRdeNvRespBuffer()[B

    move-result-object v1

    .line 1490
    .local v1, "respData":[B
    invoke-direct {p0, p1, v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingRdeNvRespResult(I[B[B)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public CSGPerformNWScan(ILcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "scanCB"    # Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;

    .line 975
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 976
    .local v0, "payload":[B
    const v1, 0x80096

    invoke-static {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeQcomOemHookReqHeader(I[B)[B

    move-result-object v1

    .line 979
    .local v1, "oemReq":[B
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v3, Lcom/motorola/android/internal/telephony/QcomNvManager$1;

    invoke-direct {v3, p0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager$1;-><init>(Lcom/motorola/android/internal/telephony/QcomNvManager;Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I

    .line 1001
    return-void

    :array_0
    .array-data 1
        0x11t
        0x0t
        0x0t
    .end array-data
.end method

.method public CSGSetSysSelectPref(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .param p3, "selectionCB"    # Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;

    .line 1004
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getCSGSelectionPayload(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;)[B

    move-result-object v0

    .line 1005
    .local v0, "payload":[B
    const v1, 0x80097

    invoke-static {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeQcomOemHookReqHeader(I[B)[B

    move-result-object v1

    .line 1009
    .local v1, "oemReq":[B
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v3, Lcom/motorola/android/internal/telephony/QcomNvManager$2;

    invoke-direct {v3, p0, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager$2;-><init>(Lcom/motorola/android/internal/telephony/QcomNvManager;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V

    invoke-virtual {v2, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I

    .line 1022
    return-void
.end method

.method public clearLteAvailableFile(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 790
    const/4 v0, 0x0

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    const/16 v1, 0x2727

    invoke-direct {p0, p1, v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v0

    return v0
.end method

.method public disableAllCAMultiDL(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 617
    const/16 v0, 0x1ff

    new-array v0, v0, [B

    .line 618
    .local v0, "bytes":[B
    const/16 v1, 0x5209

    invoke-direct {p0, p1, v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(II[B)Z

    move-result v1

    return v1
.end method

.method public enableCAPlusBandWidthFilter(IZ)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z

    .line 565
    const v0, 0x5002e

    .line 567
    .local v0, "reqId":I
    const/16 v1, 0x9

    new-array v1, v1, [B

    .line 568
    .local v1, "data":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 569
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 571
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 572
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 573
    int-to-byte v5, p2

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 575
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v1, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 576
    return v4

    .line 578
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public get1xAdvancedEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x271f

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 105
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 107
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v2, :cond_0

    .line 108
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toBool(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Z

    move-result v3

    return v3

    .line 111
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public get256QAMDLEnabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 359
    const/4 v0, 0x0

    .line 361
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2739

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 362
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_2

    .line 363
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 364
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 365
    .local v2, "ret":Z
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get256QAMDLEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    return v2

    .line 368
    .end local v2    # "ret":Z
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_2
    return v2
.end method

.method public get4x4MimoEnabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 342
    const/4 v0, 0x0

    .line 344
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2738

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 345
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 347
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 348
    .local v2, "ret":Z
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get4x4MimoEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    return v2

    .line 351
    .end local v2    # "ret":Z
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_2
    return v2
.end method

.method public get64QAMULEnabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x273a

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 379
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_2

    .line 380
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 381
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 382
    .local v2, "ret":Z
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get64QAMULEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    return v2

    .line 385
    .end local v2    # "ret":Z
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_2
    return v2
.end method

.method public getActiveSingleSimSlot(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 1397
    const v0, 0x5004b

    .line 1398
    .local v0, "reqId":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 1399
    .local v1, "reqData":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1400
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1401
    .local v2, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1402
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1404
    const/4 v4, 0x2

    new-array v4, v4, [B

    .line 1405
    .local v4, "resp":[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v5, p1, v1, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    .line 1406
    .local v5, "ret":I
    if-ltz v5, :cond_0

    .line 1407
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_0

    .line 1408
    const/4 v3, 0x1

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    return v3

    .line 1411
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getBC10Enabled(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 79
    const v0, 0x20000b0

    .line 80
    .local v0, "reqId":I
    const/4 v1, 0x0

    .line 81
    .local v1, "bc10":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;
    const/4 v2, 0x0

    .line 82
    .local v2, "ret":Z
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v3

    .line 83
    .local v3, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v4

    .line 84
    .local v4, "respData":[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v5, p1, v3, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    if-ltz v5, :cond_1

    .line 85
    invoke-static {v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;

    .line 86
    if-eqz v1, :cond_1

    .line 87
    iget v5, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;->status:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move v2, v6

    .line 90
    :cond_1
    return v2
.end method

.method public getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    .locals 7
    .param p1, "phoneId"    # I

    .line 167
    const v0, 0x5002b

    .line 168
    .local v0, "reqId":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 169
    .local v1, "reqData":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 170
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 171
    .local v2, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 174
    new-instance v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    invoke-direct {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;-><init>()V

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->size()I

    move-result v3

    new-array v3, v3, [B

    .line 175
    .local v3, "resp":[B
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v4, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v4

    .line 176
    .local v4, "ret":I
    if-ltz v4, :cond_0

    .line 177
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 178
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v5, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->deserialize(Ljava/nio/ByteBuffer;I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v6

    return-object v6

    .line 180
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

.method public getBandPriorityList(I)[I
    .locals 6
    .param p1, "phoneId"    # I

    .line 815
    const/16 v0, 0x272a

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v0

    .line 816
    .local v0, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v1, :cond_1

    .line 817
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    iget-object v1, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 818
    .local v1, "resp":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 819
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 820
    .local v2, "buf":Ljava/nio/ByteBuffer;
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 821
    .local v3, "priList":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 822
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    aput v5, v3, v4

    .line 821
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 824
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 827
    .end local v1    # "resp":[B
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "priList":[I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCABitmapForBand(II)[B
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "primaryBandId"    # I

    .line 799
    const/4 v0, 0x0

    .line 801
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getNVIndexForCA(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 802
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 804
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 805
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    return-object v3

    .line 807
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getCDMADataRate(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 894
    const v0, 0x2000005

    .line 895
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 896
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 897
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 898
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 900
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 901
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v4

    return v4

    .line 904
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getCDMAServiceOption(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 845
    const v0, 0x200000b

    .line 846
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 847
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 848
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 849
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 851
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 852
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v4

    return v4

    .line 855
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getCaBwCombo(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    .locals 3
    .param p1, "phoneId"    # I

    .line 598
    const/16 v0, 0x5209

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v0

    .line 599
    .local v0, "rdeNV":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v1, 0x0

    .line 600
    .local v1, "caBwComboList":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-object v1, v2

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    .line 603
    :cond_0
    return-object v1
.end method

.method public getCampedCsgInfo(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    .locals 5
    .param p1, "phoneId"    # I

    .line 1025
    const v0, 0x50046

    .line 1026
    .local v0, "reqId":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 1027
    .local v1, "reqData":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1028
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1029
    .local v2, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1030
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1032
    const/16 v3, 0x64

    new-array v3, v3, [B

    .line 1033
    .local v3, "resp":[B
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v4, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1034
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgInfo;->deserialize([B)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;

    move-result-object v4

    return-object v4

    .line 1036
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getCdmaCallProcessingData(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;
    .locals 6
    .param p1, "phoneId"    # I

    .line 1055
    const v0, 0x2000011

    .line 1056
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 1057
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 1058
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1059
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1061
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1062
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1063
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1062
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCallProcessingData;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;

    move-result-object v4

    return-object v4

    .line 1066
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getCdmaHybridMode(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 951
    const v0, 0x200000d

    .line 952
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 953
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 954
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 955
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 957
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 958
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v4

    return v4

    .line 961
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getCdmaRxDiversity(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, -0x1

    .line 1073
    .local v1, "result":I
    const/16 v2, 0x26

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 1074
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 1075
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1076
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1077
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 1080
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v1
.end method

.method public getCdmaSidNidPairs(I)[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .locals 6
    .param p1, "phoneId"    # I

    .line 927
    const v0, 0x2000003

    .line 928
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 929
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 930
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 931
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 933
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 934
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 935
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 934
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->deserialize(Ljava/nio/ByteBuffer;)[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    move-result-object v4

    return-object v4

    .line 938
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getDDTMDefaultPreference(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 1220
    const v0, 0x20000b7

    .line 1221
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 1222
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 1223
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1224
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1226
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1227
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v4

    return v4

    .line 1230
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getDSSEnabled(I)B
    .locals 5
    .param p1, "phoneId"    # I

    .line 1347
    const/4 v0, 0x0

    .line 1348
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x272e

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1349
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 1350
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1351
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v2, :cond_0

    .line 1352
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    return v3

    .line 1356
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x2

    return v2
.end method

.method public getEhrpdEnabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 430
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_2

    .line 431
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 432
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toBool(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 433
    .local v2, "ret":Z
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEhrpdEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    return v2

    .line 436
    .end local v2    # "ret":Z
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_2
    return v2
.end method

.method public getEmergencyNumber(II)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "emergencyAddress"    # I

    .line 1134
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(III)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v0

    .line 1135
    .local v0, "rdeNV":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;

    .line 1136
    .local v1, "emergencyNumber":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;
    return-object v1
.end method

.method public getEvdoData(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;
    .locals 6
    .param p1, "phoneId"    # I

    .line 1040
    const v0, 0x2000012

    .line 1041
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 1042
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 1043
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1044
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1046
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1047
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1048
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1047
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvEvdoData;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;

    move-result-object v4

    return-object v4

    .line 1051
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getEvdoRevisionOption(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 869
    const v0, 0x200000f

    .line 870
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 871
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 872
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 873
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 875
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 876
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v4

    return v4

    .line 879
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public getFDDTM9Enabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 393
    const/4 v0, 0x0

    .line 395
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x273b

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 396
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_2

    .line 397
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 398
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 399
    .local v2, "ret":Z
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFDDTM9Enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    return v2

    .line 402
    .end local v2    # "ret":Z
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_2
    return v2
.end method

.method public getForNIDReg(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x34

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1272
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    .line 1273
    .local v2, "ret":Z
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_1

    .line 1274
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1275
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 1276
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 1279
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_1
    return v2
.end method

.method public getForSIDReg(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x33

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1259
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    .line 1260
    .local v2, "ret":Z
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_1

    .line 1261
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1262
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 1263
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 1266
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_1
    return v2
.end method

.method public getHdrRxDiversity(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 1088
    const/4 v0, 0x0

    .line 1089
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, -0x1

    .line 1091
    .local v1, "result":I
    const/16 v2, 0x27

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 1092
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 1093
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1094
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1095
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 1098
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v1
.end method

.method public getHomeSIDReg(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x32

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1246
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    .line 1247
    .local v2, "ret":Z
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_1

    .line 1248
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1249
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 1250
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 1253
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_1
    return v2
.end method

.method public getLTEBandEnable(II)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "bandId"    # I

    .line 205
    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    .line 207
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v1

    .line 208
    .local v1, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isLTEBandEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    const/4 v0, 0x1

    return v0

    .line 211
    :cond_1
    return v0
.end method

.method public getLTERRCState(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 583
    const v0, 0x50045

    .line 584
    .local v0, "reqId":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 585
    .local v1, "reqData":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 586
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 587
    .local v2, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 588
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTERRCStateDataType;->size()I

    move-result v3

    new-array v3, v3, [B

    .line 591
    .local v3, "resp":[B
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v4, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 592
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTERRCStateDataType;->deserialize([B)I

    move-result v4

    return v4

    .line 594
    :cond_0
    const/16 v4, 0xff

    return v4
.end method

.method public getLteAvailableFileRecords(I)Ljava/util/List;
    .locals 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteAvailableFileRecord;",
            ">;"
        }
    .end annotation

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, 0x0

    .line 765
    .local v1, "fileRecords":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteAvailableFileRecord;>;"
    const/16 v2, 0x2727

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 767
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    .line 768
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-object v0, v3

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 771
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v3, :cond_1

    .line 772
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 773
    .local v3, "bf":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 774
    iget-object v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLteAvailableFileRecord;->size()I

    move-result v5

    div-int/2addr v4, v5

    .line 775
    .local v4, "numRec":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 776
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLteAvailableFileRecord;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLteAvailableFileRecord;

    move-result-object v6

    .line 777
    .local v6, "rec":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteAvailableFileRecord;
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    .end local v6    # "rec":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteAvailableFileRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 781
    .end local v3    # "bf":Ljava/nio/ByteBuffer;
    .end local v4    # "numRec":I
    .end local v5    # "i":I
    :cond_1
    return-object v1
.end method

.method public getLteBsrTimer(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 727
    const v0, 0x20000bc

    .line 728
    .local v0, "reqId":I
    const/4 v1, -0x1

    .line 729
    .local v1, "bsrTimer":I
    const/4 v2, 0x0

    .line 731
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v3

    .line 732
    .local v3, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v4

    .line 733
    .local v4, "respData":[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v5, p1, v3, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    if-ltz v5, :cond_0

    .line 734
    invoke-static {v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 735
    if-eqz v2, :cond_0

    .line 736
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v1

    .line 739
    :cond_0
    return v1
.end method

.method public getLteData(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteData;
    .locals 7
    .param p1, "phoneId"    # I

    .line 622
    const v0, 0x20000c0

    .line 623
    .local v0, "reqId":I
    const/4 v1, 0x0

    .line 624
    .local v1, "lteData":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteData;
    const/4 v2, 0x0

    .line 625
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v3

    .line 626
    .local v3, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v4

    .line 627
    .local v4, "respData":[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v5, p1, v3, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    if-ltz v5, :cond_0

    .line 628
    invoke-static {v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 629
    if-eqz v2, :cond_0

    .line 630
    iget-object v5, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 631
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 630
    invoke-static {v5}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomLteData;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomLteData;

    move-result-object v1

    .line 634
    :cond_0
    return-object v1
.end method

.method public getMaxBsrTimer(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 676
    const/4 v0, 0x0

    .line 677
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, -0x1

    .line 679
    .local v1, "result":I
    const/16 v2, 0x2725

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 680
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 682
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 683
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v1

    .line 686
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v1
.end method

.method public getMaxBsrTimerStages(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, -0x1

    .line 699
    .local v1, "result":I
    const/16 v2, 0x2726

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 700
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 701
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 702
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 703
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v1

    .line 706
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v1
.end method

.method public getMipErrorCode(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .line 1180
    const/4 v0, 0x0

    .line 1181
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2723

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1182
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    .line 1183
    .local v2, "ret":I
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 1184
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1185
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 1186
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    iget-object v5, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int v2, v4, v5

    .line 1189
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v2
.end method

.method public getMobilePRev(I)I
    .locals 5
    .param p1, "phoneId"    # I

    .line 1106
    const v0, 0x2000007

    .line 1107
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 1108
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 1109
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1110
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1112
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1113
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v4

    return v4

    .line 1116
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const v3, 0xffff

    return v3
.end method

.method public getNamInfo(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;
    .locals 6
    .param p1, "phoneId"    # I

    .line 1156
    const v0, 0x2000001

    .line 1157
    .local v0, "reqId":I
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getReadingNvReqData(I)[B

    move-result-object v1

    .line 1158
    .local v1, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateReadingNvRespBuffer()[B

    move-result-object v2

    .line 1159
    .local v2, "respData":[B
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1160
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->decodeReadingNvResult(I[B)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1162
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 1163
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1164
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1163
    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaNAMInfo;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;

    move-result-object v4

    return-object v4

    .line 1167
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public getNextLteScan(I)I
    .locals 4
    .param p1, "phoneId"    # I

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, -0x1

    .line 648
    .local v1, "result":I
    const/16 v2, 0x2724

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 649
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 650
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 651
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    .line 652
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v1

    .line 655
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v1
.end method

.method public getProvisionUpdateRequest(I)Z
    .locals 10
    .param p1, "phoneId"    # I

    .line 485
    const v0, 0x50007

    .line 486
    .local v0, "reqId":I
    const/4 v1, 0x0

    .line 487
    .local v1, "ret":Z
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 488
    .local v2, "reqData":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 489
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 490
    .local v3, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 491
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 493
    new-instance v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;

    invoke-direct {v5}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;-><init>()V

    invoke-virtual {v5}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->size()I

    move-result v5

    new-array v5, v5, [B

    .line 494
    .local v5, "resp":[B
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v6, p1, v2, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v6

    if-ltz v6, :cond_1

    .line 495
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 496
    .local v6, "respBuf":Ljava/nio/ByteBuffer;
    invoke-static {v6}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;

    move-result-object v7

    .line 497
    .local v7, "config":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;
    iget-byte v8, v7, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->status:B

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    move v4, v9

    :cond_0
    move v1, v4

    .line 500
    .end local v6    # "respBuf":Ljava/nio/ByteBuffer;
    .end local v7    # "config":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;
    :cond_1
    return v1
.end method

.method public getResponseWithSimpleHeader(IILjava/nio/ByteBuffer;I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "reqId"    # I
    .param p3, "payLoad"    # Ljava/nio/ByteBuffer;
    .param p4, "respSize"    # I

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "dataLength":I
    if-eqz p3, :cond_0

    .line 446
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 447
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 450
    :cond_0
    add-int/lit8 v1, v0, 0x8

    new-array v1, v1, [B

    .line 451
    .local v1, "reqData":[B
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    .line 452
    .local v2, "byteOrder":Ljava/nio/ByteOrder;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 453
    .local v3, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 456
    if-lez v0, :cond_1

    .line 457
    invoke-virtual {v3, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 460
    :cond_1
    new-array v4, p4, [B

    .line 462
    .local v4, "respData":[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v5, p1, v1, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    if-ltz v5, :cond_2

    .line 463
    new-instance v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-direct {v5, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>([B)V

    return-object v5

    .line 465
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public getSO68Enabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x30

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 121
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 123
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v2, :cond_0

    .line 124
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toBool(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Z

    move-result v3

    return v3

    .line 127
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getSO73COP0Enabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2720

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 137
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 139
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v2, :cond_0

    .line 140
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toBool(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Z

    move-result v3

    return v3

    .line 143
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getSO73COP1To7Enabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 153
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 155
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v2, :cond_0

    .line 156
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toBool(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Z

    move-result v3

    return v3

    .line 159
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getSecuritySimLockData(I)[B
    .locals 6
    .param p1, "phoneId"    # I

    .line 1379
    const v0, 0x50047

    .line 1380
    .local v0, "reqId":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 1381
    .local v1, "reqData":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1382
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1383
    .local v2, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1384
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1386
    const/16 v3, 0x200

    new-array v3, v3, [B

    .line 1387
    .local v3, "resp":[B
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v4, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v4

    .line 1388
    .local v4, "respLen":I
    if-lez v4, :cond_0

    .line 1389
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 1390
    .local v5, "result":[B
    return-object v5

    .line 1392
    .end local v5    # "result":[B
    :cond_0
    const/4 v5, 0x0

    return-object v5
.end method

.method public getSimLock(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x1f5b

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 314
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 316
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 317
    .local v3, "lock":I
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SimLock value is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    if-ltz v3, :cond_1

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 319
    return v3

    .line 322
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    .end local v3    # "lock":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getSimNonce(I)[B
    .locals 4
    .param p1, "phoneId"    # I

    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x1f60

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 334
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 336
    .local v2, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    return-object v3

    .line 338
    .end local v2    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSlotCycleIndex(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 1207
    const/4 v0, 0x0

    .line 1208
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1209
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    .line 1210
    .local v2, "ret":I
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 1211
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1212
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 1213
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 1216
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_0
    return v2
.end method

.method public getSlotCycleMode(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x24

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1195
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    .line 1196
    .local v2, "ret":Z
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_1

    .line 1197
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1198
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    .line 1199
    iget-object v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    and-int/lit8 v4, v4, 0x20

    shr-int/lit8 v4, v4, 0x5

    .line 1200
    .local v4, "value":I
    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move v2, v5

    .line 1203
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    .end local v4    # "value":I
    :cond_1
    return v2
.end method

.method public getSprintVoiceServiceOption(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;
    .locals 4
    .param p1, "phoneId"    # I

    .line 1316
    const/4 v0, 0x0

    .line 1317
    .local v0, "so":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 1319
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v2, :cond_0

    .line 1320
    iget-object v2, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;

    .line 1321
    .local v2, "nvSo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    new-instance v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;

    invoke-direct {v3}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;-><init>()V

    move-object v0, v3

    .line 1322
    iget-short v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homePageVoiceSo:S

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->toOemSo(S)I

    move-result v3

    iput v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homePageVoice:I

    .line 1323
    iget-short v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homeOrigVoiceSo:S

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->toOemSo(S)I

    move-result v3

    iput v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homeOrigVoice:I

    .line 1324
    iget-short v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->roamOrigVoiceSo:S

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->toOemSo(S)I

    move-result v3

    iput v3, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->roamOrigVoice:I

    .line 1326
    .end local v2    # "nvSo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    :cond_0
    return-object v0
.end method

.method public getSubsidyLockDetail(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;
    .locals 4
    .param p1, "phoneId"    # I

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v1, 0x0

    .line 471
    .local v1, "slDetail":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;
    const/16 v2, 0x20d8

    invoke-direct {p0, p1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 473
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    .line 474
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    move-object v0, v3

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 477
    :cond_0
    if-eqz v0, :cond_1

    .line 478
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->deserialize([B)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;

    move-result-object v1

    .line 481
    :cond_1
    return-object v1
.end method

.method public getTDDTM9Enabled(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .line 410
    const/4 v0, 0x0

    .line 412
    .local v0, "data":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/16 v1, 0x273c

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v1

    .line 413
    .local v1, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_2

    .line 414
    iget-object v3, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 415
    .local v3, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v2, v4

    .line 416
    .local v2, "ret":Z
    :cond_0
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTDDTM9Enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    return v2

    .line 419
    .end local v2    # "ret":Z
    .end local v3    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_2
    return v2
.end method

.method public getVoiceDomainSetting(I)I
    .locals 6
    .param p1, "phoneId"    # I

    .line 1284
    const v0, 0x50040

    .line 1285
    .local v0, "reqId":I
    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 1286
    .local v1, "reqData":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1287
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1288
    .local v2, "reqBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1289
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1291
    iget v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->VOICE_DOMAIN_SETTING_LENGTH_BYTE:I

    new-array v4, v4, [B

    .line 1292
    .local v4, "resp":[B
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v5, p1, v1, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    .line 1293
    .local v5, "ret":I
    if-ltz v5, :cond_0

    .line 1294
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    return v3

    .line 1296
    :cond_0
    const/4 v3, -0x1

    return v3
.end method

.method public radioConfigReset(II)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "resetType"    # I

    .line 529
    const v0, 0x20000b6

    .line 530
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;

    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getFactoryResetType(I)B

    move-result v2

    invoke-direct {v1, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;-><init>(B)V

    .line 531
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)[B

    move-result-object v2

    .line 532
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 533
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public set1xAdvancedEnabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 115
    const/16 v0, 0x271f

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIZ)Z

    move-result v0

    return v0
.end method

.method public set256QAMDLEnabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 372
    const/16 v0, 0x2739

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public set4x4MimoEnabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 355
    const/16 v0, 0x2738

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public set64QAMULEnabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 389
    const/16 v0, 0x273a

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setActiveSingleSimSlot(II)Z
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "slotType"    # I

    .line 1416
    const v0, 0x5004a

    .line 1417
    .local v0, "reqId":I
    const/16 v1, 0x9

    new-array v1, v1, [B

    .line 1420
    .local v1, "data":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1421
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1422
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    int-to-byte v5, p2

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1424
    new-array v3, v4, [B

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 1425
    .local v3, "resp":[B
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v6, p1, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v6

    .line 1426
    .local v6, "ret":I
    if-ltz v6, :cond_0

    aget-byte v7, v3, v5

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_0

    .line 1427
    return v4

    .line 1429
    :cond_0
    return v5
.end method

.method public setAkeyInfo(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "akey"    # Ljava/lang/String;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 918
    const v0, 0x2000013

    .line 919
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvAKeyDataType;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvAKeyDataType;-><init>([B)V

    .line 920
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvAKeyDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 921
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 922
    .local v3, "respData":[B
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetAkeyInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_0
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setBC10Enabled(IZ)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 94
    const v0, 0x20000b1

    .line 95
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;

    invoke-direct {v1, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;-><init>(I)V

    .line 96
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)[B

    move-result-object v2

    .line 97
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 99
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setBandPriorityList(I[I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "priList"    # [I

    .line 831
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 833
    :cond_0
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 834
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->getRdeByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 835
    array-length v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p2, v0

    .line 836
    .local v3, "pri":I
    int-to-short v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 835
    .end local v3    # "pri":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 839
    :cond_1
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>()V

    .line 840
    .local v0, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 841
    const/16 v2, 0x272a

    invoke-direct {p0, p1, v2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v2

    return v2

    .line 831
    .end local v0    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_1
    return v0
.end method

.method public setCABitmapForBand(II[B)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "primaryBandId"    # I
    .param p3, "enabledSecBands"    # [B

    .line 811
    invoke-direct {p0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getNVIndexForCA(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(II[B)Z

    move-result v0

    return v0
.end method

.method public setCDMADataRate(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "rate"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 908
    const v0, 0x2000006

    .line 909
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 910
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 911
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 912
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 914
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setCDMAServiceOption(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceOption"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 859
    const v0, 0x200000c

    .line 860
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 861
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 862
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 863
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 865
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setCdmaHybridMode(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 965
    const v0, 0x200000e

    .line 966
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 967
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 968
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 969
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 971
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setCdmaRxDiversity(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 1084
    const/16 v0, 0x26

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setCdmaSidNidPairs(I[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "pairs"    # [Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 942
    const v0, 0x2000004

    .line 943
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;

    invoke-direct {v1, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;-><init>([Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;)V

    .line 944
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 945
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 947
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setDDTMDefaultPreference(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "setting"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1234
    const v0, 0x20000b8

    .line 1235
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1236
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 1237
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 1238
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 1240
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setDSSEnabled(IB)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # B

    .line 1366
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getDSSEnabled(I)B

    move-result v0

    .line 1367
    .local v0, "prev":B
    if-ne v0, p2, :cond_1

    .line 1368
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "MotoExtTM: QcomNvManager"

    const-string v2, "Skip setDSSEnabled as no change."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1371
    :cond_1
    const/16 v1, 0x272e

    invoke-direct {p0, p1, v1, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIB)Z

    move-result v1

    return v1
.end method

.method public setEhrpdEnabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 440
    const/16 v0, 0x2b

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIS)Z

    move-result v0

    return v0
.end method

.method public setEmergencyNumber(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emergencyAddress"    # I
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .line 1140
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;-><init>()V

    .line 1141
    .local v0, "emergencyNumber":Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;
    invoke-static {p3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->isValidAddress(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEmergencyNumber(): address is not valid! address: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->loge(Ljava/lang/String;)V

    .line 1143
    return v2

    .line 1145
    :cond_0
    iput p3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->address:I

    .line 1146
    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->status:B

    .line 1147
    invoke-virtual {v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->setNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEmergencyNumber(): unable to set number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->loge(Ljava/lang/String;)V

    .line 1149
    return v2

    .line 1152
    :cond_1
    const/4 v1, 0x6

    invoke-direct {p0, p1, v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v1

    return v1
.end method

.method public setEvdoRevisionOption(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "revOption"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 883
    const v0, 0x2000010

    .line 884
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 885
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 886
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 887
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 889
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setFDDTM9Enabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 406
    const/16 v0, 0x273b

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setHdrRxDiversity(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "value"    # I

    .line 1102
    const/16 v0, 0x27

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setLTEBandEnable(IIZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "bandId"    # I
    .param p3, "enabled"    # Z

    .line 215
    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    .line 216
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 217
    .local v1, "bandIds":[I
    aput p2, v1, v0

    .line 218
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 219
    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setLTEBandsEnableDisable(I[I[I)Z

    move-result v0

    return v0

    .line 221
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setLTEBandsEnableDisable(I[I[I)Z

    move-result v0

    return v0
.end method

.method public setLTEBandsEnableDisable(I[I[I)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "enableBands"    # [I
    .param p3, "disableBands"    # [I

    .line 234
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v0

    .line 235
    .local v0, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 236
    return v1

    .line 239
    :cond_0
    if-eqz p2, :cond_2

    .line 240
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 241
    aget v3, p2, v2

    .line 242
    .local v3, "enableBand":I
    if-gez v3, :cond_1

    return v1

    .line 243
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->enableLTEBand(IZ)V

    .line 240
    .end local v3    # "enableBand":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "i":I
    :cond_2
    if-eqz p3, :cond_4

    .line 248
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 249
    aget v3, p3, v2

    .line 250
    .local v3, "disableBand":I
    if-gez v3, :cond_3

    return v1

    .line 251
    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->enableLTEBand(IZ)V

    .line 248
    .end local v3    # "disableBand":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 255
    .end local v2    # "j":I
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setBandClassSupport(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;)Z

    move-result v1

    return v1
.end method

.method public setLteBsrTimer(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "timer"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 749
    const v0, 0x20000bd

    .line 750
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 751
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 752
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 753
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 755
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setMaxBsrTimerStages(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "stages"    # I

    .line 716
    const/16 v0, 0x2726

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setMobilePRev(IILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "PRevValue"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1120
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    const v0, 0x2000008

    .line 1125
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 1126
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;-><init>(ILjava/nio/ByteOrder;)V

    .line 1127
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 1128
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 1130
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4

    .line 1121
    .end local v0    # "reqId":I
    .end local v1    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;
    .end local v2    # "reqData":[B
    .end local v3    # "respData":[B
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setNRBandsEnableDisable(I[I[I[I[I)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enableSABands"    # [I
    .param p3, "disableSABands"    # [I
    .param p4, "enableNSABands"    # [I
    .param p5, "disableNSABands"    # [I

    .line 270
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v0

    .line 271
    .local v0, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 272
    return v1

    .line 275
    :cond_0
    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 276
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_2

    .line 277
    aget v4, p2, v3

    .line 278
    .local v4, "enableBand":I
    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isSABandValid(I)Z

    move-result v5

    if-nez v5, :cond_1

    return v1

    .line 279
    :cond_1
    invoke-virtual {v0, v4, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->enableSABand(IZ)V

    .line 276
    .end local v4    # "enableBand":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v3    # "i":I
    :cond_2
    if-eqz p3, :cond_4

    .line 284
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v4, p3

    if-ge v3, v4, :cond_4

    .line 285
    aget v4, p3, v3

    .line 286
    .local v4, "disableBand":I
    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isSABandValid(I)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    .line 287
    :cond_3
    invoke-virtual {v0, v4, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->enableSABand(IZ)V

    .line 284
    .end local v4    # "disableBand":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 291
    .end local v3    # "j":I
    :cond_4
    if-eqz p4, :cond_6

    .line 292
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, p4

    if-ge v3, v4, :cond_6

    .line 293
    aget v4, p4, v3

    .line 294
    .local v4, "enableBand":I
    invoke-virtual {v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isNSABandValid(I)Z

    move-result v5

    if-nez v5, :cond_5

    return v1

    .line 295
    :cond_5
    invoke-virtual {v0, v4, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->enableNSABand(IZ)V

    .line 292
    .end local v4    # "enableBand":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 299
    .end local v3    # "i":I
    :cond_6
    if-eqz p5, :cond_8

    .line 300
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    array-length v3, p5

    if-ge v2, v3, :cond_8

    .line 301
    aget v3, p5, v2

    .line 302
    .local v3, "disableBand":I
    invoke-virtual {v0, v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->isNSABandValid(I)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    .line 303
    :cond_7
    invoke-virtual {v0, v3, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->enableNSABand(IZ)V

    .line 300
    .end local v3    # "disableBand":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 307
    .end local v2    # "j":I
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setBandClassSupport(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;)Z

    move-result v1

    return v1
.end method

.method public setNamInfo(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "namInfo"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1171
    const v0, 0x2000002

    .line 1172
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaNAMInfo;

    invoke-direct {v1, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaNAMInfo;-><init>(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;)V

    .line 1173
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaNAMInfo;
    invoke-static {v0, v1, p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 1174
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 1176
    .local v3, "respData":[B
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4
.end method

.method public setNextLteScan(II)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "timer"    # I

    .line 667
    const/16 v0, 0x2724

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setProvisionUpdateRequest(IB)Z
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "carrierId"    # B

    .line 504
    const v0, 0x50008

    .line 506
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;-><init>(BB)V

    .line 508
    .local v1, "config":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 510
    .local v3, "data":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 511
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 513
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 514
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-byte v6, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->status:B

    .line 515
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-byte v6, v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->carrierId:B

    .line 516
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 518
    sget-boolean v5, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set setProvisionUpdateRequest:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    const-string v6, "MotoExtTM: QcomNvManager"

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v3, v6}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v5

    if-ltz v5, :cond_1

    .line 521
    return v2

    .line 523
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public setSO68Enabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 131
    const/16 v0, 0x30

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSO73COP0Enabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 147
    const/16 v0, 0x2720

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSO73COP1To7Enabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 163
    const/16 v0, 0x2d

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IIZ)Z

    move-result v0

    return v0
.end method

.method public setSimLock(I[B)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "lock"    # [B

    .line 326
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    const/16 v0, 0x1f5b

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(II[B)Z

    move-result v0

    return v0

    .line 326
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setSprintVoiceServiceOption(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "serviceOption"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;

    .line 1330
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;-><init>()V

    .line 1332
    .local v0, "nvSo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getRdeNvValueByElementId(II)Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;

    move-result-object v2

    .line 1333
    .local v2, "rdeNv":Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-eqz v3, :cond_0

    .line 1334
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;

    .line 1335
    .local v3, "ret":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    iget-byte v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->nam:B

    iput-byte v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->nam:B

    .line 1336
    iget-byte v4, v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->evrcCapabilityEnabled:B

    iput-byte v4, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->evrcCapabilityEnabled:B

    .line 1339
    .end local v3    # "ret":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;
    :cond_0
    iget v3, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homePageVoice:I

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->toNvSo(I)S

    move-result v3

    iput-short v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homePageVoiceSo:S

    .line 1340
    iget v3, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homeOrigVoice:I

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->toNvSo(I)S

    move-result v3

    iput-short v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->homeOrigVoiceSo:S

    .line 1341
    iget v3, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->roamOrigVoice:I

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->toNvSo(I)S

    move-result v3

    iput-short v3, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvSprintCDMAVoiceSOType;->roamOrigVoiceSo:S

    .line 1343
    invoke-direct {p0, p1, v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v1

    return v1
.end method

.method public setTDDTM9Enabled(IZ)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z

    .line 423
    const/16 v0, 0x273c

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(III)Z

    move-result v0

    return v0
.end method

.method public setVoiceDomainSetting(II)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "setting"    # I

    .line 1300
    const v0, 0x50041

    .line 1301
    .local v0, "reqId":I
    iget v1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->VOICE_DOMAIN_SETTING_LENGTH_BYTE:I

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 1304
    .local v1, "data":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1305
    .local v2, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1306
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->VOICE_DOMAIN_SETTING_LENGTH_BYTE:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    int-to-byte v4, p2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1308
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvManager;->mExtService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v1, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1309
    const/4 v3, 0x1

    return v3

    .line 1311
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public verifyMsl(ILjava/lang/String;)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "spc"    # Ljava/lang/String;

    .line 550
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    const v0, 0x200000a

    .line 555
    .local v0, "reqId":I
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;-><init>([B)V

    .line 556
    .local v1, "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;
    invoke-static {v0, v1, p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->getWritingNvReqData(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;Ljava/lang/String;)[B

    move-result-object v2

    .line 557
    .local v2, "reqData":[B
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->allocateWritingNvRespBuffer()[B

    move-result-object v3

    .line 558
    .local v3, "respData":[B
    sget-boolean v4, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verifyMsl :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 558
    const-string v5, "MotoExtTM: QcomNvManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getWritingNvRespResult(II[B[B)Z

    move-result v4

    return v4

    .line 551
    .end local v0    # "reqId":I
    .end local v1    # "nvData":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;
    .end local v2    # "reqData":[B
    .end local v3    # "respData":[B
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public writeCaBwCombo(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "comboList"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    .line 607
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomNvManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeCaBwCombo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtTM: QcomNvManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_0
    if-nez p2, :cond_1

    .line 611
    const/4 v0, 0x0

    return v0

    .line 613
    :cond_1
    const/16 v0, 0x5209

    invoke-direct {p0, p1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setRdeNvValue(IILcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;)Z

    move-result v0

    return v0
.end method
