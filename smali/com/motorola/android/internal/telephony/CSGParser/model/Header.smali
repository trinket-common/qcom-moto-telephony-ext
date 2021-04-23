.class public Lcom/motorola/android/internal/telephony/CSGParser/model/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field public mLen:S

.field public mType:B


# direct methods
.method public constructor <init>(BS)V
    .locals 0
    .param p1, "type"    # B
    .param p2, "len"    # S

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-byte p1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->mType:B

    .line 21
    iput-short p2, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->mLen:S

    .line 22
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "tag type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, "tag len = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->mLen:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
