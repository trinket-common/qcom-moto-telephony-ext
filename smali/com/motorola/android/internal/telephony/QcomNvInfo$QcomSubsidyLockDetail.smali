.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;
.super Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcomSubsidyLockDetail"
.end annotation


# static fields
.field private static final CARRIER_ID_OFFSET:I = 0x4

.field private static final CATEGORY_DATA_LENGTH:I = 0x10

.field private static final CATEGORY_ENABLED_OFFSET:I = 0x1

.field private static final CATEGORY_ID_OFFSET:I = 0x0

.field private static final CATEGORY_START_OFFSET_VERSION00:I = 0x4

.field private static final CATEGORY_START_OFFSET_VERSION01:I = 0x8

.field private static final CATEGORY_TO_SUBTYPE_MAPPING:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private static final CURRENT_NUMMBER_OF_RETRIES_OFFSET:I = 0x8

.field private static final DATA_VERSION_OFFSET:I = 0x0

.field private static final IS_BLACKLIST_OFFSET:I = 0x2

.field private static final IS_CK_PRESENT_OFFSET:I = 0xd

.field private static final IS_OK_REACTIVATE_OFFSET:I = 0xc

.field private static final LOCK_FUSE_OFFSET:I = 0x1

.field private static final LOCK_LEVEL_OFFSET:I = 0x5

.field private static final LOCK_POLICY_OFFSET:I = 0x2

.field private static final MAX_NUMMBER_OF_RETRIES_OFFSET:I = 0x4

.field private static final NONCE_NV_OFFSET:I = 0x8

.field private static final NUMBER_OF_SIMLOCK_CATEGORIES:I = 0x10

.field private static final SIGNATURE_NV_OFFSET:I = 0x9

.field private static final SIMLOCK_CATEGORY_3GPP2_CP:B = 0x9t

.field private static final SIMLOCK_CATEGORY_3GPP2_HRPD:B = 0x7t

.field private static final SIMLOCK_CATEGORY_3GPP2_NW_TYPE1:B = 0x5t

.field private static final SIMLOCK_CATEGORY_3GPP2_NW_TYPE2:B = 0x6t

.field private static final SIMLOCK_CATEGORY_3GPP2_RUIM:B = 0xat

.field private static final SIMLOCK_CATEGORY_3GPP2_SP:B = 0x8t

.field private static final SIMLOCK_CATEGORY_3GPP_CP:B = 0x3t

.field private static final SIMLOCK_CATEGORY_3GPP_CP_EXT:B = 0xct

.field private static final SIMLOCK_CATEGORY_3GPP_ICCID:B = 0xft

.field private static final SIMLOCK_CATEGORY_3GPP_NS:B = 0x1t

.field private static final SIMLOCK_CATEGORY_3GPP_NW:B = 0x0t

.field private static final SIMLOCK_CATEGORY_3GPP_SIM:B = 0x4t

.field private static final SIMLOCK_CATEGORY_3GPP_SP:B = 0x2t

.field private static final SIMLOCK_CATEGORY_3GPP_SPN:B = 0xdt

.field private static final SIMLOCK_CATEGORY_3GPP_SP_EHPLMN:B = 0xet

.field private static final SIMLOCK_CATEGORY_3GPP_SP_EXT:B = 0xbt

.field private static final SPRIINT_DATA_LENGTH:I = 0xa

.field private static final SUB_POLICY_OFFSET:I = 0x3

.field private static final UNLOCK_TYPE_OFFSET:I = 0x6


# instance fields
.field private mCategoryStartOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 289
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->CATEGORY_TO_SUBTYPE_MAPPING:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;-><init>()V

    return-void
.end method

.method public static deserialize([B)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;
    .locals 10
    .param p0, "data"    # [B

    .line 311
    const-string v0, "size:"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MotoExtTM: QcomNvInfo"

    if-eqz p0, :cond_7

    array-length v4, p0

    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    goto/16 :goto_2

    .line 317
    :cond_0
    new-instance v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;

    invoke-direct {v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;-><init>()V

    .line 318
    .local v4, "slDetail":Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;
    aget-byte v6, p0, v2

    iput-byte v6, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->version:B

    .line 319
    const/4 v6, 0x1

    aget-byte v7, p0, v6

    iput-byte v7, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->lockFuse:B

    .line 320
    const/4 v7, 0x2

    aget-byte v8, p0, v7

    iput-byte v8, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->lockPolicy:B

    .line 321
    const/4 v8, 0x3

    aget-byte v8, p0, v8

    iput-byte v8, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->subPolicy:B

    .line 323
    iget-byte v8, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->version:B

    if-nez v8, :cond_1

    .line 324
    iput v5, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->mCategoryStartOffset:I

    .line 325
    invoke-direct {v4, p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->getSubtypeInfoList([B)Ljava/util/ArrayList;

    goto :goto_1

    .line 326
    :cond_1
    iget-byte v8, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->version:B

    if-ne v8, v6, :cond_6

    .line 327
    array-length v8, p0

    const/16 v9, 0x8

    if-ge v8, v9, :cond_3

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid subsidy lock data version 01 returned from modem! data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    array-length v2, p0

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v1

    .line 332
    :cond_3
    iput v9, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->mCategoryStartOffset:I

    .line 333
    aget-byte v0, p0, v5

    iput-byte v0, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->carrierId:B

    .line 335
    iget-byte v0, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->carrierId:B

    if-ne v0, v5, :cond_4

    .line 336
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    iput-byte v0, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->lockLevel:B

    .line 337
    aget-byte v0, p0, v9

    iput-byte v0, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->nonceNV:B

    .line 338
    const/16 v0, 0x9

    aget-byte v0, p0, v0

    iput-byte v0, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->signatureNV:B

    .line 340
    iget-byte v0, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->lockLevel:B

    if-eq v0, v7, :cond_5

    .line 341
    iput-boolean v6, v4, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->locked:Z

    goto :goto_1

    .line 344
    :cond_4
    invoke-direct {v4, p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->getSubtypeInfoList([B)Ljava/util/ArrayList;

    .line 351
    :cond_5
    :goto_1
    return-object v4

    .line 347
    :cond_6
    const-string v0, "The version number is invalid!"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v1

    .line 312
    .end local v4    # "slDetail":Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;
    :cond_7
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid subsidy lock data returned from modem! data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    array-length v2, p0

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-object v1
.end method

.method private getCategoryNumber(I)I
    .locals 2
    .param p1, "length"    # I

    .line 386
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->mCategoryStartOffset:I

    sub-int v0, p1, v0

    const/16 v1, 0x10

    div-int/2addr v0, v1

    .line 387
    .local v0, "result":I
    if-le v0, v1, :cond_0

    .line 388
    const/16 v0, 0x10

    .line 391
    :cond_0
    return v0
.end method

.method private static getIntFromData([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 404
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private getSubtypeInfoList([B)Ljava/util/ArrayList;
    .locals 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;",
            ">;"
        }
    .end annotation

    .line 355
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->getCategoryNumber(I)I

    move-result v0

    .line 358
    .local v0, "categoryNumber":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 359
    mul-int/lit8 v2, v1, 0x10

    iget v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->mCategoryStartOffset:I

    add-int/2addr v2, v3

    .line 361
    .local v2, "caOffset":I
    new-instance v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;

    invoke-direct {v3}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;-><init>()V

    .line 363
    .local v3, "subTypeInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;
    aget-byte v4, p1, v2

    iput v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->categoryId:I

    .line 364
    iget v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->categoryId:I

    sget-object v5, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->CATEGORY_TO_SUBTYPE_MAPPING:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    .line 365
    iget v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->categoryId:I

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->subType:I

    .line 367
    :cond_0
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->isLocked:Z

    .line 368
    add-int/lit8 v4, v2, 0x4

    invoke-static {p1, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->getIntFromData([BI)I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->maxTryNum:I

    .line 369
    add-int/lit8 v4, v2, 0x8

    invoke-static {p1, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->getIntFromData([BI)I

    move-result v4

    iput v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->curentTryTimes:I

    .line 370
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    if-ne v4, v6, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    iput-boolean v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->isBlackListed:Z

    .line 371
    add-int/lit8 v4, v2, 0xc

    aget-byte v4, p1, v4

    if-ne v4, v6, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v5

    :goto_3
    iput-boolean v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->isokToReactivate:Z

    .line 372
    add-int/lit8 v4, v2, 0xd

    aget-byte v4, p1, v4

    if-ne v4, v6, :cond_4

    move v5, v6

    :cond_4
    iput-boolean v5, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->isckPresent:Z

    .line 374
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->subtypeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subTypeInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MotoExtTM: QcomNvInfo"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-boolean v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;->isLocked:Z

    if-eqz v4, :cond_5

    .line 378
    iput-boolean v6, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->locked:Z

    .line 358
    .end local v3    # "subTypeInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubtypeInfo;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 382
    .end local v1    # "i":I
    .end local v2    # "caOffset":I
    :cond_6
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomSubsidyLockDetail;->subtypeInfoList:Ljava/util/ArrayList;

    return-object v1
.end method
