.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;
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
    name = "NvBandClassDataType"
.end annotation


# instance fields
.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "sta"    # I

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;->status:I

    .line 530
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 541
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;-><init>()V

    .line 542
    .local v0, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;->status:I

    .line 543
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 537
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandClassDataType;->status:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 538
    return-void
.end method

.method public size()I
    .locals 1

    .line 533
    const/4 v0, 0x4

    return v0
.end method
