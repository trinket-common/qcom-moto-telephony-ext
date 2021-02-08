.class public abstract Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;
.super Lcom/motorola/android/internal/telephony/IMotoExtTelephony$Stub;
.source "MotoExtTelephonyServiceBase.java"


# static fields
.field protected static final DBG:Z

.field private static final MOTO_EXT_TELEPHONY_SERVICE:Ljava/lang/String; = "motoexttelephony"

.field protected static final SIM_NUMBER_MAX_LEN:I = 0x14

.field protected static final TAG:Ljava/lang/String; = "MotoExtTM: MotoExtTelephonyService"

.field protected static final VDBG:Z = false

.field private static final sPhoneCount:I


# instance fields
.field private mBandInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field protected mContext:Landroid/content/Context;

.field protected mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field private mIsCarrierForceSingleSim:Ljava/lang/Boolean;

.field mPreferredNetSw:Lcom/motorola/android/internal/telephony/msim/PreferredNetworkSwitcher;

.field private mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

.field protected mServiceReady:Z

.field private mTOEInfo:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    .line 94
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->sPhoneCount:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IMotoExtTelephony$Stub;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mServiceReady:Z

    .line 96
    sget v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->sPhoneCount:I

    new-array v0, v0, [Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mTOEInfo:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mBandInfos:Ljava/util/Map;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mIsCarrierForceSingleSim:Ljava/lang/Boolean;

    .line 102
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    const-string v0, "moto_ext_telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->sPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mTOEInfo:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    new-instance v2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    invoke-direct {v2}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;-><init>()V

    aput-object v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_0
    .line 111
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 112
    return-void
.end method


# virtual methods
.method public CSGPerformNWScan(ILjava/lang/String;Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "scanCB"    # Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;

    .line 1150
    :try_start_0
    invoke-interface {p3}, Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;->onSearchFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    goto :goto_0

    .line 1151
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 1154
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public CSGSetSysSelectPref(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "info"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .param p3, "selectionCB"    # Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;

    .line 1165
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {p3, v0}, Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;->onSelectionDone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    goto :goto_0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 1169
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public activateUiccCard(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 293
    const/4 v0, -0x1

    return v0
.end method

.method public broadcastTTYModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 2434
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->enforceModifyPermission()V

    .line 2435
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastTTYModeChanged: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2436
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2437
    .local v0, "ttyModeChanged":Landroid/content/Intent;
    const-string v1, "android.telecom.extra.TTY_PREFERRED_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2438
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2439
    return-void
.end method

.method public clearBandInfo(I)V
    .locals 2
    .param p1, "subid"    # I

    .line 592
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->enforceModifyPermission()V

    .line 593
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhoneId(I)I

    move-result v0

    .line 594
    .local v0, "phoneid":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->setBandInfo(ILjava/util/List;)V

    .line 597
    :cond_0
    return-void
.end method

.method public clearLteAvailableFile(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public deactivateUiccCard(I)I
    .locals 1
    .param p1, "subId"    # I

    .line 307
    const/4 v0, -0x1

    return v0
.end method

.method public disableAllCAMultiDL(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 453
    const/4 v0, 0x0

    return v0
.end method

.method public enableCAPlusBandWidthFilter(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method protected enforceModifyPermission()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public get1xAdvancedEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public get4x4MimoEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCallAudioCodec(ILjava/lang/String;)I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2062
    const/4 v0, 0x0

    .line 2063
    .local v0, "codec":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "getActiveCallAudioCodec"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2065
    return v0

    .line 2068
    :cond_0
    const/4 v1, 0x0

    .line 2069
    .local v1, "cn":Lcom/android/internal/telephony/Connection;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2070
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2071
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2072
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2074
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCallAudioCodec cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2076
    :cond_3
    instance-of v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_5

    .line 2077
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2078
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAudioCodec()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    move v0, v2

    .line 2081
    :cond_5
    return v0
.end method

.method public getActiveCallRemoteTtyMode(ILjava/lang/String;)I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2098
    const/4 v0, 0x0

    .line 2099
    .local v0, "ret":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "getActiveCallRemoteTtyMode"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2101
    return v0

    .line 2104
    :cond_0
    const/4 v1, 0x0

    .line 2105
    .local v1, "cn":Lcom/android/internal/telephony/Connection;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2106
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2107
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2108
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2110
    :cond_2
    :goto_0
    sget-boolean v2, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCallRemoteTtyMode cn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2112
    :cond_3
    instance-of v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_4

    .line 2113
    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getRemoteTtyMode()I

    move-result v0

    .line 2115
    :cond_4
    sget-boolean v2, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCallRemoteTtyMode ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2116
    :cond_5
    return v0
.end method

.method public getActiveCallType(IZLjava/lang/String;)I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "includeHistory"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2020
    const/4 v0, -0x1

    .line 2021
    .local v0, "ret":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "getActiveCallType"

    invoke-static {v1, p1, p3, v2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2023
    return v0

    .line 2025
    :cond_0
    const/4 v1, 0x0

    .line 2026
    .local v1, "con":Lcom/android/internal/telephony/Connection;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2027
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2028
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2029
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2030
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2031
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2033
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCallType: con= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2034
    if-eqz v1, :cond_7

    .line 2035
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    .line 2036
    const/4 v0, 0x0

    goto :goto_2

    .line 2038
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getVideoStateHistory()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 2039
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2040
    :goto_1
    const/4 v0, 0x2

    goto :goto_2

    .line 2045
    :cond_6
    const/4 v0, 0x1

    .line 2050
    :cond_7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCallType: includeHistory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2051
    return v0
.end method

.method public getActiveSingleSimSlot(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1827
    const/4 v0, -0x1

    return v0
.end method

.method public getAndResetInTestEmergencyCall(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    const/4 v1, 0x0

    return v1
.end method

.method public getBC10Enabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getBandConfigBitMap(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 976
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBandInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "subid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 566
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getBandInfo"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-nez v0, :cond_0

    .line 568
    return-object v2

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhoneId(I)I

    move-result v0

    .line 572
    .local v0, "phoneid":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->validatePhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 573
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mBandInfos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 574
    .local v1, "bandInfos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;>;"
    if-nez v1, :cond_1

    return-object v2

    .line 575
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;

    .line 577
    .local v5, "bandInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 578
    .end local v5    # "bandInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;
    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 580
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 583
    .end local v1    # "bandInfos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    return-object v2
.end method

.method public getBandPriorityList(ILjava/lang/String;)[I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 657
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCABitmapForBand(IILjava/lang/String;)[B
    .locals 1
    .param p1, "primaryBandId"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCAEnable(IIILjava/lang/String;)Z
    .locals 1
    .param p1, "priBand"    # I
    .param p2, "secBand"    # I
    .param p3, "subId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public getCAMultiDL(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bandsCombo"    # Ljava/lang/String;

    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public getCAMultiDLList(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCAMultiDLULList(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 381
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCAMultiUL(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bandsCombo"    # Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public getCDMADataRate(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1075
    const/4 v0, -0x1

    return v0
.end method

.method public getCDMAServiceOption(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1024
    const/4 v0, -0x1

    return v0
.end method

.method public getCampedCsgInfo(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaCallProcessingData(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriAlertUri(ILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2325
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaEriAlertUri"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2327
    return-object v1

    .line 2329
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2330
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 2331
    .local v1, "ret":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 2332
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriAlertUri()Landroid/net/Uri;

    move-result-object v1

    .line 2334
    :cond_1
    return-object v1
.end method

.method public getCdmaHybridMode(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1128
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaRxDiversity(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1293
    const/4 v0, -0x1

    return v0
.end method

.method public getCdmaSidNidPairs(ILjava/lang/String;)[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaSysInfo(ILjava/lang/String;Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "infoCB"    # Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    .line 547
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p3, v0}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 551
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public getDDTMDefaultPreference(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1222
    const/4 v0, 0x0

    return v0
.end method

.method public getDSSEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabledUsingType(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 2190
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    goto :goto_0

    .line 2192
    :catch_0
    move-exception v1

    .line 2193
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const-string v3, "getDataRoamingEnabledUsingType"

    invoke-static {v2, p1, p2, v0, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2199
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    .line 2200
    .local v0, "isEnabled":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2202
    .local v1, "identity":J
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 2203
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled(I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 2205
    .end local v3    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    nop

    .line 2207
    return v0

    .line 2205
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    throw v3

    .line 2195
    .end local v0    # "isEnabled":Z
    .local v1, "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Needs READ_PHONE_STATE for isDataEnabledForApn"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEhrpdEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 886
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyNumber(IILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;
    .locals 1
    .param p1, "emergencyAddress"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1358
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndcEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1684
    const/4 v0, 0x0

    return v0
.end method

.method public getEvdoData(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvdoRevisionOption(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1047
    const/4 v0, -0x1

    return v0
.end method

.method public getFDDTM9Enabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public getForNIDReg(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1264
    const/4 v0, 0x0

    return v0
.end method

.method public getForSIDReg(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1254
    const/4 v0, 0x0

    return v0
.end method

.method public getHdrRxDiversity(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1313
    const/4 v0, -0x1

    return v0
.end method

.method public getHomeSIDReg(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1244
    const/4 v0, 0x0

    return v0
.end method

.method public getLTEBandConfigBitmap(ILjava/lang/String;)[B
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 965
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLTEBandEnable(IILjava/lang/String;)Z
    .locals 1
    .param p1, "bandId"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public getLTERRCState(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 535
    const/16 v0, 0xff

    return v0
.end method

.method public getLteAvailableFileRecords(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteAvailableFileRecord;",
            ">;"
        }
    .end annotation

    .line 906
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLteBsrTimer(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 864
    const/4 v0, -0x1

    return v0
.end method

.method public getLteData(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteData;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLteErrors(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;",
            ">;"
        }
    .end annotation

    .line 1439
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxBsrTimer(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 834
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxBsrTimerStages(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 844
    const/4 v0, -0x1

    return v0
.end method

.method public getMipErrorCode(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1188
    const/4 v0, 0x0

    return v0
.end method

.method public getMobilePRev(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1333
    const v0, 0xffff

    return v0
.end method

.method public getNRDeviceType(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1514
    const/4 v0, 0x0

    return v0
.end method

.method public getNRModeBitMask(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1528
    const/4 v0, 0x0

    return v0
.end method

.method public getNamInfo(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1381
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextLteScan(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 813
    const/4 v0, -0x1

    return v0
.end method

.method public getNrDataIconType(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1574
    const/4 v0, 0x0

    return v0
.end method

.method public getNrModeDisabled(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1730
    const/4 v0, -0x1

    return v0
.end method

.method public getOperatorPreferredDataSubIdWithRestriction(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p1, "restrictionType"    # I
    .param p2, "carrier"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1932
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getOperatorPreferredDataSubIdWithRestriction"

    invoke-static {v0, p3, p4, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1934
    const/4 v0, -0x1

    return v0

    .line 1936
    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/PhoneFactory;->getOperatorPreferredDataSubIdWithRestriction(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPcoData(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2128
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getPcoData"

    invoke-static {v0, p1, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    return-object v1

    .line 2133
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2134
    .local v0, "curPhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->getDcTracker(I)Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-result-object v2

    .line 2135
    .local v2, "wwanDct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getPcoByApnType(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2136
    .end local v0    # "curPhone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "wwanDct":Lcom/android/internal/telephony/dataconnection/DcTracker;
    :catch_0
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPcoData Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 2139
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method protected getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # I

    .line 1866
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .line 1857
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1858
    .local v0, "phoneId":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 1862
    :cond_0
    return v0
.end method

.method public getPlmnNameFromSE13Table(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "subId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 330
    const-string v0, ""

    return-object v0
.end method

.method public getPnnHomeName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1892
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getPnnHomeName"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1894
    return-object v1

    .line 1897
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1898
    .local v0, "curPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1899
    .end local v0    # "curPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v0

    .line 1900
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPnnHomeName Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 1902
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public getProvisionUpdateRequest(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getQAMDLEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public getQAMULEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method public getSO68Enabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getSO73COP0Enabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getSO73COP1To7Enabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getSecuritySimLockData(ILjava/lang/String;)[B
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1478
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimLock(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 677
    const/4 v0, -0x1

    return v0
.end method

.method public getSimNonce(ILjava/lang/String;)[B
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlotCycleIndex(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1209
    const/4 v0, 0x0

    return v0
.end method

.method public getSlotCycleMode(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method public getSprintVoiceServiceOption(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubIdUsingPhoneId(I)I
    .locals 2
    .param p1, "phoneId"    # I

    .line 1566
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1567
    .local v0, "subIds":[I
    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1570
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1

    .line 1568
    :cond_1
    :goto_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSubsidyLockDetail(Ljava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 494
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTDDTM9Enabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public getTOEInfo(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1795
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getTOEInfo"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;-><init>()V

    return-object v0

    .line 1800
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhoneId(I)I

    move-result v0

    .line 1801
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1802
    new-instance v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    invoke-direct {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;-><init>()V

    return-object v1

    .line 1805
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mTOEInfo:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getUTCObject_MotoExt(ILjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getUTCObject_MotoExt"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1950
    return-object v1

    .line 1952
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1953
    .local v0, "curPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1954
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getUTCObject()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1956
    :cond_1
    return-object v1
.end method

.method public getUserSelectedSlot(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2283
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getUserSelectedSlot"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2285
    return v1

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2289
    const-string v2, "SIM_SLOT_SELECTED"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2288
    return v0
.end method

.method public getVoiceDomainSetting(ILjava/lang/String;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1454
    const/4 v0, -0x1

    return v0
.end method

.method public handleOemHookIndication(I[B)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "response"    # [B

    .line 1562
    return-void
.end method

.method public isCarrierForceSingleSim(ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2248
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "isCarrierForceSingleSim"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2250
    return v1

    .line 2253
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2255
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mIsCarrierForceSingleSim:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 2256
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mIsCarrierForceSingleSim:Ljava/lang/Boolean;

    .line 2257
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "channel_id"

    invoke-static {v0, v2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2259
    .local v0, "curCarrier":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2261
    .local v2, "carriersList":[Ljava/lang/String;
    if-nez v2, :cond_2

    .line 2262
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mIsCarrierForceSingleSim:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 2265
    :cond_2
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 2266
    .local v4, "carrier":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " need force single sim for dsds."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2268
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mIsCarrierForceSingleSim:Ljava/lang/Boolean;

    .line 2269
    goto :goto_1

    .line 2265
    .end local v4    # "carrier":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2273
    .end local v0    # "curCarrier":Ljava/lang/String;
    .end local v2    # "carriersList":[Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mIsCarrierForceSingleSim:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMmsDataAlwaysAllowed(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2408
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "isMmsDataAlwaysAllowed"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2410
    return v1

    .line 2413
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2414
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_1

    .line 2415
    return v1

    .line 2417
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataEnabledSettings()Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isMmsDataAlwaysAllowed()Z

    move-result v1

    .line 2418
    .local v1, "mmsAllowed":Z
    sget-boolean v2, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMmsDataAlwaysAllowed: mmsAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2419
    :cond_2
    return v1
.end method

.method public isNeedToUpdateNrApns(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1744
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "isNeedToUpdateNrApns"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    const/4 v0, 0x0

    return v0

    .line 1749
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->isNeedToUpdateNrApns(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    return v0
.end method

.method public isRttForActiveCall(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2149
    const/4 v0, 0x0

    .line 2150
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "isRttForActiveCall"

    invoke-static {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2152
    return v0

    .line 2154
    :cond_0
    const/4 v1, 0x0

    .line 2155
    .local v1, "con":Lcom/android/internal/telephony/Connection;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2156
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2157
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2158
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0

    .line 2159
    :cond_2
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2160
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2162
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRttForActiveCall: con="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2163
    :cond_4
    instance-of v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2164
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isRttEnabledForCall()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    .line 2165
    sget-boolean v2, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRttForActiveCall: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2166
    :cond_6
    return v0
.end method

.method public isServiceReady()Z
    .locals 1

    .line 1847
    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mServiceReady:Z

    return v0
.end method

.method public isUiccApplicationAvailable(IILjava/lang/String;)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2347
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "isUiccApplicationAvailable"

    invoke-static {v0, p1, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2349
    return v1

    .line 2352
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2353
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 2354
    .local v2, "famType":I
    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    const/4 v4, 0x4

    if-eq p2, v4, :cond_2

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    goto :goto_0

    .line 2366
    :cond_1
    const/4 v2, 0x3

    .line 2367
    goto :goto_0

    .line 2362
    :cond_2
    const/4 v2, 0x2

    .line 2363
    goto :goto_0

    .line 2357
    :cond_3
    const/4 v2, 0x1

    .line 2358
    nop

    .line 2372
    :goto_0
    if-nez v2, :cond_4

    .line 2373
    const-string v3, "isUiccApplicationAvailable invalid app type"

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 2374
    return v1

    .line 2376
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2378
    .local v4, "identity":J
    if-nez v0, :cond_5

    .line 2379
    nop

    .line 2394
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    return v1

    .line 2382
    :cond_5
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    .local v6, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-nez v6, :cond_6

    .line 2384
    nop

    .line 2394
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2384
    return v1

    .line 2386
    :cond_6
    :try_start_1
    instance-of v7, v6, Lcom/android/internal/telephony/uicc/UiccProfile;

    if-eqz v7, :cond_8

    .line 2387
    move-object v7, v6

    check-cast v7, Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 2388
    .local v7, "up":Lcom/android/internal/telephony/uicc/UiccProfile;
    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_7

    move v1, v3

    .line 2394
    :cond_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2388
    return v1

    .line 2392
    .end local v6    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .end local v7    # "up":Lcom/android/internal/telephony/uicc/UiccProfile;
    :cond_8
    goto :goto_1

    .line 2394
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2390
    :catch_0
    move-exception v3

    .line 2391
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUiccApplicationAvailable Exception ex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2394
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2395
    nop

    .line 2396
    return v1

    .line 2394
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2395
    throw v1
.end method

.method public logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1870
    const-string v0, "MotoExtTM: MotoExtTelephonyService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1878
    const-string v0, "MotoExtTM: MotoExtTelephonyService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void
.end method

.method public logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 1874
    const-string v0, "MotoExtTM: MotoExtTelephonyService"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return-void
.end method

.method public notifyCAInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "data"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;

    .line 1591
    if-nez p2, :cond_0

    .line 1592
    return-void

    .line 1595
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 1596
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyCAInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CaInfoData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    :cond_1
    goto :goto_0

    .line 1598
    :catch_0
    move-exception v0

    .line 1601
    :goto_0
    return-void
.end method

.method public notifyEndcStatusChanged(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 1688
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEndcStatusChanged, phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 1691
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyEndcStatusChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    :cond_1
    goto :goto_0

    .line 1694
    :catch_0
    move-exception v0

    .line 1697
    :goto_0
    return-void
.end method

.method public notifyLteErrorForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "lteError"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyLteErrorForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :cond_0
    goto :goto_0

    .line 1631
    :catch_0
    move-exception v0

    .line 1634
    :goto_0
    return-void
.end method

.method public notifyMipErrorForPhone(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "err"    # I

    .line 1638
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyMipErrorForPhone(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    :cond_0
    goto :goto_0

    .line 1641
    :catch_0
    move-exception v0

    .line 1644
    :goto_0
    return-void
.end method

.method protected notifyNVChanges(Ljava/lang/String;)V
    .locals 3
    .param p1, "nvChangeType"    # Ljava/lang/String;

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.intent.action.ACTION_TELEPHONY_INFO_UPDATES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    const-string v1, "nvChanged"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public notifyNrBearerAllocationChanged(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "bearer"    # I

    .line 1659
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNrBearerAllocationChanged, phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bearer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 1662
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyNrBearerAllocationChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    :cond_1
    goto :goto_0

    .line 1665
    :catch_0
    move-exception v0

    .line 1668
    :goto_0
    return-void
.end method

.method public notifyNrDataIconTypeChanged(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "iconType"    # I

    .line 1647
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNrDataIconTypeChanged, phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 1650
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 1651
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyNrDataIconTypeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1655
    :cond_1
    goto :goto_0

    .line 1653
    :catch_0
    move-exception v0

    .line 1656
    :goto_0
    return-void
.end method

.method public notifyOemHookRawEventForPhone(I[B)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "rawData"    # [B

    .line 1578
    if-nez p2, :cond_0

    .line 1579
    return-void

    .line 1582
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 1583
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyOemHookRawEventForPhone(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :cond_1
    goto :goto_0

    .line 1585
    :catch_0
    move-exception v0

    .line 1588
    :goto_0
    return-void
.end method

.method public notifyPCOInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "data"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;

    .line 1604
    if-nez p2, :cond_0

    .line 1605
    return-void

    .line 1608
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_1

    .line 1609
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyPCOInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$PCOInfoData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1613
    :cond_1
    goto :goto_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1614
    :goto_0
    return-void
.end method

.method public notifySIB16CoverageForPhone(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "inCoverage"    # Z

    .line 1618
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifySIB16CoverageForPhone(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1623
    :cond_0
    goto :goto_0

    .line 1621
    :catch_0
    move-exception v0

    .line 1624
    :goto_0
    return-void
.end method

.method public notifySimLockInfoChangedForPhone(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 1701
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifySimLockInfoChangedForPhone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :cond_0
    goto :goto_0

    .line 1704
    :catch_0
    move-exception v0

    .line 1707
    :goto_0
    return-void
.end method

.method public notifyTOEInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "info"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    .line 1809
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mTOEInfo:[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;

    aput-object p2, v0, p1

    .line 1811
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    if-eqz v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mRegistry:Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoExtTelephonyRegistry;->notifyTOEInfoForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$TOEInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    :cond_0
    goto :goto_0

    .line 1814
    :catch_0
    move-exception v0

    .line 1817
    :goto_0
    return-void
.end method

.method protected publish()V
    .locals 2

    .line 115
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 116
    :cond_0
    const-string v0, "motoexttelephony"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 117
    return-void
.end method

.method public radioConfigReset(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "resetType"    # I

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public set1xAdvancedEnabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public set4x4MimoEnabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public setActiveSingleSimSlot(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotType"    # I

    .line 1837
    const/4 v0, 0x0

    return v0
.end method

.method public setAkeyInfo(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "akey"    # Ljava/lang/String;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1095
    const/4 v0, 0x0

    return v0
.end method

.method public setBC10Enabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public setBandInfo(ILjava/util/List;)V
    .locals 2
    .param p1, "phoneid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;",
            ">;)V"
        }
    .end annotation

    .line 554
    .local p2, "bandInfos":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$RadioBandInfo;>;"
    if-ltz p1, :cond_0

    sget v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->sPhoneCount:I

    if-ge p1, v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mBandInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_0
    return-void
.end method

.method public setBandPriorityList(I[I)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "priList"    # [I

    .line 667
    const/4 v0, 0x0

    return v0
.end method

.method public setCAEnable(IIZ)Z
    .locals 1
    .param p1, "priBand"    # I
    .param p2, "secBand"    # I
    .param p3, "enable"    # Z

    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public setCAMultiDL(ILjava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # Z
    .param p4, "bandsCombo"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public setCAMultiUL(ILjava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # Z
    .param p4, "bandsCombo"    # Ljava/lang/String;

    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public setCDMADataRate(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "rate"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1085
    const/4 v0, 0x0

    return v0
.end method

.method public setCDMAServiceOption(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "serviceOption"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1034
    const/4 v0, 0x0

    return v0
.end method

.method public setCdmaHybridMode(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1138
    const/4 v0, 0x0

    return v0
.end method

.method public setCdmaRxDiversity(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "value"    # I

    .line 1304
    const/4 v0, 0x0

    return v0
.end method

.method public setCdmaSidNidPairs(I[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pairs"    # [Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method public setDDTMDefaultPreference(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "setting"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1234
    const/4 v0, 0x0

    return v0
.end method

.method public setDSSEnabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1499
    const/4 v0, 0x0

    return v0
.end method

.method public setDataRoamingEnabledUsingType(IIZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "type"    # I
    .param p3, "isEnabled"    # Z

    .line 2227
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const-string v1, "setDataRoamingEnabledUsingType"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 2230
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2232
    .local v0, "identity":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2233
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    .line 2234
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2238
    nop

    .line 2239
    return-void

    .line 2237
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2238
    throw v2
.end method

.method public setDefaultDataSubIdWithNwAutoSwitch(I)I
    .locals 2
    .param p1, "ddsSubId"    # I

    .line 1910
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->enforceModifyPermission()V

    .line 1911
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultDataSubIdWithNwAutoSwitch: subDSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mPreferredNetSw:Lcom/motorola/android/internal/telephony/msim/PreferredNetworkSwitcher;

    if-eqz v0, :cond_1

    .line 1915
    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/msim/PreferredNetworkSwitcher;->setDefaultDataSubIdWithNwAutoSwitch(I)I

    move-result v0

    return v0

    .line 1917
    :cond_1
    const-string v0, "PreferredNetworkSwitcher not init"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 1918
    const/4 v0, -0x1

    return v0
.end method

.method public setEhrpdEnabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method public setEmergencyNumber(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emergencyAddress"    # I
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public setEndcEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1676
    return-void
.end method

.method public setEvdoRevisionOption(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "revOption"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method public setFDDTM9Enabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 782
    const/4 v0, 0x0

    return v0
.end method

.method public setHdrRxDiversity(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "value"    # I

    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method public setLTEBandEnable(IIZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "bandId"    # I
    .param p3, "enable"    # Z

    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method public setLTEBandsEnableDisable(I[I[I)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enableBands"    # [I
    .param p3, "disableBands"    # [I

    .line 631
    const/4 v0, 0x0

    return v0
.end method

.method public setLine1NumberToSim(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 2457
    const/4 v0, 0x0

    return v0
.end method

.method public setLteBsrTimer(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "timer"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public setMaxBsrTimerStages(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "stages"    # I

    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method public setMobilePRev(IILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "PRevValue"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1345
    const/4 v0, 0x0

    return v0
.end method

.method public setNRBandsEnableDisable(I[I[I[I[I)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enableSABands"    # [I
    .param p3, "disableSABands"    # [I
    .param p4, "enableNSABands"    # [I
    .param p5, "disableNSABands"    # [I

    .line 647
    const/4 v0, 0x0

    return v0
.end method

.method public setNamInfo(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "namInfo"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1391
    const/4 v0, 0x0

    return v0
.end method

.method public setNextLteScan(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "timer"    # I

    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public setNrModeDisabled(II)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 1718
    return-void
.end method

.method public setProvisionUpdateDoneRequest(IB)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "carrierId"    # B

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public setQAMDLEnabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public setQAMULEnabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public setSO68Enabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public setSO73COP0Enabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public setSO73COP1To7Enabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public setSimLock(I[B)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "lock"    # [B

    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public setSprintVoiceServiceOption(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;Ljava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "serviceOption"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1427
    const/4 v0, 0x0

    return v0
.end method

.method public setTDDTM9Enabled(IZ)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 803
    const/4 v0, 0x0

    return v0
.end method

.method public setUserSelectedSlot(I)Z
    .locals 3
    .param p1, "slotType"    # I

    .line 2300
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->enforceModifyPermission()V

    .line 2301
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    if-eqz v0, :cond_0

    .line 2302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserSelectedSlot: slotType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->logd(Ljava/lang/String;)V

    .line 2305
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2306
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2307
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SIM_SLOT_SELECTED"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2308
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2309
    const/4 v2, 0x1

    return v2
.end method

.method public setVoiceDomainSetting(II)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "setting"    # I

    .line 1469
    const/4 v0, 0x0

    return v0
.end method

.method public supplyIccDepersonalization(ILjava/lang/String;ILcom/motorola/android/internal/telephony/IMotoDepersoCB;)V
    .locals 3
    .param p1, "lockType"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "callback"    # Lcom/motorola/android/internal/telephony/IMotoDepersoCB;

    .line 482
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getSubIdUsingPhoneId(I)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lcom/motorola/android/internal/telephony/IMotoDepersoCB;->onDepersoResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public unlockDevice(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;)I
    .locals 1
    .param p1, "unlockInfo"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;

    .line 520
    const/4 v0, 0x3

    return v0
.end method

.method public updateNrApns(ILjava/util/List;)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;)Z"
        }
    .end annotation

    .line 1765
    .local p2, "curApnSettings":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ApnSetting;>;"
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_APN_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1766
    .local v0, "status":I
    if-nez v0, :cond_0

    .line 1770
    const/4 v1, 0x0

    .line 1771
    .local v1, "nrModebitMask":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1773
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getNRModeBitMask(ILjava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    .line 1775
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    nop

    .line 1778
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v1, p2}, Lcom/motorola/android/internal/telephony/UpdateNrApnUtils;->updateNrApns(Lcom/android/internal/telephony/Phone;ILjava/util/List;)Z

    move-result v4

    return v4

    .line 1775
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    throw v4

    .line 1767
    .end local v1    # "nrModebitMask":I
    .end local v2    # "token":J
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Caller must hold the WRITE_APN_SETTINGS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateVoiceMessageCount(I)V
    .locals 6
    .param p1, "count"    # I

    .line 1980
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()I

    move-result v0

    .line 1981
    .local v0, "defaultSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1983
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1985
    .local v1, "token":J
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    .line 1986
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubIdList(Z)[I

    move-result-object v3

    .line 1987
    .local v3, "activeSubs":[I
    array-length v5, v3

    if-ne v5, v4, :cond_0

    .line 1988
    const/4 v4, 0x0

    aget v4, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1995
    .end local v3    # "activeSubs":[I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    goto :goto_0

    .line 1991
    .restart local v3    # "activeSubs":[I
    :cond_0
    :try_start_1
    const-string v4, "updateVoiceMessageCount: No preference subscription can be found."

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1995
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1992
    return-void

    .line 1995
    .end local v3    # "activeSubs":[I
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1996
    throw v3

    .line 1999
    .end local v1    # "token":J
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v1

    .line 2000
    .local v1, "iccSmsIntMgr":Lcom/android/internal/telephony/IccSmsInterfaceManager;
    if-eqz v1, :cond_2

    .line 2001
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateVoiceMessageCount(I)V

    goto :goto_1

    .line 2003
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceMessageCount iccSmsIntMgr is null for subscription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->loge(Ljava/lang/String;)V

    .line 2005
    :goto_1
    return-void
.end method

.method protected validatePhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1851
    if-ltz p1, :cond_0

    sget v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->sPhoneCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1853
    .local v0, "valid":Z
    :goto_0
    return v0
.end method

.method public vendorInvokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "motoOemCB"    # Lcom/motorola/android/internal/telephony/IMotoOemCB;

    .line 1555
    const/4 v0, -0x1

    return v0
.end method

.method public vendorInvokeOemRilRequestRawSync(I[B[B)I
    .locals 1
    .param p1, "subId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B

    .line 1542
    const/4 v0, -0x1

    return v0
.end method

.method public verifyMsl(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    return v0
.end method
