.class public Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;
.super Ljava/lang/Object;
.source "StatusParser.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CSG_RESULT_TAG:B = 0x13t


# instance fields
.field private mTagValidator:Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;-><init>(B)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;->mTagValidator:Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;

    return-void
.end method


# virtual methods
.method public parse(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 33
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;

    invoke-direct {v0}, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;->parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    move-result-object v0

    .line 35
    .local v0, "header":Lcom/motorola/android/internal/telephony/CSGParser/model/Header;
    const/4 v1, 0x0

    .line 36
    .local v1, "status":I
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;->mTagValidator:Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;

    invoke-interface {v2, v0}, Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;->isParsableTag(Lcom/motorola/android/internal/telephony/CSGParser/model/Header;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 41
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/StatusParser;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
