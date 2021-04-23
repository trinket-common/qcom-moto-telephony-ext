.class public Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
.super Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;
.source "QcomMotoExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;,
        Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;,
        Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    }
.end annotation


# static fields
.field private static final CMD_SET_SIMCARD_NUMBER:I = 0x7d5

.field private static final CMD_UNLOCK_PERSO:I = 0x7d4

.field private static final DBG:Z

.field private static final EVENT_MOTO_OEM_RIL_START:I = 0x7d0

.field private static final EVENT_SET_SIMCARD_NUMBER_DONE:I = 0x7d6

.field private static final EVENT_UNSOL_OEM_HOOK_RAW:I = 0x7d1

.field private static final EVENT_VENDOR_SERVICE_DIED:I = 0x7d2

.field private static final GENERIC_FAILURE:I = -0x1

.field private static final INVALID_INPUT:I = -0x2

.field private static final QCRILMSGSERVICE_CONNECT_DELAY_MILLIS:I = 0xfa0

.field private static final QCRIL_MSG_TUNNEL_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel"

.field private static final QCRIL_MSG_TUNNEL_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

.field private static final REQUEST_IN_PROGRESS:I = -0x3

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MotoExtTM: QcomMotoExtTelephonyService"

.field private static final UNLOCK_DEVICE_ERROR:I = 0x1

.field private static final VDBG:Z = false

.field private static sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

.field private static final sPhoneCount:I


# instance fields
.field private mEndcStatus:[Z

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private mHandler:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLteErrorList:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;",
            ">;"
        }
    .end annotation
.end field

.field private mNrBearers:[I

.field private mNrDataIconTypes:[I

.field private mNrStateManager:Lcom/motorola/android/internal/telephony/NrStateManager;

.field private mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

.field private mOemHookIndication:[Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

.field private mOemHookIndicationProcess:Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;

.field private mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

.field private final mQcrilMsgServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mQcrilMsgTunnelConnection:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;

.field private mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    sget-boolean v0, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->DBG:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 136
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sPhoneCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 166
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 137
    sget v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sPhoneCount:I

    new-array v2, v1, [Lcom/motorola/android/internal/telephony/MotoOemHookIndication;

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mOemHookIndication:[Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

    .line 138
    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    .line 140
    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgTunnelConnection:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;

    .line 145
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrDataIconTypes:[I

    .line 146
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrBearers:[I

    .line 147
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mEndcStatus:[Z

    .line 3145
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 167
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "QcomMotoExtTelephonyService init"

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    .line 170
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/QcomNvManager;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    .line 171
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mOemHookIndicationProcess:Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;

    .line 173
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MotoExtTM: QcomMotoExtTelephonyService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 174
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 175
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mHandler:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    .line 177
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->registerForAllEvents()V

    .line 178
    new-instance v1, Lcom/motorola/android/internal/telephony/NrStateManager;

    sget v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sPhoneCount:I

    invoke-direct {v1, p0, v2, p1}, Lcom/motorola/android/internal/telephony/NrStateManager;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrStateManager:Lcom/motorola/android/internal/telephony/NrStateManager;

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mOemHookIndication:[Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

    new-instance v3, Lcom/motorola/android/internal/telephony/MotoOemHookIndication;

    invoke-direct {v3, p0}, Lcom/motorola/android/internal/telephony/MotoOemHookIndication;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V

    aput-object v3, v2, v1

    .line 182
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;

    invoke-direct {v1, p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;)V

    iput-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgTunnelConnection:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;

    .line 187
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->bindToQcrilMsgTunnelService()V

    .line 189
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->publish()V

    .line 190
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 99
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 99
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->bindToQcrilMsgTunnelService()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 99
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 99
    invoke-static {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->isEVDOOnFemto(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 99
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mHandler:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 99
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object v0
.end method

.method static synthetic access$602(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
    .param p1, "x1"    # Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 99
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    return-object p1
.end method

.method static synthetic access$700()I
    .locals 1

    .line 99
    sget v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sPhoneCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 99
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)[Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 99
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mOemHookIndication:[Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

    return-object v0
.end method

.method private bindToQcrilMsgTunnelService()V
    .locals 4

    .line 3156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3157
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qcrilmsgtunnel"

    const-string v2, "com.qualcomm.qcrilmsgtunnel.QcrilMsgTunnelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3158
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v1, :cond_0

    .line 3159
    const-string v1, "Starting QcrilMsgTunnel Service"

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3161
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgTunnelConnection:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 3163
    .local v1, "status":Z
    return-void
.end method

.method private getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    .locals 3
    .param p1, "phoneId"    # I

    .line 846
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCaBwCombo(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v0

    .line 847
    .local v0, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v1, :cond_0

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaBwCombo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 850
    :cond_0
    return-object v0
.end method

.method private getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;
    .locals 1

    .line 3135
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-nez v0, :cond_0

    .line 3136
    const-string v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 3138
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    return-object v0
.end method

.method public static getInstance()Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
    .locals 2

    .line 196
    sget-object v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "MotoExtTM: QcomMotoExtTelephonyService"

    const-string v1, "getInstance null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    sget-object v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 154
    const-class v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    if-nez v1, :cond_0

    .line 156
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-direct {v1, p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    goto :goto_0

    .line 158
    :cond_0
    const-string v1, "MotoExtTM: QcomMotoExtTelephonyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    sget-object v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sInstance:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    monitor-exit v0

    return-object v1

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static isEVDOOnFemto(Ljava/lang/String;)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 1212
    const/16 v0, 0xc

    .line 1213
    .local v0, "FEMTO_SUBNET_INDEX":I
    const/16 v1, 0xc

    .line 1215
    .local v1, "FEMTO_SUBNET_MASK":I
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x2f

    .line 1216
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move v4, v3

    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_0

    goto :goto_0

    .line 1219
    :cond_0
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1220
    .local v3, "length":I
    const/4 v5, 0x0

    .line 1221
    .local v5, "subnet_value":I
    const/16 v6, 0x31

    if-le v3, v6, :cond_1

    mul-int/lit8 v6, v4, 0x4

    if-gt v3, v6, :cond_1

    .line 1222
    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    .line 1223
    and-int/lit8 v7, v5, 0xc

    if-ne v7, v6, :cond_1

    .line 1224
    const/4 v2, 0x1

    return v2

    .line 1227
    :cond_1
    return v2

    .line 1217
    .end local v3    # "length":I
    .end local v4    # "index":I
    .end local v5    # "subnet_value":I
    :cond_2
    :goto_0
    return v2
.end method

.method private notifyCAEnableStatusChanged()V
    .locals 1

    .line 1095
    const-string v0, "CA"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyNVChanges(Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method private registerForAllEvents()V
    .locals 0

    .line 193
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .line 3195
    if-eqz p1, :cond_0

    .line 3196
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3197
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 3198
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 3200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .line 347
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 3
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "subId"    # Ljava/lang/Integer;

    .line 356
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mHandler:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 360
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    invoke-direct {v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 361
    .local v0, "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mHandler:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    invoke-virtual {v1, p1, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 362
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 365
    monitor-enter v0

    .line 366
    :goto_0
    :try_start_0
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 368
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :goto_1
    goto :goto_0

    .line 369
    :catch_0
    move-exception v2

    goto :goto_1

    .line 373
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    iget-object v2, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 373
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 357
    .end local v0    # "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method will deadlock if called from the work thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public CSGPerformNWScan(ILjava/lang/String;Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "scanCB"    # Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;

    .line 2106
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "CSGPerformNWScan"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "onSearchFailed exception"

    if-nez v0, :cond_0

    .line 2109
    :try_start_0
    invoke-interface {p3}, Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;->onSearchFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2112
    goto :goto_0

    .line 2110
    :catch_0
    move-exception v0

    .line 2111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 2113
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2117
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2119
    :try_start_1
    invoke-interface {p3}, Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;->onSearchFailed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2122
    goto :goto_1

    .line 2120
    :catch_1
    move-exception v2

    .line 2121
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 2123
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 2126
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->CSGPerformNWScan(ILcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V

    .line 2127
    return-void
.end method

.method public CSGSetSysSelectPref(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "info"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;
    .param p3, "selectionCB"    # Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;

    .line 2132
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2134
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2135
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2137
    const/4 v1, -0x1

    :try_start_0
    invoke-interface {p3, v1}, Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;->onSelectionDone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    goto :goto_0

    .line 2138
    :catch_0
    move-exception v1

    .line 2139
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSelectionDone exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 2141
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2144
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->CSGSetSysSelectPref(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V

    .line 2145
    return-void
.end method

.method public activateUiccCard(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 665
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    const-string v1, "activateUiccCard subId="

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 668
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v0

    .line 669
    .local v0, "slotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 670
    const/4 v1, -0x1

    return v1

    .line 673
    :cond_1
    const/4 v2, -0x1

    .line 674
    .local v2, "activateRet":I
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->canDisablePhysicalSubscription()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 675
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionEnabled(ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 676
    const/4 v2, 0x0

    goto :goto_1

    .line 680
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/codeaurora/internal/IExtTelephony;->activateUiccCard(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 685
    :goto_0
    goto :goto_1

    .line 683
    :catch_0
    move-exception v3

    .line 684
    .local v3, "ex":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException @activateUiccCard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 681
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 682
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException @activateUiccCard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .end local v3    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 688
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Ret="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 689
    :cond_4
    return v2
.end method

.method public clearLteAvailableFile(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 1896
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1898
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1899
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1900
    const/4 v1, 0x0

    return v1

    .line 1903
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->clearLteAvailableFile(I)Z

    move-result v1

    return v1
.end method

.method public deactivateUiccCard(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 703
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    const-string v1, "deactivateUiccCard subId="

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 706
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v0

    .line 707
    .local v0, "slotId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 708
    const/4 v1, -0x1

    return v1

    .line 711
    :cond_1
    const/4 v2, -0x1

    .line 712
    .local v2, "deactivateRet":I
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->canDisablePhysicalSubscription()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 713
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->setSubscriptionEnabled(ZI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 714
    const/4 v2, 0x0

    goto :goto_1

    .line 718
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/codeaurora/internal/IExtTelephony;->deactivateUiccCard(I)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 723
    :goto_0
    goto :goto_1

    .line 721
    :catch_0
    move-exception v3

    .line 722
    .local v3, "ex":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException @deactivateUiccCard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 719
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 720
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException @deactivateUiccCard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .end local v3    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 726
    :cond_3
    :goto_1
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Ret="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 727
    :cond_4
    return v2
.end method

.method public disableAllCAMultiDL(I)Z
    .locals 2
    .param p1, "subId"    # I

    .line 1084
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1086
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1087
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1088
    const/4 v1, 0x0

    return v1

    .line 1091
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->disableAllCAMultiDL(I)Z

    move-result v1

    return v1
.end method

.method public enableCAPlusBandWidthFilter(IZ)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .line 823
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 825
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 826
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    const/4 v1, 0x0

    return v1

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->enableCAPlusBandWidthFilter(IZ)Z

    move-result v1

    .line 831
    .local v1, "ret":Z
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v2, :cond_1

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCAPlusBandWidthFilter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 835
    :cond_1
    return v1
.end method

.method public get1xAdvancedEnabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "get1xAdvancedEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 426
    return v1

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 430
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 431
    return v1

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->get1xAdvancedEnabled(I)Z

    move-result v1

    return v1
.end method

.method public get4x4MimoEnabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "get4x4MimoEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1511
    return v1

    .line 1514
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1515
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1516
    return v1

    .line 1519
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->get4x4MimoEnabled(I)Z

    move-result v1

    return v1
.end method

.method public getActiveSingleSimSlot(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3380
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getActiveSingleSimSlot"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3382
    const/4 v0, -0x1

    return v0

    .line 3385
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 3387
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getActiveSingleSimSlot(I)I

    move-result v1

    return v1
.end method

.method public getBC10Enabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getBC10Enabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 387
    return v1

    .line 390
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 391
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    return v1

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBC10Enabled(I)Z

    move-result v1

    return v1
.end method

.method public getBandConfigBitMap(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1991
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getBandConfigBitMap"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1993
    return-object v1

    .line 1996
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1997
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1998
    return-object v1

    .line 2001
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v2

    .line 2002
    .local v2, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    if-nez v2, :cond_2

    .line 2003
    return-object v1

    .line 2006
    :cond_2
    new-instance v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->getLteConfigBytes()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->getSAConfigBytes()[B

    move-result-object v4

    .line 2007
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->getNSAConfigBytes()[B

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;-><init>([B[B[B)V

    .line 2009
    .local v1, "info":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v3, :cond_3

    .line 2010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBandConfig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LteBandConfigBitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;->getLteBandConfigBitmap()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;->getConfigString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SABandConfigBitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;->getSABandConfigBitmap()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;->getConfigString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NSABandConfigBitmap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;->getNSABandConfigBitmap()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$BandConfigInfo;->getConfigString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2016
    :cond_3
    return-object v1
.end method

.method public getBandPriorityList(ILjava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1413
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getBandPriorityList"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1415
    return-object v1

    .line 1418
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1419
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1420
    return-object v1

    .line 1423
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandPriorityList(I)[I

    move-result-object v1

    return-object v1
.end method

.method public getCABitmapForBand(IILjava/lang/String;)[B
    .locals 3
    .param p1, "primaryBandId"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1930
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCABitmapForBand"

    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1932
    return-object v1

    .line 1935
    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1936
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1937
    return-object v1

    .line 1940
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCABitmapForBand(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getCAEnable(IIILjava/lang/String;)Z
    .locals 6
    .param p1, "priBand"    # I
    .param p2, "secBand"    # I
    .param p3, "subId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, "result":Z
    invoke-static {p1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->isValidBand(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->isValidBand(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2038
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getCABitmapForBand(IILjava/lang/String;)[B

    move-result-object v1

    .line 2040
    .local v1, "enabledSecBands":[B
    if-eqz v1, :cond_2

    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCAEnable() Band"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " CA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2041
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2050
    add-int/lit8 v3, p2, -0x1

    div-int/lit8 v3, v3, 0x8

    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, -0x1

    rem-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    shl-int v4, v5, v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v2, v5

    :cond_1
    move v0, v2

    .line 2053
    :cond_2
    return v0

    .line 2034
    .end local v1    # "enabledSecBands":[B
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCAEnable() invalid input band priBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " secBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 2035
    return v2
.end method

.method public getCAMultiDL(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bandsCombo"    # Ljava/lang/String;

    .line 919
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCAMultiDL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCAMultiDL"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 922
    return v1

    .line 925
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 926
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 927
    return v1

    .line 931
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v2

    .line 932
    .local v2, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-eqz v2, :cond_3

    .line 933
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsDLCombo(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 935
    :cond_3
    return v1
.end method

.method public getCAMultiDLList(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 861
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    const-string v1, "getCAMultiDLList"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 864
    return-object v2

    .line 867
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 868
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 869
    return-object v2

    .line 873
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v1

    .line 874
    .local v1, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-eqz v1, :cond_3

    .line 875
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getDLList()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 877
    :cond_3
    return-object v2
.end method

.method public getCAMultiDLULList(ILjava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 888
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    const-string v1, "getCAMultiDLULList"

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    return-object v2

    .line 894
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 895
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 896
    return-object v2

    .line 900
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v1

    .line 901
    .local v1, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-eqz v1, :cond_3

    .line 902
    invoke-virtual {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->getDLULList()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 904
    :cond_3
    return-object v2
.end method

.method public getCAMultiUL(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "bandsCombo"    # Ljava/lang/String;

    .line 1005
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCAMultiUL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCAMultiUL"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1008
    return v1

    .line 1011
    :cond_1
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1012
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1013
    return v1

    .line 1017
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v2

    .line 1018
    .local v2, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-eqz v2, :cond_3

    .line 1019
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsULCombo(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1021
    :cond_3
    return v1
.end method

.method public getCDMADataRate(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2437
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCDMADataRate"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2439
    return v1

    .line 2442
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2443
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2444
    return v1

    .line 2447
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCDMADataRate(I)I

    move-result v1

    return v1
.end method

.method public getCDMAServiceOption(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2344
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCDMAServiceOption"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2346
    return v1

    .line 2349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2350
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2351
    return v1

    .line 2354
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCDMAServiceOption(I)I

    move-result v1

    return v1
.end method

.method public getCampedCsgInfo(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2154
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCampedCsgInfo"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    return-object v1

    .line 2159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2160
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2161
    return-object v1

    .line 2164
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCampedCsgInfo(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgInfo;

    move-result-object v1

    return-object v1
.end method

.method public getCdmaCallProcessingData(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2597
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaCallProcessingData"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2599
    return-object v1

    .line 2602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2603
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2604
    return-object v1

    .line 2607
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCdmaCallProcessingData(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CallProcessingData;

    move-result-object v1

    return-object v1
.end method

.method public getCdmaHybridMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2537
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaHybridMode"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2539
    return v1

    .line 2542
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2543
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2544
    return v1

    .line 2547
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCdmaHybridMode(I)I

    move-result v1

    return v1
.end method

.method public getCdmaRxDiversity(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2616
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaRxDiversity"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2618
    return v1

    .line 2621
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2622
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2623
    return v1

    .line 2626
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCdmaRxDiversity(I)I

    move-result v1

    return v1
.end method

.method public getCdmaSidNidPairs(ILjava/lang/String;)[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2496
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaSidNidPairs"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2498
    return-object v1

    .line 2501
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2502
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2503
    return-object v1

    .line 2506
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCdmaSidNidPairs(I)[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;

    move-result-object v1

    return-object v1
.end method

.method public getCdmaSysInfo(ILjava/lang/String;Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "infoCB"    # Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    .line 1145
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaSysInfo"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "onCdmaSysInfoResult exception"

    if-nez v0, :cond_0

    .line 1148
    :try_start_0
    invoke-interface {p3, v1}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 1155
    :cond_0
    const v0, 0x20000cc

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->writeOemHookReqHeader(I)[B

    move-result-object v0

    .line 1157
    .local v0, "oemReq":[B
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v3

    .line 1158
    .local v3, "phoneId":I
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1161
    :try_start_1
    invoke-interface {p3, v1}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1164
    goto :goto_1

    .line 1162
    :catch_1
    move-exception v1

    .line 1163
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1165
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 1168
    :cond_1
    new-instance v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;

    invoke-direct {v1, p0, p3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I

    .line 1208
    return-void
.end method

.method public getCurrentUiccCardProvisioningStatus(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 739
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentUiccCardProvisioningStatus subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCurrentUiccCardProvisioningStatus"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    const/4 v0, 0x0

    return v0

    .line 746
    :cond_1
    const/4 v0, 0x0

    .line 747
    .local v0, "subState":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotIndex(I)I

    move-result v1

    .line 748
    .local v1, "slotId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    return v0

    .line 753
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/codeaurora/internal/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 758
    :goto_0
    goto :goto_1

    .line 756
    :catch_0
    move-exception v2

    .line 757
    .local v2, "ex":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException @getCurrentUiccCardProvisioningStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 754
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 755
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException @getCurrentUiccCardProvisioningStatus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 760
    :goto_1
    sget-boolean v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentUiccStatus subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 761
    :cond_3
    return v0
.end method

.method public getDDTMDefaultPreference(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2237
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getDDTMDefaultPreference"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2239
    return v1

    .line 2242
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2243
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2244
    return v1

    .line 2247
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getDDTMDefaultPreference(I)I

    move-result v1

    return v1
.end method

.method public getDSSEnabled(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2986
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getDSSEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2988
    return v1

    .line 2991
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2992
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2993
    return v1

    .line 2996
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getDSSEnabled(I)B

    move-result v2

    .line 2997
    .local v2, "res":B
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public getEhrpdEnabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1838
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getEhrpdEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1840
    return v1

    .line 1843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1844
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1845
    return v1

    .line 1848
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getEhrpdEnabled(I)Z

    move-result v1

    return v1
.end method

.method public getEmergencyNumber(IILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;
    .locals 3
    .param p1, "emergencyAddress"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 2731
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getMobilePRev"

    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2733
    return-object v1

    .line 2736
    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2737
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2738
    return-object v1

    .line 2741
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getEmergencyNumber(II)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EmergencyNumber;

    move-result-object v1

    return-object v1
.end method

.method public getEndcEnabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3315
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getEndcEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3317
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 3318
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrDataIconTypes:[I

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 3319
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mEndcStatus:[Z

    aget-boolean v1, v1, v0

    return v1

    .line 3322
    .end local v0    # "phoneId":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getEvdoData(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2577
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getEvdoData"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2579
    return-object v1

    .line 2582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2583
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2584
    return-object v1

    .line 2587
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getEvdoData(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$EvdoData;

    move-result-object v1

    return-object v1
.end method

.method public getEvdoRevisionOption(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2388
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getEvdoRevisionOption"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2390
    return v1

    .line 2393
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2394
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2395
    return v1

    .line 2398
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getEvdoRevisionOption(I)I

    move-result v1

    return v1
.end method

.method public getFDDTM9Enabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1623
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getFDDTM9Enabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1625
    return v1

    .line 1628
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1629
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1630
    return v1

    .line 1633
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getFDDTM9Enabled(I)Z

    move-result v1

    return v1
.end method

.method public getForNIDReg(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2316
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getForNIDReg"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2318
    return v1

    .line 2321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2322
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2323
    return v1

    .line 2326
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getForNIDReg(I)Z

    move-result v1

    return v1
.end method

.method public getForSIDReg(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2296
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getForSIDReg"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2298
    return v1

    .line 2301
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2302
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2303
    return v1

    .line 2306
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getForSIDReg(I)Z

    move-result v1

    return v1
.end method

.method public getHdrRxDiversity(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2653
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getCdmaHybridMode"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2655
    return v1

    .line 2658
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2659
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2660
    return v1

    .line 2663
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getHdrRxDiversity(I)I

    move-result v1

    return v1
.end method

.method public getHomeSIDReg(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2276
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getHomeSIDReg"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2278
    return v1

    .line 2281
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2282
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2283
    return v1

    .line 2286
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getHomeSIDReg(I)Z

    move-result v1

    return v1
.end method

.method public getLTEBandConfigBitmap(ILjava/lang/String;)[B
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1965
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLTEBandConfigBitmap"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    return-object v1

    .line 1970
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1971
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1972
    return-object v1

    .line 1975
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v2

    .line 1976
    .local v2, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    if-nez v2, :cond_2

    .line 1977
    return-object v1

    .line 1980
    :cond_2
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->getLteConfigBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getLTEBandEnable(IILjava/lang/String;)Z
    .locals 3
    .param p1, "bandId"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLTEBandEnable"

    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1325
    return v1

    .line 1328
    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1329
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1330
    return v1

    .line 1333
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getLTEBandEnable(II)Z

    move-result v1

    return v1
.end method

.method public getLTERRCState(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1280
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLTERRCState"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xff

    if-nez v0, :cond_0

    .line 1282
    return v1

    .line 1285
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1286
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1287
    return v1

    .line 1290
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getLTERRCState(I)I

    move-result v1

    return v1
.end method

.method public getLteAvailableFileRecords(ILjava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 1876
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLteAvailableFile"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1878
    return-object v1

    .line 1881
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1882
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1883
    return-object v1

    .line 1886
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getLteAvailableFileRecords(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getLteBsrTimer(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1800
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLteBsrTimer"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1802
    return v1

    .line 1805
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1806
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1807
    return v1

    .line 1810
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getLteBsrTimer(I)I

    move-result v1

    return v1
.end method

.method public getLteData(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteData;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1302
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLteData"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    return-object v1

    .line 1307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1308
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1309
    return-object v1

    .line 1312
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getLteData(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteData;

    move-result-object v1

    return-object v1
.end method

.method public getLteErrors(ILjava/lang/String;)Ljava/util/List;
    .locals 3
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

    .line 2872
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getLteErrors"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2874
    return-object v1

    .line 2877
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2878
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2879
    return-object v1

    .line 2882
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    aget-object v1, v1, v0

    monitor-enter v1

    .line 2883
    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    aget-object v2, v2, v0

    monitor-exit v1

    return-object v2

    .line 2884
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getMaxBsrTimer(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1740
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getMaxBsrTimer"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1742
    return v1

    .line 1745
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1746
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1747
    return v1

    .line 1750
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getMaxBsrTimer(I)I

    move-result v1

    return v1
.end method

.method public getMaxBsrTimerStages(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1761
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getMaxBsrTimerStages"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1763
    return v1

    .line 1766
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1767
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1768
    return v1

    .line 1771
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getMaxBsrTimerStages(I)I

    move-result v1

    return v1
.end method

.method public getMipErrorCode(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2174
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getMipErrorCode"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2176
    return v1

    .line 2179
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2180
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2181
    return v1

    .line 2184
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getMipErrorCode(I)I

    move-result v1

    return v1
.end method

.method public getMobilePRev(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2690
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getMobilePRev"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const v1, 0xffff

    if-nez v0, :cond_0

    .line 2692
    return v1

    .line 2695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2696
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2697
    return v1

    .line 2700
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getMobilePRev(I)I

    move-result v1

    return v1
.end method

.method public getNRDeviceType(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3033
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getNRDeviceType"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3035
    return v1

    .line 3038
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3039
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3040
    return v1

    .line 3043
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v2

    .line 3044
    .local v2, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    if-nez v2, :cond_2

    .line 3045
    return v1

    .line 3047
    :cond_2
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->getNRDeviceType()I

    move-result v1

    .line 3048
    .local v1, "type":I
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v3, :cond_3

    .line 3049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNRDeviceType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3051
    :cond_3
    return v1
.end method

.method public getNRModeBitMask(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3065
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getNRModeBitMask"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3067
    return v1

    .line 3070
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3071
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3072
    return v1

    .line 3075
    :cond_1
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getBandClassSupport(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;

    move-result-object v2

    .line 3076
    .local v2, "bc":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;
    if-nez v2, :cond_2

    .line 3077
    return v1

    .line 3080
    :cond_2
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvBandConfigDataType;->getNRModeBitMask()I

    move-result v1

    .line 3081
    .local v1, "bitMask":I
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v3, :cond_3

    .line 3082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNRModeBitMask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3084
    :cond_3
    return v1
.end method

.method public getNamInfo(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2771
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getNamInfo"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2773
    return-object v1

    .line 2776
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2777
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2778
    return-object v1

    .line 2781
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getNamInfo(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNextLteScan(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1700
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getNextLteScan"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1702
    return v1

    .line 1705
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1706
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1707
    return v1

    .line 1710
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getNextLteScan(I)I

    move-result v1

    return v1
.end method

.method public getNrDataIconType(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3271
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getNrDataIconType"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 3274
    .local v0, "phoneId":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrDataIconTypes:[I

    array-length v2, v1

    if-gt v0, v2, :cond_0

    .line 3275
    aget v1, v1, v0

    return v1

    .line 3278
    .end local v0    # "phoneId":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNrModeDisabled(ILjava/lang/String;)I
    .locals 7
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3351
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getNrModeDisabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3353
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3354
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3356
    return v1

    .line 3359
    :cond_0
    const v2, 0x50048

    .line 3360
    .local v2, "reqId":I
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 3361
    .local v3, "data":[B
    const/4 v4, 0x1

    new-array v4, v4, [B

    .line 3362
    .local v4, "respData":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 3363
    .local v5, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3364
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3365
    invoke-virtual {p0, v0, v3, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v6

    if-ltz v6, :cond_1

    .line 3366
    const/4 v1, 0x0

    aget-byte v1, v4, v1

    return v1

    .line 3369
    .end local v0    # "phoneId":I
    .end local v2    # "reqId":I
    .end local v3    # "data":[B
    .end local v4    # "respData":[B
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    :cond_1
    return v1
.end method

.method public getPlmnNameFromSE13Table(IIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "subId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 772
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlmnNameFromSE13Table - mcc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mnc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 776
    :cond_0
    const-string v0, ""

    .line 777
    .local v0, "plmnName":Ljava/lang/String;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "getPlmnNameFromSE13Table"

    invoke-static {v1, p3, p4, v2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 779
    return-object v0

    .line 782
    :cond_1
    invoke-virtual {p0, p3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v1

    .line 783
    .local v1, "phoneId":I
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 784
    return-object v0

    .line 787
    :cond_2
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    .line 788
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 789
    .local v2, "mccmncBuf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 790
    int-to-short v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 791
    int-to-short v3, p2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 792
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    const v4, 0xa0006

    const/16 v5, 0x32

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getResponseWithSimpleHeader(IILjava/nio/ByteBuffer;I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;

    move-result-object v3

    .line 795
    .local v3, "resp":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    if-eqz v3, :cond_3

    .line 796
    invoke-static {v3}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;->toLiteralString(Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .end local v2    # "mccmncBuf":Ljava/nio/ByteBuffer;
    .end local v3    # "resp":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvGenericDataType;
    :cond_3
    return-object v0
.end method

.method public getProvisionUpdateRequest(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getProvisionUpdateRequest"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 579
    return v1

    .line 582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 583
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 584
    return v1

    .line 587
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getProvisionUpdateRequest(I)Z

    move-result v1

    return v1
.end method

.method public getQAMDLEnabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1547
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getQAMDLEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1549
    return v1

    .line 1552
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1553
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1554
    return v1

    .line 1557
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->get256QAMDLEnabled(I)Z

    move-result v1

    return v1
.end method

.method public getQAMULEnabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1585
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getQAMDULEnabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1587
    return v1

    .line 1590
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1591
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1592
    return v1

    .line 1595
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->get64QAMULEnabled(I)Z

    move-result v1

    return v1
.end method

.method public getSO68Enabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSO68Enabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    return v1

    .line 467
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 468
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    return v1

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSO68Enabled(I)Z

    move-result v1

    return v1
.end method

.method public getSO73COP0Enabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 500
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSO73COP0Enabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 502
    return v1

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 506
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    return v1

    .line 510
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSO73COP0Enabled(I)Z

    move-result v1

    return v1
.end method

.method public getSO73COP1To7Enabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSO73COP1To7Enabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 540
    return v1

    .line 543
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 544
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 545
    return v1

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSO73COP1To7Enabled(I)Z

    move-result v1

    return v1
.end method

.method public getSecuritySimLockData(ILjava/lang/String;)[B
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2966
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSecuritySimLockData"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2968
    return-object v1

    .line 2971
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2972
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2973
    return-object v1

    .line 2976
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSecuritySimLockData(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getSimLock(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSimLock"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1453
    return v1

    .line 1456
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1457
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1458
    return v1

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSimLock(I)I

    move-result v1

    return v1
.end method

.method public getSimNonce(ILjava/lang/String;)[B
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSimNonce"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    return-object v1

    .line 1494
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1495
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1496
    return-object v1

    .line 1499
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSimNonce(I)[B

    move-result-object v1

    return-object v1
.end method

.method public getSlotCycleIndex(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2214
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSlotCycleIndex"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2216
    return v1

    .line 2219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2220
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2221
    return v1

    .line 2224
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSlotCycleIndex(I)I

    move-result v1

    return v1
.end method

.method public getSlotCycleMode(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2194
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSlotCycleMode"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2196
    return v1

    .line 2199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2200
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2201
    return v1

    .line 2204
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSlotCycleMode(I)Z

    move-result v1

    return v1
.end method

.method public getSprintVoiceServiceOption(ILjava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2814
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getSprintVoiceServiceOption"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2816
    return-object v1

    .line 2819
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2820
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2821
    return-object v1

    .line 2824
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSprintVoiceServiceOption(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;

    move-result-object v1

    return-object v1
.end method

.method public getSubsidyLockDetail(Ljava/lang/String;)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1237
    const v0, 0x7fffffff

    .line 1238
    .local v0, "subId":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "getSubsidyLockDetail"

    invoke-static {v1, v0, p1, v2, v3}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    .line 1240
    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1242
    return-object v2

    .line 1245
    :cond_0
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v1, :cond_1

    .line 1246
    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1249
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getSubsidyLockDetail(I)Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SubsidyLockDetail;

    move-result-object v1

    return-object v1
.end method

.method public getTDDTM9Enabled(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 1661
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getTDDTM9Enabled"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1663
    return v1

    .line 1666
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1667
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1668
    return v1

    .line 1671
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getTDDTM9Enabled(I)Z

    move-result v1

    return v1
.end method

.method public getVoiceDomainSetting(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 2920
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "getVoiceDomainSetting"

    invoke-static {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2922
    return v1

    .line 2925
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2926
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2927
    return v1

    .line 2930
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getVoiceDomainSetting(I)I

    move-result v1

    return v1
.end method

.method public handleOemHookIndication(I[B)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "response"    # [B

    .line 3142
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mOemHookIndicationProcess:Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/internal/telephony/QcomOemHookIndicationProcess;->processUnsolOemhookIndication(I[B)V

    .line 3143
    return-void
.end method

.method invokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "motoOemCB"    # Lcom/motorola/android/internal/telephony/IMotoOemCB;

    .line 3237
    const/4 v0, 0x0

    .line 3239
    .local v0, "returnValue":I
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mServiceReady:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_1

    .line 3240
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v1, :cond_0

    .line 3241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeOemRilRequestRaw:phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oemReq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3242
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3241
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3245
    :cond_0
    new-instance v1, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;

    invoke-direct {v1, p3}, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;-><init>(Lcom/motorola/android/internal/telephony/IMotoOemCB;)V

    .line 3246
    .local v1, "OemHookcb":Lcom/motorola/android/internal/telephony/MotoOemHookCallback;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v2, p2, v1, p1}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRawAsync([BLcom/qualcomm/qcrilhook/IOemHookCallback;I)V

    .line 3247
    .end local v1    # "OemHookcb":Lcom/motorola/android/internal/telephony/MotoOemHookCallback;
    goto :goto_0

    .line 3248
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3249
    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, -0x1

    .line 3255
    :cond_2
    :goto_0
    goto :goto_1

    .line 3251
    :catch_0
    move-exception v1

    .line 3252
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "sendOemRilRequestRaw: Runtime Exception"

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3253
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v0

    .line 3254
    if-lez v0, :cond_3

    mul-int/lit8 v0, v0, -0x1

    .line 3258
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    if-gez v0, :cond_4

    .line 3260
    :try_start_1
    invoke-interface {p3}, Lcom/motorola/android/internal/telephony/IMotoOemCB;->onOemHookException()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3263
    goto :goto_2

    .line 3261
    :catch_1
    move-exception v1

    .line 3262
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v2, "RemoteException caught for motoOemCB!"

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3266
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_2
    return v0
.end method

.method invokeOemRilRequestRawForPhone(I[B[B)I
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B

    .line 3208
    const/4 v0, 0x0

    .line 3211
    .local v0, "returnValue":I
    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mServiceReady:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    if-eqz v1, :cond_3

    .line 3212
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "invokeOemRilRequestRawForSubscriber:phoneId = "

    if-eqz v1, :cond_0

    .line 3213
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oemReq = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3214
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3213
    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3217
    :cond_0
    if-nez p3, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [B

    goto :goto_0

    :cond_1
    move-object v1, p3

    .line 3218
    .local v1, "rspData":[B
    :goto_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mQcrilMsgService:Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    invoke-interface {v3, p2, v1, p1}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->sendOemRilRequestRaw([B[BI)I

    move-result v3

    move v0, v3

    .line 3219
    sget-boolean v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v3, :cond_2

    .line 3220
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oemResp = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3221
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3220
    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3223
    .end local v1    # "rspData":[B
    :cond_2
    goto :goto_1

    .line 3224
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 3225
    if-lez v0, :cond_4

    mul-int/lit8 v0, v0, -0x1

    .line 3231
    :cond_4
    :goto_1
    goto :goto_2

    .line 3227
    :catch_0
    move-exception v1

    .line 3228
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "sendOemRilRequestRaw: Runtime Exception"

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3229
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v0

    .line 3230
    if-lez v0, :cond_5

    mul-int/lit8 v0, v0, -0x1

    .line 3233
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    :goto_2
    return v0
.end method

.method public notifyEndcStatusChanged(IZ)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 3326
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mEndcStatus:[Z

    aput-boolean p2, v0, p1

    .line 3327
    invoke-super {p0, p1, p2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->notifyEndcStatusChanged(IZ)V

    .line 3328
    return-void
.end method

.method public notifyNrBearerAllocationChanged(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "bearer"    # I

    .line 3289
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrBearers:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_3

    .line 3291
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.verizon.provider.DATA_ACTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3292
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3293
    const-string v1, "com.verizon.provider.NETWORK_TYPE"

    const-string v2, "5GNSA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3295
    if-lez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "com.verizon.provider.IS_ACTIVE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3297
    sget-boolean v1, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3298
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3300
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrBearers:[I

    aput p2, v0, p1

    .line 3301
    invoke-super {p0, p1, p2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->notifyNrBearerAllocationChanged(II)V

    .line 3302
    return-void
.end method

.method public notifyNrDataIconTypeChanged(II)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iconType"    # I

    .line 3283
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrDataIconTypes:[I

    aput p2, v0, p1

    .line 3284
    invoke-super {p0, p1, p2}, Lcom/motorola/android/internal/telephony/MotoExtTelephonyServiceBase;->notifyNrDataIconTypeChanged(II)V

    .line 3285
    return-void
.end method

.method public radioConfigReset(II)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "resetType"    # I

    .line 624
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 626
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 627
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    const/4 v1, 0x0

    return v1

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->radioConfigReset(II)Z

    move-result v1

    return v1
.end method

.method public set1xAdvancedEnabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 445
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 447
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 448
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const/4 v1, 0x0

    return v1

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->set1xAdvancedEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public set4x4MimoEnabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1530
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1532
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1533
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1534
    const/4 v1, 0x0

    return v1

    .line 1537
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->set4x4MimoEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setActiveSingleSimSlot(II)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "slotType"    # I

    .line 3397
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3399
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 3401
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setActiveSingleSimSlot(II)Z

    move-result v1

    .line 3402
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 3403
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3407
    .local v2, "identity":J
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->setSimPowerState(ILandroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3410
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3411
    goto :goto_0

    .line 3410
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3411
    throw v4

    .line 3413
    .end local v2    # "identity":J
    :cond_0
    :goto_0
    return v1
.end method

.method public setAkeyInfo(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "akey"    # Ljava/lang/String;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2478
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2480
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2481
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2482
    return v2

    .line 2485
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x1a

    if-le v1, v3, :cond_1

    return v2

    .line 2486
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setAkeyInfo(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setBC10Enabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 407
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 409
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 410
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const/4 v1, 0x0

    return v1

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setBC10Enabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setBandPriorityList(I[I)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "priList"    # [I

    .line 1434
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1436
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1437
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1438
    const/4 v1, 0x0

    return v1

    .line 1441
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setBandPriorityList(I[I)Z

    move-result v1

    return v1
.end method

.method public setCAEnable(IIIZ)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "priBand"    # I
    .param p3, "secBand"    # I
    .param p4, "enable"    # Z

    .line 2067
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2069
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2070
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2071
    return v2

    .line 2074
    :cond_0
    invoke-static {p2}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->isValidBand(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p3}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->isValidBand(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 2079
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->getCABitmapForBand(II)[B

    move-result-object v1

    .line 2081
    .local v1, "enabledSecBands":[B
    if-eqz v1, :cond_4

    array-length v3, v1

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 2085
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCAEnable() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " old CA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2085
    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2094
    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 2095
    add-int/lit8 v3, p3, -0x1

    div-int/2addr v3, v4

    aget-byte v5, v1, v3

    add-int/lit8 v6, p3, -0x1

    rem-int/2addr v6, v4

    shl-int/2addr v2, v6

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0

    .line 2097
    :cond_3
    add-int/lit8 v3, p3, -0x1

    div-int/2addr v3, v4

    aget-byte v5, v1, v3

    add-int/lit8 v6, p3, -0x1

    rem-int/2addr v6, v4

    shl-int/2addr v2, v6

    not-int v2, v2

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 2100
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new CA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->byteArrToStringLog([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 2101
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0, p2, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setCABitmapForBand(II[B)Z

    move-result v2

    return v2

    .line 2082
    :cond_4
    :goto_1
    return v2

    .line 2075
    .end local v1    # "enabledSecBands":[B
    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCAEnable() invalid input band priBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " secBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 2076
    return v2
.end method

.method public setCAMultiDL(ILjava/lang/String;ZLjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # Z
    .param p4, "bandsCombo"    # Ljava/lang/String;

    .line 951
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCAMultiDL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 954
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 955
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 956
    return v2

    .line 960
    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v1

    .line 961
    .local v1, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-nez v1, :cond_2

    .line 962
    return v2

    .line 964
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 965
    invoke-virtual {v1, p4, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsDLCombo(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 966
    if-eqz p3, :cond_3

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling an existing combo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 969
    return v4

    .line 972
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling an existing combo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 973
    invoke-virtual {v1, p4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->removeDLCombo(Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :cond_4
    if-eqz p3, :cond_6

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling a non-existing combo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v1, p4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->appendDLCombo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 980
    return v2

    .line 988
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->writeCaBwCombo(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;)Z

    move-result v2

    .line 989
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyCAEnableStatusChanged()V

    .line 990
    return v2

    .line 984
    .end local v2    # "result":Z
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling a non-existing combo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 985
    return v4
.end method

.method public setCAMultiUL(ILjava/lang/String;ZLjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "status"    # Z
    .param p4, "bandsCombo"    # Ljava/lang/String;

    .line 1037
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCAMultiUL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1040
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1041
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1042
    return v2

    .line 1046
    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getAllCAConfigList(I)Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;

    move-result-object v1

    .line 1047
    .local v1, "caBwCombo":Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;
    if-nez v1, :cond_2

    .line 1048
    return v2

    .line 1050
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    .line 1051
    const/4 v2, 0x1

    invoke-virtual {v1, p4, v2}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->containsULCombo(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1052
    if-eqz p3, :cond_3

    .line 1054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabling an existing combo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1055
    return v2

    .line 1058
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling an existing combo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v1, p4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->removeULCombo(Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_4
    if-eqz p3, :cond_5

    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling a non-existing combo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v1, p4}, Lcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;->appendULCombo(Ljava/lang/String;)V

    .line 1072
    :goto_0
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v2, v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->writeCaBwCombo(ILcom/motorola/android/internal/telephony/QcomNvInfo$NvLTECABWClassComboL;)Z

    move-result v2

    .line 1073
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyCAEnableStatusChanged()V

    .line 1074
    return v2

    .line 1068
    .end local v2    # "result":Z
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling a non-existing combo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1069
    return v2
.end method

.method public setCDMADataRate(IILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "rate"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2457
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2459
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2460
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2461
    return v2

    .line 2464
    :cond_0
    if-ltz p2, :cond_2

    const/4 v1, 0x6

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 2468
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setCDMADataRate(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2466
    :cond_2
    :goto_0
    return v2
.end method

.method public setCDMAServiceOption(IILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "serviceOption"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2364
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2366
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2367
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2368
    return v2

    .line 2371
    :cond_0
    if-ltz p2, :cond_2

    const/4 v1, 0x6

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 2375
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setCDMAServiceOption(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2373
    :cond_2
    :goto_0
    return v2
.end method

.method public setCdmaHybridMode(IILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2556
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2558
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2559
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2560
    return v2

    .line 2563
    :cond_0
    if-ltz p2, :cond_2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 2567
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setCdmaHybridMode(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2565
    :cond_2
    :goto_0
    return v2
.end method

.method public setCdmaRxDiversity(II)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "value"    # I

    .line 2637
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2639
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2640
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2641
    const/4 v1, 0x0

    return v1

    .line 2644
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setCdmaRxDiversity(II)Z

    move-result v1

    return v1
.end method

.method public setCdmaSidNidPairs(I[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;Ljava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "pairs"    # [Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2516
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2518
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2519
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2520
    return v2

    .line 2523
    :cond_0
    if-nez p2, :cond_1

    return v2

    .line 2524
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setCdmaSidNidPairs(I[Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSidNidPair;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setDDTMDefaultPreference(IILjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "setting"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2259
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2261
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2262
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2263
    const/4 v1, 0x0

    return v1

    .line 2266
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setDDTMDefaultPreference(IILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setDSSEnabled(IZ)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 3008
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3010
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3011
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3012
    const/4 v1, 0x0

    return v1

    .line 3016
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moto_dss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3017
    nop

    .line 3016
    invoke-static {v1, v2, p2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3018
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setDSSEnabled(IB)Z

    move-result v1

    return v1
.end method

.method public setEhrpdEnabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1859
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1861
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1862
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1863
    const/4 v1, 0x0

    return v1

    .line 1866
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setEhrpdEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setEmergencyNumber(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "emergencyAddress"    # I
    .param p4, "spcLockCode"    # Ljava/lang/String;

    .line 2754
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2756
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2757
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2758
    const/4 v1, 0x0

    return v1

    .line 2761
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setEmergencyNumber(ILjava/lang/String;ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setEndcEnabled(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 3306
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3307
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrStateManager:Lcom/motorola/android/internal/telephony/NrStateManager;

    if-eqz v0, :cond_0

    .line 3308
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mSubCtrl:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 3309
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNrStateManager:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/NrStateManager;->setEndcEnabled(IZ)V

    .line 3311
    .end local v0    # "phoneId":I
    :cond_0
    return-void
.end method

.method public setEvdoRevisionOption(IILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "revOption"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2408
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2410
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2411
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2412
    return v2

    .line 2415
    :cond_0
    if-ltz p2, :cond_2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 2419
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setEvdoRevisionOption(IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 2417
    :cond_2
    :goto_0
    return v2
.end method

.method public setFDDTM9Enabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1644
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1646
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1647
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    const/4 v1, 0x0

    return v1

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setFDDTM9Enabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setHdrRxDiversity(II)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "value"    # I

    .line 2674
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2676
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2677
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2678
    const/4 v1, 0x0

    return v1

    .line 2681
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setHdrRxDiversity(II)Z

    move-result v1

    return v1
.end method

.method public setLTEBandEnable(IIZ)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "bandId"    # I
    .param p3, "enable"    # Z

    .line 1345
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1347
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1348
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1349
    const/4 v1, 0x0

    return v1

    .line 1352
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setLTEBandEnable(IIZ)Z

    move-result v1

    .line 1353
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 1354
    const-string v2, "LTE"

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyNVChanges(Ljava/lang/String;)V

    .line 1356
    :cond_1
    return v1
.end method

.method public setLTEBandsEnableDisable(I[I[I)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "enableBands"    # [I
    .param p3, "disableBands"    # [I

    .line 1368
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1370
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1371
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1372
    const/4 v1, 0x0

    return v1

    .line 1375
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setLTEBandsEnableDisable(I[I[I)Z

    move-result v1

    .line 1376
    .local v1, "ret":Z
    if-eqz v1, :cond_1

    .line 1377
    const-string v2, "LTE"

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyNVChanges(Ljava/lang/String;)V

    .line 1379
    :cond_1
    return v1
.end method

.method public setLine1NumberToSim(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 3432
    const-string v0, "com.motorola.msimsettings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3433
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setLine1NumberToSim : false because not from msimsettings"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3434
    :cond_0
    return v1

    .line 3436
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3438
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setLine1NumberToSim]+ subId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; number = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3439
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_3

    .line 3440
    const-string v0, "[setLine1NumberToSim]- number fail"

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3441
    return v1

    .line 3445
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3447
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v2

    .line 3448
    .local v2, "alphaTag":Ljava/lang/String;
    const/16 v3, 0x7d5

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v3, v4, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3448
    return v3

    .line 3451
    .end local v2    # "alphaTag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3452
    throw v2
.end method

.method public setLteBsrTimer(IILjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "timer"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 1821
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1823
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1824
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1825
    const/4 v1, 0x0

    return v1

    .line 1828
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setLteBsrTimer(IILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected setLteError(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "lteError"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;

    .line 2888
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    aget-object v0, v0, p1

    monitor-enter v0

    .line 2889
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 2890
    .local v1, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;>;"
    const/4 v2, 0x0

    .line 2891
    .local v2, "match":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2892
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;

    .line 2893
    .local v3, "e":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;
    iget-object v4, v3, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;->apnName:Ljava/lang/String;

    iget-object v5, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;->apnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2895
    invoke-interface {v1, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 2896
    const/4 v2, 0x1

    .line 2897
    goto :goto_1

    .line 2899
    .end local v3    # "e":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;
    :cond_0
    goto :goto_0

    .line 2900
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 2901
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mLteErrorList:[Ljava/util/List;

    aget-object v3, v3, p1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2903
    .end local v1    # "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;>;"
    .end local v2    # "match":Z
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2905
    invoke-virtual {p0, p1, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyLteErrorForPhone(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$LteError;)V

    .line 2906
    return-void

    .line 2903
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMaxBsrTimerStages(II)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "stages"    # I

    .line 1782
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1784
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1785
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1786
    const/4 v1, 0x0

    return v1

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setMaxBsrTimerStages(II)Z

    move-result v1

    return v1
.end method

.method public setMobilePRev(IILjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "PRevValue"    # I
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2712
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2714
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2715
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2716
    const/4 v1, 0x0

    return v1

    .line 2719
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setMobilePRev(IILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setNRBandsEnableDisable(I[I[I[I[I)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "enableSABands"    # [I
    .param p3, "disableSABands"    # [I
    .param p4, "enableNSABands"    # [I
    .param p5, "disableNSABands"    # [I

    .line 1395
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1397
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v6

    .line 1398
    .local v6, "phoneId":I
    invoke-virtual {p0, v6}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    return v0

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    move v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setNRBandsEnableDisable(I[I[I[I[I)Z

    move-result v0

    return v0
.end method

.method public setNamInfo(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;Ljava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "namInfo"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2791
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2793
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2794
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2795
    const/4 v1, 0x0

    return v1

    .line 2798
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setNamInfo(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaNAMInfo;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setNextLteScan(II)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "timer"    # I

    .line 1723
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1725
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1726
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1727
    const/4 v1, 0x0

    return v1

    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setNextLteScan(II)Z

    move-result v1

    return v1
.end method

.method public setNrModeDisabled(II)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "mode"    # I

    .line 3332
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3333
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3334
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3336
    return-void

    .line 3339
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moto_nr_mode_disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/motorola/android/provider/MotorolaSettings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3341
    const v1, 0x50049

    .line 3342
    .local v1, "reqId":I
    const/16 v2, 0x9

    new-array v2, v2, [B

    .line 3343
    .local v2, "data":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3344
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3345
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    int-to-byte v5, p2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 3346
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    .line 3347
    return-void
.end method

.method public setProvisionUpdateDoneRequest(IB)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "carrierId"    # B

    .line 602
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 604
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 605
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 606
    const/4 v1, 0x0

    return v1

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setProvisionUpdateRequest(IB)Z

    move-result v1

    return v1
.end method

.method public setQAMDLEnabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1568
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1570
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1571
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1572
    const/4 v1, 0x0

    return v1

    .line 1575
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->set256QAMDLEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setQAMULEnabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1606
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1608
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1609
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1610
    const/4 v1, 0x0

    return v1

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->set64QAMULEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setSO68Enabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 483
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 485
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 486
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    const/4 v1, 0x0

    return v1

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setSO68Enabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setSO73COP0Enabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 521
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 523
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 524
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    const/4 v1, 0x0

    return v1

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setSO73COP0Enabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setSO73COP1To7Enabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 559
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 561
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 562
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    const/4 v1, 0x0

    return v1

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setSO73COP1To7Enabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setSimLock(I[B)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "lock"    # [B

    .line 1472
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1474
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1475
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    const/4 v1, 0x0

    return v1

    .line 1479
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setSimLock(I[B)Z

    move-result v1

    return v1
.end method

.method public setSprintVoiceServiceOption(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "serviceOption"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;
    .param p3, "spcLockCode"    # Ljava/lang/String;

    .line 2844
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2846
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2847
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2848
    return v2

    .line 2851
    :cond_0
    iget v1, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homePageVoice:I

    if-ltz v1, :cond_2

    iget v1, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homePageVoice:I

    const/16 v3, 0x8

    if-gt v1, v3, :cond_2

    iget v1, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homeOrigVoice:I

    if-ltz v1, :cond_2

    iget v1, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->homeOrigVoice:I

    if-gt v1, v3, :cond_2

    iget v1, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->roamOrigVoice:I

    if-ltz v1, :cond_2

    iget v1, p2, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;->roamOrigVoice:I

    if-le v1, v3, :cond_1

    goto :goto_0

    .line 2860
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setSprintVoiceServiceOption(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$SprintCDMAVoiceServiceOption;)Z

    move-result v1

    return v1

    .line 2857
    :cond_2
    :goto_0
    return v2
.end method

.method public setTDDTM9Enabled(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 1682
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1684
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1685
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1686
    const/4 v1, 0x0

    return v1

    .line 1689
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setTDDTM9Enabled(IZ)Z

    move-result v1

    return v1
.end method

.method public setVoiceDomainSetting(II)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "setting"    # I

    .line 2945
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 2947
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 2948
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2949
    return v2

    .line 2952
    :cond_0
    if-ltz p2, :cond_2

    const/4 v1, 0x3

    if-le p2, v1, :cond_1

    goto :goto_0

    .line 2957
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->setVoiceDomainSetting(II)Z

    move-result v1

    return v1

    .line 2954
    :cond_2
    :goto_0
    return v2
.end method

.method public supplyIccDepersonalization(ILjava/lang/String;ILcom/motorola/android/internal/telephony/IMotoDepersoCB;)V
    .locals 5
    .param p1, "lockType"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "callback"    # Lcom/motorola/android/internal/telephony/IMotoDepersoCB;

    .line 1111
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1113
    invoke-virtual {p0, p3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 1115
    .local v0, "phoneId":I
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;

    invoke-direct {v2, p0, p4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/motorola/android/internal/telephony/IMotoDepersoCB;)V

    .line 1126
    .local v2, "qcCallback":Lorg/codeaurora/internal/IDepersoResCallback;
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid phoenId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1128
    invoke-interface {p4, v1, v0}, Lcom/motorola/android/internal/telephony/IMotoDepersoCB;->onDepersoResult(II)V

    .line 1129
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getIExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p2, v4, v2, v0}, Lorg/codeaurora/internal/IExtTelephony;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    .end local v2    # "qcCallback":Lorg/codeaurora/internal/IDepersoResCallback;
    goto :goto_0

    .line 1134
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception @supplyIccDepersonalization"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1137
    :try_start_1
    invoke-interface {p4, v1, v0}, Lcom/motorola/android/internal/telephony/IMotoDepersoCB;->onDepersoResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1140
    goto :goto_0

    .line 1138
    :catch_1
    move-exception v1

    .line 1139
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException @IDepersoResCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1142
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unlockDevice(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;)I
    .locals 1
    .param p1, "unlockInfo"    # Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;

    .line 1264
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 1265
    const/16 v0, 0x7d4

    invoke-direct {p0, v0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public vendorInvokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "motoOemCB"    # Lcom/motorola/android/internal/telephony/IMotoOemCB;

    .line 3121
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3123
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendorInvokeOemRilRequestRawAsync: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3126
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3128
    const/4 v1, -0x1

    return v1

    .line 3131
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawAsync(I[BLcom/motorola/android/internal/telephony/IMotoOemCB;)I

    move-result v1

    return v1
.end method

.method public vendorInvokeOemRilRequestRawSync(I[B[B)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "oemReq"    # [B
    .param p3, "oemResp"    # [B

    .line 3098
    invoke-virtual {p0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->enforceModifyPermission()V

    .line 3100
    sget-boolean v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendorInvokeOemRilRequestRawSync: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 3103
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid phoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3105
    const/4 v1, -0x1

    return v1

    .line 3108
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->invokeOemRilRequestRawForPhone(I[B[B)I

    move-result v1

    return v1
.end method

.method public verifyMsl(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "verifyMsl"

    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 643
    return v1

    .line 646
    :cond_0
    invoke-virtual {p0, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhoneId(I)I

    move-result v0

    .line 647
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->validatePhoneId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    return v1

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mNvManager:Lcom/motorola/android/internal/telephony/QcomNvManager;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->verifyMsl(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method
