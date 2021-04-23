.class public Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;
.super Ljava/lang/Object;
.source "TagValidatorImpl.java"

# interfaces
.implements Lcom/motorola/android/internal/telephony/CSGParser/ITagValidator;


# instance fields
.field private final mTagType:B


# direct methods
.method public constructor <init>(B)V
    .locals 0
    .param p1, "tagType"    # B

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-byte p1, p0, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;->mTagType:B

    .line 26
    return-void
.end method


# virtual methods
.method public isParsableTag(Lcom/motorola/android/internal/telephony/CSGParser/model/Header;)Z
    .locals 2
    .param p1, "h"    # Lcom/motorola/android/internal/telephony/CSGParser/model/Header;

    .line 36
    iget-short v0, p1, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->mLen:S

    if-lez v0, :cond_0

    iget-byte v0, p1, Lcom/motorola/android/internal/telephony/CSGParser/model/Header;->mType:B

    iget-byte v1, p0, Lcom/motorola/android/internal/telephony/CSGParser/TagValidatorImpl;->mTagType:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
