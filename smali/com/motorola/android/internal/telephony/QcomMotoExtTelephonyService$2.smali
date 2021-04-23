.class Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;
.super Lcom/motorola/android/internal/telephony/IMotoOemCB$Stub;
.source "QcomMotoExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getCdmaSysInfo(ILjava/lang/String;Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

.field final synthetic val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 1168
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    iput-object p2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IMotoOemCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOemHookException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v1, "getCdmaSysInfo exception"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V

    .line 1205
    return-void
.end method

.method public onOemHookResponse([B)V
    .locals 8
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    invoke-interface {v1, v0}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V

    goto/16 :goto_0

    .line 1174
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const v2, 0x20000cc

    .line 1175
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/QcomOemConstants;->getByteOrderByRequestId(I)Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1177
    .local v1, "byteBuff":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvUtils;->readOemHookRespHeader(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;

    move-result-object v2

    .line 1178
    .local v2, "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    iget-object v3, v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->error:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    sget-object v4, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    if-eq v3, v4, :cond_1

    .line 1179
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaSysInfo error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1180
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    invoke-interface {v3, v0}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V

    goto :goto_0

    .line 1182
    :cond_1
    iget v3, v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->dataLength:I

    new-array v3, v3, [B

    .line 1183
    .local v3, "sysInfobyteArr":[B
    const/4 v4, 0x0

    iget v5, v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;->dataLength:I

    invoke-virtual {v1, v3, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1184
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 1185
    .local v4, "sysInfo":Ljava/lang/String;
    iget-object v5, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaSysInfo result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1186
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1187
    .local v5, "sysInfoStringArr":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 1188
    new-instance v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;

    invoke-direct {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;-><init>()V

    .line 1189
    .local v0, "infoObj":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1190
    aget-object v6, v5, v7

    invoke-static {v6}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$400(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v0, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;->isFemtoCell:Z

    .line 1192
    :cond_2
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    invoke-interface {v6, v0}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V

    .line 1193
    .end local v0    # "infoObj":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;
    goto :goto_0

    .line 1194
    :cond_3
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v7, "getCdmaSysInfo result missing"

    invoke-virtual {v6, v7}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1195
    iget-object v6, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$2;->val$infoCB:Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;

    invoke-interface {v6, v0}, Lcom/motorola/android/internal/telephony/IMotoCdmaSysInfoCB;->onCdmaSysInfoResult(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CdmaSysInfo;)V

    .line 1199
    .end local v1    # "byteBuff":Ljava/nio/ByteBuffer;
    .end local v2    # "header":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookDataHeader;
    .end local v3    # "sysInfobyteArr":[B
    .end local v4    # "sysInfo":Ljava/lang/String;
    .end local v5    # "sysInfoStringArr":[Ljava/lang/String;
    :goto_0
    return-void
.end method
