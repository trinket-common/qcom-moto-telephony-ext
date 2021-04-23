.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTERRCStateDataType;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvLTERRCStateDataType"
.end annotation


# static fields
.field private static final LTE_RRC_STATE_RIL_EXT_CLOSING:I = 0x5

.field private static final LTE_RRC_STATE_RIL_EXT_CONNECTED:I = 0x4

.field private static final LTE_RRC_STATE_RIL_EXT_CONNECTING:I = 0x3

.field private static final LTE_RRC_STATE_RIL_EXT_IDLE_CAMPED_ANYCELL:I = 0x1

.field private static final LTE_RRC_STATE_RIL_EXT_IDLE_CAMPED_NORMAL:I = 0x2

.field private static final LTE_RRC_STATE_RIL_EXT_NULL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize([B)I
    .locals 5
    .param p0, "response"    # [B

    .line 978
    const/16 v0, 0xff

    if-eqz p0, :cond_5

    array-length v1, p0

    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTERRCStateDataType;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 982
    :cond_0
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTERRCStateDataType;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 994
    return v0

    .line 991
    :cond_1
    return v4

    .line 989
    :cond_2
    return v3

    .line 987
    :cond_3
    return v2

    .line 985
    :cond_4
    const/4 v0, 0x0

    return v0

    .line 979
    :cond_5
    :goto_0
    return v0
.end method

.method public static size()I
    .locals 1

    .line 999
    const/16 v0, 0x8

    return v0
.end method
