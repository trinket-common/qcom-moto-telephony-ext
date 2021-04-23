.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
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
    name = "NvGenericDataType"
.end annotation


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 134
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2
    .param p1, "b"    # B

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byte to byteArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtTM: QcomNvInfo"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 144
    return-void
.end method

.method public constructor <init>(ILjava/nio/ByteOrder;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integer to byteArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotoExtTM: QcomNvInfo"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String to byteArray = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoExtTM: QcomNvInfo"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 177
    .local v0, "tempData":[B
    const/16 v1, 0x7f

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3, v1, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 180
    return-void
.end method

.method public constructor <init>(SLjava/nio/ByteOrder;)V
    .locals 3
    .param p1, "i"    # S
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 168
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 169
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "short to byteArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotoExtTM: QcomNvInfo"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 172
    return-void
.end method

.method public constructor <init>(ZLjava/nio/ByteOrder;)V
    .locals 3
    .param p1, "b"    # Z
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 149
    if-eqz p1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 154
    :goto_0
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean to byteArray = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotoExtTM: QcomNvInfo"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 156
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "value"    # [B

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvInfo;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotoExtTM: QcomNvInfo"

    const-string v1, "byteArray to byteArray"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    .line 139
    return-void
.end method

.method public static toBool(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Z
    .locals 2
    .param p0, "nv_data"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 215
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    return v1
.end method

.method public static toInteger(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)I
    .locals 4
    .param p0, "nv_data"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "result":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 193
    const/4 v1, -0x1

    return v1

    .line 196
    :cond_0
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 197
    shl-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 196
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 199
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static toLiteralString(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Ljava/lang/String;
    .locals 3
    .param p0, "nv_data"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 224
    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    .line 225
    goto :goto_1

    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 229
    .local v1, "str":Ljava/lang/String;
    return-object v1
.end method

.method public static toShort(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)S
    .locals 4
    .param p0, "nv_data"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "result":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 205
    const/4 v1, -0x1

    return v1

    .line 208
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 209
    shl-int/lit8 v2, v0, 0x8

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    .line 208
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_1
    int-to-short v1, v0

    return v1
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 183
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    return-void
.end method

.method public size()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->data:[B

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
