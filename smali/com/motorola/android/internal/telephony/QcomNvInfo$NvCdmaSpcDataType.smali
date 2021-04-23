.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;
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
    name = "NvCdmaSpcDataType"
.end annotation


# instance fields
.field public spc:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "spc"    # [B

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;->spc:[B

    .line 918
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 921
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvCdmaSpcDataType;->spc:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 922
    return-void
.end method

.method public size()I
    .locals 1

    .line 925
    const/4 v0, 0x6

    return v0
.end method
