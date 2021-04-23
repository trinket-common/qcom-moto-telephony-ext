.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BWClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;",
        ">;"
    }
.end annotation


# instance fields
.field public mBWClass:B

.field public mBand:B


# direct methods
.method public constructor <init>(BB)V
    .locals 0
    .param p1, "band"    # B
    .param p2, "bwClass"    # B

    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput-byte p1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    .line 1183
    iput-byte p2, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    .line 1184
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    .locals 5
    .param p0, "inputStr"    # Ljava/lang/String;

    .line 1187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 1190
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1191
    .local v0, "band":B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1192
    .local v2, "bwClassChar":C
    new-instance v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->getBWClass(C)B

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;-><init>(BB)V

    .line 1193
    .local v3, "tmpBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBand()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBWClass()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1194
    return-object v3

    .line 1196
    :cond_1
    return-object v1

    .line 1188
    .end local v0    # "band":B
    .end local v2    # "bwClassChar":C
    .end local v3    # "tmpBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private static getBWClass(C)B
    .locals 1
    .param p0, "charVal"    # C

    .line 1239
    packed-switch p0, :pswitch_data_0

    .line 1253
    const/4 v0, 0x0

    return v0

    .line 1251
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 1249
    :pswitch_1
    const/4 v0, 0x5

    return v0

    .line 1247
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 1245
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 1243
    :pswitch_4
    const/4 v0, 0x2

    return v0

    .line 1241
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBWClassString()Ljava/lang/String;
    .locals 1

    .line 1220
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    packed-switch v0, :pswitch_data_0

    .line 1234
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1232
    :pswitch_0
    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1230
    :pswitch_1
    const/16 v0, 0x45

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1228
    :pswitch_2
    const/16 v0, 0x44

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1226
    :pswitch_3
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1224
    :pswitch_4
    const/16 v0, 0x42

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1222
    :pswitch_5
    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBandString()Ljava/lang/String;
    .locals 1

    .line 1216
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method canHandle(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;)Z
    .locals 4
    .param p1, "anotherBWClass"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1258
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1259
    return v0

    .line 1261
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBand()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBWClass()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBand()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1262
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBWClass()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1265
    :cond_1
    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    iget-byte v3, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    if-ne v1, v3, :cond_2

    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    iget-byte v3, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    if-lt v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    .line 1263
    :cond_3
    :goto_1
    return v2
.end method

.method public compareTo(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;)I
    .locals 2
    .param p1, "anotherBWClass"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1281
    if-nez p1, :cond_0

    .line 1282
    const/4 v0, 0x1

    return v0

    .line 1284
    :cond_0
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    iget-byte v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    if-ne v0, v1, :cond_1

    .line 1285
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    iget-byte v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    sub-int/2addr v0, v1

    return v0

    .line 1287
    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1177
    check-cast p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->compareTo(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1271
    instance-of v0, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1272
    return v1

    .line 1274
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;

    .line 1275
    .local v0, "inputBWClass":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;
    iget-byte v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    iget-byte v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    if-ne v2, v3, :cond_1

    iget-byte v2, v0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    iget-byte v3, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getDisplayString()Ljava/lang/String;
    .locals 2

    .line 1200
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBand()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->isValidBWClass()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->getBandString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->getBWClassString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1201
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isValidBWClass()Z
    .locals 3

    .line 1212
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBWClass:B

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isValidBand()Z
    .locals 2

    .line 1208
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo$BWClass;->mBand:B

    const/16 v1, -0x77

    if-eq v0, v1, :cond_0

    const/16 v1, -0x76

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
