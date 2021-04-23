.class public Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
.super Ljava/lang/Object;
.source "QcomNvInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComboSet"
.end annotation


# instance fields
.field mDLComboList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;",
            ">;"
        }
    .end annotation
.end field

.field mULComboList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "anotherObj"    # Ljava/lang/Object;

    .line 1145
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1146
    return v0

    .line 1148
    :cond_0
    instance-of v1, p1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    if-nez v1, :cond_1

    .line 1149
    return v0

    .line 1151
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;

    .line 1152
    .local v1, "anotherComboSet":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getByteSize()I
    .locals 4

    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "rtnVal":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1081
    .local v2, "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getByteSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 1082
    .end local v2    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_0

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1085
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1086
    .restart local v2    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getByteSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 1087
    .end local v2    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_1

    .line 1089
    :cond_1
    return v0
.end method

.method public getOneLineString()Ljava/lang/String;
    .locals 5

    .line 1126
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1127
    .local v0, "strBuff":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    const-string v2, ";"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1129
    .local v3, "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1130
    .end local v3    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_0

    .line 1132
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1134
    .restart local v3    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    invoke-virtual {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->getOneLineString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    .end local v3    # "combo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;
    goto :goto_1

    .line 1137
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1140
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->getOneLineString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isValid()Z
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method putACombo(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;)V
    .locals 1
    .param p1, "aCombo"    # Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;

    .line 1093
    if-nez p1, :cond_0

    .line 1094
    return-void

    .line 1096
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->isDL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mDLComboList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_2
    invoke-virtual {p1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$Combo;->isUL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1103
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    .line 1106
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->mULComboList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1122
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL$ComboSet;->getOneLineString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
