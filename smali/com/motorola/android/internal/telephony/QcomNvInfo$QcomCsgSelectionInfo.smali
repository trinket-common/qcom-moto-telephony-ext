.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSelectionInfo;
.super Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcomCsgSelectionInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2058
    invoke-direct {p0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 2060
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;-><init>()V

    .line 2061
    .local v0, "info":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mMcc:I

    .line 2062
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mMnc:I

    .line 2063
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mPcsDigit:B

    .line 2064
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mCsgListCat:I

    .line 2065
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mCsgId:I

    .line 2066
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mNameLen:B

    .line 2067
    iget-byte v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mNameLen:B

    invoke-static {p0, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$400(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mName:Ljava/lang/String;

    .line 2068
    return-object v0
.end method
