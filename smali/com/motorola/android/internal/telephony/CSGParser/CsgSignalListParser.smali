.class public Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;
.super Lcom/motorola/android/internal/telephony/CSGParser/ListParser;
.source "CsgSignalListParser.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/android/internal/telephony/CSGParser/ListParser;",
        "Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser<",
        "Ljava/util/List<",
        "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CSG_SIG_INFO_TAG:B = 0x15t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/CSGParser/ListParser;-><init>()V

    return-void
.end method

.method private parseCsgList(Ljava/nio/ByteBuffer;B)Ljava/util/List;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "numCsgEntries"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B)",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v0, "csgSignalInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 55
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSignalInfo;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;

    move-result-object v2

    .line 56
    .local v2, "csgSignalInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;
    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "csgSignalInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected getTagValidator()Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;
    .locals 2

    .line 29
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;-><init>(B)V

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;->parse(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/ListParser;->getListHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;

    move-result-object v0

    .line 43
    .local v0, "listHeader":Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;
    iget-byte v1, v0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mNumEntries:B

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;->parseCsgList(Ljava/nio/ByteBuffer;B)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
