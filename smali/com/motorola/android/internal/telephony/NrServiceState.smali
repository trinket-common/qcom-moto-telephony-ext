.class public Lcom/motorola/android/internal/telephony/NrServiceState;
.super Ljava/lang/Object;
.source "NrServiceState.java"


# static fields
.field static final BEARER_ALLOCATED:I = 0x1

.field static final BEARER_MMW_ALLOCATED:I = 0x2

.field static final DCNR_UNRESTRICTED:I = 0x1

.field static final ENABLED:I = 0x1

.field static final ENDC_AVAILABLE:I = 0x1

.field static final INVALID:I = -0x1


# instance fields
.field private mBearer:I

.field private mDataIconType:I

.field private mDcnr:I

.field private mEnabled:I

.field private mEndc:I

.field private mEndcEnabled:I

.field private mNrConfigType:I

.field private mPlmn:I

.field private mUpperLayerInd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEnabled:I

    .line 38
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndc:I

    .line 39
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDcnr:I

    .line 40
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    .line 41
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mPlmn:I

    .line 42
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mUpperLayerInd:I

    .line 43
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mNrConfigType:I

    .line 44
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    .line 45
    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    .line 46
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/motorola/android/internal/telephony/NrServiceState;)V
    .locals 1
    .param p1, "state"    # Lcom/motorola/android/internal/telephony/NrServiceState;

    .line 113
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndc:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndc:I

    .line 114
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mDcnr:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDcnr:I

    .line 115
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mEnabled:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEnabled:I

    .line 116
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    .line 117
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mPlmn:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mPlmn:I

    .line 118
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    .line 119
    iget v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    iput v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    .line 120
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    instance-of v0, p1, Lcom/motorola/android/internal/telephony/NrServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/motorola/android/internal/telephony/NrServiceState;

    .line 54
    .local v0, "state":Lcom/motorola/android/internal/telephony/NrServiceState;
    iget v2, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    iget v3, v0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    iget v3, v0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    if-ne v2, v3, :cond_1

    iget v4, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mPlmn:I

    iget v5, v0, Lcom/motorola/android/internal/telephony/NrServiceState;->mPlmn:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mUpperLayerInd:I

    iget v5, v0, Lcom/motorola/android/internal/telephony/NrServiceState;->mUpperLayerInd:I

    if-ne v4, v5, :cond_1

    iget v4, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mNrConfigType:I

    iget v5, v0, Lcom/motorola/android/internal/telephony/NrServiceState;->mNrConfigType:I

    if-ne v4, v5, :cond_1

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    iget v3, v0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    if-ne v2, v3, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/NrServiceState;->isServiceAvailable()Z

    move-result v2

    invoke-virtual {v0}, Lcom/motorola/android/internal/telephony/NrServiceState;->isServiceAvailable()Z

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 54
    :goto_0
    return v1
.end method

.method public getBearer()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    return v0
.end method

.method public getDataIconType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    return v0
.end method

.method public getEndcEnabled()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    return v0
.end method

.method public isDataConnected()Z
    .locals 1

    .line 73
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndcEnabled()Z
    .locals 2

    .line 101
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMmwDataConnected()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNrEnabled()Z
    .locals 2

    .line 89
    iget v0, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isServiceAvailable()Z
    .locals 3

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "available":Z
    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndc:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDcnr:I

    if-ne v1, v2, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method public setBearer(I)V
    .locals 0
    .param p1, "bearer"    # I

    .line 97
    iput p1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    .line 98
    return-void
.end method

.method public setDataIconType(I)V
    .locals 0
    .param p1, "dataIconType"    # I

    .line 85
    iput p1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    .line 86
    return-void
.end method

.method public setEndcEnabled(I)V
    .locals 0
    .param p1, "isEnabled"    # I

    .line 109
    iput p1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "NrServiceState : mEndc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", mDcnr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDcnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", mBearer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mBearer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, ", mPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mPlmn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", mDataIconType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mDataIconType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", mEndcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/android/internal/telephony/NrServiceState;->mEndcEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
