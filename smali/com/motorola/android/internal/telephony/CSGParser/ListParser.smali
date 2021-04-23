.class public abstract Lcom/motorola/android/internal/telephony/CSGParser/ListParser;
.super Ljava/lang/Object;
.source "ListParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getListHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 27
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;->parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    move-result-object v0

    .line 29
    .local v0, "header":Lcom/motorola/android/internal/telephony/CSGParser/model/Header;
    const/4 v1, 0x0

    .line 30
    .local v1, "nEntries":B
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/CSGParser/ListParser;->getTagValidator()Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;->isParsableTag(Lcom/motorola/android/internal/telephony/CSGParser/model/Header;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 34
    :cond_0
    new-instance v2, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;

    invoke-direct {v2, v0, v1}, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;-><init>(Lcom/motorola/android/internal/telephony/CSGParser/model/Header;B)V

    .line 36
    .local v2, "listHeader":Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;
    return-object v2
.end method

.method protected abstract getTagValidator()Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;
.end method
