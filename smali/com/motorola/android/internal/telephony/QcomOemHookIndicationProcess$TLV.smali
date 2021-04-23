.class Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;
.super Ljava/lang/Object;
.source "QcomOemHookIndicationProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TLV"
.end annotation


# instance fields
.field private len:S

.field private tag:B

.field private value:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$1;

    .line 319
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;

    .line 319
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->readFromByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;)[B
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;

    .line 319
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->value:[B

    return-object v0
.end method

.method private readFromByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bBuff"    # Ljava/nio/ByteBuffer;

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->tag:B

    .line 325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->len:S

    .line 326
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess$TLV;->value:[B

    .line 327
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 328
    return-void
.end method
