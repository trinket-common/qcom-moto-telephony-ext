.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;
.super Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSearchResultInfo;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcomCsgSearchResultInfo"
.end annotation


# direct methods
.method constructor <init>(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "selectionInfo"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;",
            ">;)V"
        }
    .end annotation

    .line 2028
    .local p3, "selectionInfos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;>;"
    .local p4, "signalInfos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSearchResultInfo;-><init>(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Ljava/util/List;Ljava/util/List;)V

    .line 2029
    return-void
.end method

.method public static deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;
    .locals 10
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 2040
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;-><init>()V

    .line 2041
    .local v0, "ratListParser":Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;
    invoke-virtual {v0, p0}, Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;->parse(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2043
    .local v1, "ratInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;>;"
    new-instance v2, Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;

    invoke-direct {v2}, Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;-><init>()V

    .line 2044
    .local v2, "statusParser":Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;
    invoke-virtual {v2, p0}, Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2046
    .local v3, "status":I
    new-instance v4, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;

    invoke-direct {v4, v1}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;-><init>(Ljava/util/ArrayList;)V

    .line 2047
    .local v4, "csgListParser":Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;
    invoke-virtual {v4, p0}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;

    move-result-object v5

    .line 2049
    .local v5, "selectionInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    invoke-virtual {v4}, Lcom/motorola/android/internal/telephony/CSGParser/CsgListParser;->getCsgSelectionInfoList()Ljava/util/List;

    move-result-object v6

    .line 2051
    .local v6, "selectionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;>;"
    new-instance v7, Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;

    invoke-direct {v7}, Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;-><init>()V

    .line 2052
    .local v7, "csgSignalListParser":Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;
    invoke-virtual {v7, p0}, Lcom/motorola/android/internal/telephony/CSGParser/CsgSignalListParser;->parse(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v8

    .line 2054
    .local v8, "signalInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSignalInfo;>;"
    new-instance v9, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;

    invoke-direct {v9, v3, v5, v6, v8}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;-><init>(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Ljava/util/List;Ljava/util/List;)V

    return-object v9
.end method
