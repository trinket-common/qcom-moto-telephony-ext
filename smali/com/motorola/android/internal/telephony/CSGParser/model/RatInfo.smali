.class public Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;
.super Ljava/lang/Object;
.source "RatInfo.java"


# instance fields
.field private mMcc:S

.field private mMnc:S

.field private mRat:B


# direct methods
.method public constructor <init>(SSB)V
    .locals 0
    .param p1, "mcc"    # S
    .param p2, "mnc"    # S
    .param p3, "rat"    # B

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-short p1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mMcc:S

    .line 22
    iput-short p2, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mMnc:S

    .line 23
    iput-byte p3, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mRat:B

    .line 24
    return-void
.end method


# virtual methods
.method public getRat()B
    .locals 1

    .line 27
    iget-byte v0, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mRat:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mMcc:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "mnc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mMnc:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, "rat = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/motorola/android/internal/telephony/CSGParser/model/RatInfo;->mRat:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
