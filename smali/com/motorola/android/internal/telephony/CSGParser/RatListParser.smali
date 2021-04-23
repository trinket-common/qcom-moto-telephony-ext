.class public Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;
.super Lcom/motorola/android/internal/telephony/CSGParser/ListParser;
.source "RatListParser.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/motorola/android/internal/telephony/CSGParser/ListParser;",
        "Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser<",
        "Ljava/util/ArrayList<",
        "Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final CSG_RAT_TAG:B = 0x11t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/CSGParser/ListParser;-><init>()V

    return-void
.end method

.method private parseRatList(Ljava/nio/ByteBuffer;B)Ljava/util/ArrayList;
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entries"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "B)",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;",
            ">;"
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    .line 41
    .local v0, "i":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;>;"
    :goto_0
    if-gt v0, p2, :cond_0

    .line 43
    new-instance v2, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;-><init>(SSB)V

    .line 44
    .local v2, "info":Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;
    sub-int v3, p2, v0

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    nop

    .end local v2    # "info":Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected getTagValidator()Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;
    .locals 2

    .line 27
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;-><init>(B)V

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;->parse(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/ListParser;->getListHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;

    move-result-object v0

    .line 34
    .local v0, "listHeader":Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;
    iget-byte v1, v0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mNumEntries:B

    invoke-direct {p0, p1, v1}, Lcom/motorola/android/internal/telephony/CSGParser/RatListParser;->parseRatList(Ljava/nio/ByteBuffer;B)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
