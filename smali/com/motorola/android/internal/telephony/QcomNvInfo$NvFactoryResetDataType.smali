.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;
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
    name = "NvFactoryResetDataType"
.end annotation


# static fields
.field public static final RESET_DEFAULT:B = -0x1t

.field public static final RESET_GUTI:B = 0x3t


# instance fields
.field public resetType:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .param p1, "type"    # B

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput-byte p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;->resetType:B

    .line 942
    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 945
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvFactoryResetDataType;->resetType:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 946
    return-void
.end method

.method public size()I
    .locals 1

    .line 949
    const/4 v0, 0x1

    return v0
.end method
