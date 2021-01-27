.class Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;
.super Ljava/lang/Object;
.source "QcomMotoExtTelephonyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcrilMsgTunnelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V
    .locals 0

    .line 3165
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
    .param p2, "x1"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;

    .line 3165
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 3168
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v1, "QcrilMsgTunnel Service connected"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 3169
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {p2}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$602(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 3170
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$600(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3171
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v1, "QcrilMsgTunnelService Connect Failed (onServiceConnected)"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 3173
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$700()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3175
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$800(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3176
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$600(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$900(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)[Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2, v0}, Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;->setOnUnsolOemHookRaw(Lcom/motorola/android/internal/telephony/IMotoOemHookIndication;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3179
    goto :goto_1

    .line 3177
    :catch_0
    move-exception v1

    .line 3178
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setOnUnsolOemHookRaw i ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3173
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3181
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mServiceReady:Z

    .line 3184
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 3188
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v1, "The connection to the service got disconnected unexpectedly!"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3189
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$602(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;)Lcom/qualcomm/qcrilmsgtunnel/IQcrilMsgTunnel;

    .line 3190
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$QcrilMsgTunnelConnection;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->mServiceReady:Z

    .line 3191
    return-void
.end method
