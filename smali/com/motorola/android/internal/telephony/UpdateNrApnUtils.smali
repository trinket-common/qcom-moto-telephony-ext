.class public Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;
.super Ljava/lang/Object;
.source "UpdateNrApnUtils.java"


# static fields
.field private static final ATT_4G_DEFAULT_APN:Ljava/lang/String; = "nxtgenphone"

.field private static final ATT_4G_DEFAULT_APN_LABEL:Ljava/lang/String; = "ATT Nxtgenphone"

.field private static final ATT_CONSUMER_CELLULAR_GID1:Ljava/lang/String; = "2AC9"

.field private static final ATT_CONSUMER_CELLULAR_LTE_DEFAULT_APN:Ljava/lang/String; = "reseller"

.field private static final ATT_CONSUMER_CELLULAR_LTE_DEFAULT_APN_LABEL:Ljava/lang/String; = "reseller"

.field private static final ATT_CONSUMER_CELLULAR_NR_DEFAULT_APN:Ljava/lang/String; = "ereseller"

.field private static final ATT_NSA_4G_DUN_APN:Ljava/lang/String; = "hotspot"

.field private static final ATT_NSA_4G_DUN_APN_LABEL:Ljava/lang/String; = "ATT Hotspot"

.field private static final ATT_NSA_DEFAULT_APN:Ljava/lang/String; = "enhancedphone"

.field private static final ATT_NSA_GID1:Ljava/lang/String; = "53FF"

.field private static final ATT_SA_DEFAULT_APN:Ljava/lang/String; = "nrphone"

.field private static final ATT_SA_DUN_APN:Ljava/lang/String; = "nrhotspot"

.field private static final ATT_SA_GID1:Ljava/lang/String; = "52FF"

.field private static final CRICKET_4G_DEFAULT_APN:Ljava/lang/String; = "ndo"

.field private static final CRICKET_4G_DEFAULT_APN_LABEL:Ljava/lang/String; = "internet"

.field private static final CRICKET_NSA_DEFAULT_APN:Ljava/lang/String; = "endo"

.field private static final CRICKET_NSA_GID1:Ljava/lang/String; = "53FF"

.field protected static final DBG:Z

.field protected static final TAG:Ljava/lang/String; = "MotoExtTM: UpdateNrApnUtils"

.field private static final sATTPLMNs:[Ljava/lang/String;

.field private static final sCricketPLMNs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    .line 35
    const-string v1, "310030"

    const-string v2, "310170"

    const-string v3, "310280"

    const-string v4, "310380"

    const-string v5, "310410"

    const-string v6, "310560"

    const-string v7, "311180"

    const-string v8, "310950"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->sATTPLMNs:[Ljava/lang/String;

    .line 38
    const-string v0, "310150"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->sCricketPLMNs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isATTSIM(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 156
    return v2

    .line 158
    :cond_0
    sget-object v1, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->sATTPLMNs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 159
    .local v5, "plmn":Ljava/lang/String;
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    const/4 v1, 0x1

    return v1

    .line 158
    .end local v5    # "plmn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_2
    return v2
.end method

.method private static isCricketSIM(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 169
    return v2

    .line 171
    :cond_0
    sget-object v1, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->sCricketPLMNs:[Ljava/lang/String;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 172
    .local v5, "plmn":Ljava/lang/String;
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    const/4 v1, 0x1

    return v1

    .line 171
    .end local v5    # "plmn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    :cond_2
    return v2
.end method

.method public static isNeedToUpdateNrApns(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .line 67
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isATTSIM(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isCricketSIM(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-boolean v0, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Not ATT or Cricket SIM"

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 69
    :cond_0
    return v1

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "simGid1":Ljava/lang/String;
    const-string v2, "52FF"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "53FF"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 74
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    const-string v2, "2AC9"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 77
    sget-boolean v2, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "Not match any GID."

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 78
    :cond_2
    return v1

    .line 81
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 195
    const-string v0, "MotoExtTM: UpdateNrApnUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method private static updateApnName(Lcom/android/internal/telephony/Phone;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "originApn"    # Landroid/telephony/data/ApnSetting;
    .param p2, "newApnName"    # Ljava/lang/String;
    .param p3, "newApnLabel"    # Ljava/lang/String;

    .line 180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v0, "updatedApn":Landroid/content/ContentValues;
    const-string v1, "apn"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "edited"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v2, "_ID=? AND apn=?"

    .line 187
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, v3

    .line 190
    .local v1, "args":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public static updateNrApns(Lcom/android/internal/telephony/Phone;ILjava/util/List;)Z
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "nrModebitMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    .line 86
    .local p2, "curApnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    const/4 v0, 0x0

    .line 87
    .local v0, "apnUpdated":Z
    if-eqz p2, :cond_12

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "simGid1":Ljava/lang/String;
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isATTSIM(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    const-string v3, "ATT Nxtgenphone"

    const-string v4, "nxtgenphone"

    if-eqz v2, :cond_5

    const-string v2, "52FF"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_10

    .line 97
    sget-boolean v2, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Not a SA device."

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/ApnSetting;

    .line 100
    .local v5, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "nrphone"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    invoke-static {p0, v5, v4, v3}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->updateApnName(Lcom/android/internal/telephony/Phone;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "nrhotspot"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 104
    const-string v6, "hotspot"

    const-string v7, "ATT Hotspot"

    invoke-static {p0, v5, v6, v7}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->updateApnName(Lcom/android/internal/telephony/Phone;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    .line 107
    .end local v5    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_3
    :goto_1
    goto :goto_0

    :cond_4
    goto/16 :goto_5

    .line 109
    :cond_5
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isATTSIM(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    const-string v5, "Not a NSA device."

    const-string v6, "53FF"

    if-eqz v2, :cond_9

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 111
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_10

    .line 112
    sget-boolean v2, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v2, :cond_6

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 114
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/data/ApnSetting;

    .line 115
    .restart local v5    # "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v5}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "enhancedphone"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 116
    invoke-static {p0, v5, v4, v3}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->updateApnName(Lcom/android/internal/telephony/Phone;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    .line 119
    .end local v5    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_7
    goto :goto_2

    :cond_8
    goto/16 :goto_5

    .line 122
    :cond_9
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isATTSIM(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "2AC9"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 123
    if-nez p1, :cond_10

    .line 125
    sget-boolean v2, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "Not a NR device."

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 127
    :cond_a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 128
    .local v3, "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ereseller"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 129
    const-string v4, "reseller"

    invoke-static {p0, v3, v4, v4}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->updateApnName(Lcom/android/internal/telephony/Phone;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    .line 133
    .end local v3    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_b
    goto :goto_3

    :cond_c
    goto :goto_5

    .line 136
    :cond_d
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isCricketSIM(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 138
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_10

    .line 139
    sget-boolean v2, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v2, :cond_e

    invoke-static {v5}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 141
    :cond_e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/ApnSetting;

    .line 142
    .restart local v3    # "apn":Landroid/telephony/data/ApnSetting;
    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "endo"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 143
    const-string v4, "ndo"

    const-string v5, "internet"

    invoke-static {p0, v3, v4, v5}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->updateApnName(Lcom/android/internal/telephony/Phone;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    .line 146
    .end local v3    # "apn":Landroid/telephony/data/ApnSetting;
    :cond_f
    goto :goto_4

    .line 149
    :cond_10
    :goto_5
    sget-boolean v2, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APN updated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 150
    :cond_11
    return v0

    .line 89
    .end local v1    # "simGid1":Ljava/lang/String;
    :cond_12
    :goto_6
    sget-boolean v1, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->DBG:Z

    if-eqz v1, :cond_13

    const-string v1, "No APN to update."

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->logd(Ljava/lang/String;)V

    .line 90
    :cond_13
    const/4 v1, 0x0

    return v1
.end method
