.class public Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;
.super Lcom/motorola/android/internal/telephony/CSGParser/ListParser;
.source "CsgListParser.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/android/internal/telephony/CSGParser/ListParser;",
        "Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser<",
        "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CSG_AWARE_UICC:I = 0x1b

.field private static final CSG_LIST_INFO_TAG:B = 0x14t

.field private static final OPERATOR_LIST_CAT:I = 0x2

.field private static final UMTS_RAT_TYPE:B = 0x5t


# instance fields
.field private mRatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "ratList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;>;"
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/CSGParser/ListParser;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mRatList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mSelectionInfos:Ljava/util/List;

    .line 37
    return-void
.end method

.method private getRat(I)B
    .locals 2
    .param p1, "ratIndex"    # I

    .line 119
    const/4 v0, 0x5

    .line 121
    .local v0, "rat":B
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mRatList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mRatList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->getRat()B

    move-result v0

    .line 125
    :cond_0
    return v0
.end method

.method private isCsgAwareUicc(I)Z
    .locals 4
    .param p1, "csgListCat"    # I

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "iccOnSIM":Ljava/lang/String;
    const/4 v1, 0x0

    .line 101
    .local v1, "isCsgAware":Z
    if-eqz v0, :cond_1

    .line 102
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 104
    .local v2, "iccID":I
    const/16 v3, 0x1b

    if-lt v2, v3, :cond_1

    .line 105
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 109
    .end local v2    # "iccID":I
    :cond_1
    return v1
.end method

.method private parseCsgList(Ljava/nio/ByteBuffer;B)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "numCsgEntries"    # B

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "csgSelectionInfoChoice":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mSelectionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 62
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSelectionInfo;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    move-result-object v2

    .line 74
    .local v2, "currInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->getRat(I)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->setRat(B)V

    .line 75
    iget v3, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mCsgId:I

    if-lez v3, :cond_0

    iget v3, v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;->mCsgListCat:I

    .line 76
    invoke-direct {p0, v3}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->isCsgAwareUicc(I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 78
    move-object v0, v2

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mSelectionInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v2    # "currInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getCsgSelectionInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->mSelectionInfos:Ljava/util/List;

    return-object v0
.end method

.method protected getTagValidator()Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;
    .locals 2

    .line 41
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;-><init>(B)V

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->getListHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;

    move-result-object v0

    .line 48
    .local v0, "listHeader":Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;
    iget-byte v1, v0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mNumEntries:B

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->parseCsgList(Ljava/nio/ByteBuffer;B)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    move-result-object p1

    return-object p1
.end method
