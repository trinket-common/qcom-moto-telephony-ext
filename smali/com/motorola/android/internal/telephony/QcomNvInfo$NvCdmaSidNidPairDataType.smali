.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;
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
    name = "NvCdmaSidNidPairDataType"
.end annotation


# static fields
.field private static final OEM_RIL_CDMA_NUMBER_NID_SID_PAIRS:I = 0x14


# instance fields
.field private mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;


# direct methods
.method constructor <init>([Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;)V
    .locals 0
    .param p1, "pairs"    # [Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    .line 1988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1989
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    .line 1990
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 2003
    const-string v0, "deserialize CdmaSidNidPairs"

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 2004
    const/16 v0, 0x14

    new-array v1, v0, [Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    .line 2005
    .local v1, "pairs":[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2006
    new-instance v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;-><init>(II)V

    aput-object v3, v1, v2

    .line 2007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    pairs["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 2005
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2009
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 1993
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    if-nez v0, :cond_0

    return-void

    .line 1994
    :cond_0
    const-string v0, "serialize CdmaSidNidPairs"

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 1995
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1996
    aget-object v1, v1, v0

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;->sid:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1997
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;->nid:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1998
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    pairs["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$300(Ljava/lang/String;)V

    .line 1995
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2000
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public size()I
    .locals 2

    .line 2013
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSidNidPairDataType;->mPairs:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    array-length v0, v0

    invoke-static {}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
