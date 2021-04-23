.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;
.super Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;
.source "QcomNvInfo.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcomEmergencyNumber"
.end annotation


# static fields
.field public static final NV_EMERGENCY_SD_NUM:I = 0x3

.field public static final NV_MAX_DIAL_DIGITS:I = 0x20

.field public static final NV_MAX_LTRS:I = 0xc


# instance fields
.field private digits:[B

.field private letters:[B

.field private num_digits:B

.field public status:B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 427
    invoke-direct {p0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->address:I

    .line 429
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->status:B

    .line 430
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    .line 431
    const-string v1, ""

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->number:Ljava/lang/String;

    .line 432
    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    .line 433
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 434
    aput-byte v0, v2, v1

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->letters:[B

    .line 438
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->letters:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 439
    aput-byte v0, v2, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 441
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;
    .locals 4
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 494
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;-><init>()V

    .line 496
    .local v0, "emNumber":Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->address:I

    .line 497
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->status:B

    .line 498
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    .line 499
    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 500
    iput-byte v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    .line 502
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 503
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->letters:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 505
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->number:Ljava/lang/String;

    .line 509
    return-object v0
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 3

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    if-ge v1, v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 486
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->address:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->status:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 488
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 489
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 490
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->letters:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 491
    return-void
.end method

.method public setNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .line 456
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-le v0, v2, :cond_0

    .line 457
    return v1

    .line 460
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->number:Ljava/lang/String;

    .line 461
    iput-byte v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 464
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_1

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    aput-byte v1, v2, v0

    .line 463
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_3
    array-length v0, v1

    :goto_2
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->digits:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->letters:[B

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 444
    const-string v0, "\n"

    .line 445
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->address:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->status:B

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num_digits="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->num_digits:B

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "digits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomEmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
