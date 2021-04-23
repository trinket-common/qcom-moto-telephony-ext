.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;
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
    name = "NvProvisionUpdateDataType"
.end annotation


# static fields
.field public static final SUCCESS:B = 0x1t

.field public static final UPDATE_NEEDED:B = 0x1t


# instance fields
.field public carrierId:B

.field public status:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->status:B

    .line 883
    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->carrierId:B

    .line 884
    return-void
.end method

.method public constructor <init>(BB)V
    .locals 0
    .param p1, "status"    # B
    .param p2, "carrierId"    # B

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-byte p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->status:B

    .line 888
    iput-byte p2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->carrierId:B

    .line 889
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 897
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;-><init>()V

    .line 898
    .local v0, "config":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->status:B

    .line 899
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->carrierId:B

    .line 900
    return-object v0
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 892
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->status:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 893
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvProvisionUpdateDataType;->carrierId:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 894
    return-void
.end method

.method public size()I
    .locals 1

    .line 904
    const/4 v0, 0x2

    return v0
.end method
