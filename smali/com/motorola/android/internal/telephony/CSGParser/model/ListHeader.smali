.class public Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;
.super Ljava/lang/Object;
.source "ListHeader.java"


# instance fields
.field public mHeader:Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

.field public mNumEntries:B


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/CSGParser/model/Header;B)V
    .locals 0
    .param p1, "h"    # Lcom/motorola/android/internal/telephony/CSGParser/model/Header;
    .param p2, "nEntries"    # B

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mHeader:Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    .line 24
    iput-byte p2, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mNumEntries:B

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mHeader:Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "num entries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/ListHeader;->mNumEntries:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
