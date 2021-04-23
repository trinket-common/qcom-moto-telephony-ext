.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgInfo;
.super Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcomCsgInfo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2099
    invoke-direct {p0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;-><init>()V

    return-void
.end method

.method public static deserialize([B)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    .locals 4
    .param p0, "response"    # [B

    .line 2101
    if-nez p0, :cond_0

    .line 2102
    const/4 v0, 0x0

    return-object v0

    .line 2105
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2106
    .local v0, "buf":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;

    invoke-direct {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;-><init>()V

    .line 2107
    .local v1, "csgInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mRat:I

    .line 2108
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mCsgId:I

    .line 2109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 2110
    .local v2, "nameLength":I
    invoke-static {v0, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$400(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;->mCsgName:Ljava/lang/String;

    .line 2111
    return-object v1
.end method
