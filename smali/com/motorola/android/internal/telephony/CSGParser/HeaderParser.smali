.class public Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/motorola/android/internal/telephony/CSGParser/IBufferParser<",
        "Lcom/motorola/android/internal/telephony/CSGParser/model/Header;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/Header;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 30
    new-instance v0, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;-><init>(BS)V

    return-object v0
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/CSGParser/HeaderParser;->parse(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    move-result-object p1

    return-object p1
.end method
