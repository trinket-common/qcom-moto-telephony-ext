.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RdeNvValue"
.end annotation


# instance fields
.field public dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

.field public elementId:I

.field public length:I

.field public offset:I

.field public recordNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->elementId:I

    .line 102
    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->recordNum:I

    .line 103
    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->offset:I

    .line 104
    iput v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->length:I

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$RdeNvValue;->dataObj:Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvDataType;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x10

    return v0
.end method
