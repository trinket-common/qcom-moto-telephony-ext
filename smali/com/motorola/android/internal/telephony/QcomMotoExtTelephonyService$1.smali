.class Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;
.super Lorg/codeaurora/internal/IDepersoResCallback$Stub;
.source "QcomMotoExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->supplyIccDepersonalization(ILjava/lang/String;ILcom/motorola/android/internal/telephony/IMotoDepersoCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

.field final synthetic val$callback:Lcom/motorola/android/internal/telephony/IMotoDepersoCB;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Lcom/motorola/android/internal/telephony/IMotoDepersoCB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 1115
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    iput-object p2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;->val$callback:Lcom/motorola/android/internal/telephony/IMotoDepersoCB;

    invoke-direct {p0}, Lorg/codeaurora/internal/IDepersoResCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDepersoResult(II)V
    .locals 4
    .param p1, "result"    # I
    .param p2, "phoneId"    # I

    .line 1117
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on deperso result received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 1119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;->val$callback:Lcom/motorola/android/internal/telephony/IMotoDepersoCB;

    invoke-interface {v0, p1, p2}, Lcom/motorola/android/internal/telephony/IMotoDepersoCB;->onDepersoResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    goto :goto_0

    .line 1120
    :catch_0
    move-exception v0

    .line 1121
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$1;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException @supplyIccDepersonalization"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 1123
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
