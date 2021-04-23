.class Lcom/motorola/android/internal/telephony/NrStateManager$1;
.super Landroid/os/Handler;
.source "NrStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/NrStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/NrStateManager;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/NrStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/NrStateManager;

    .line 159
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    .line 162
    .local v0, "what":I
    shr-int/lit8 v1, v0, 0x10

    .line 163
    .local v1, "slotId":I
    iget-object v2, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-virtual {v2, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->getCurrentServiceState(I)Lcom/motorola/android/internal/telephony/NrServiceState;

    move-result-object v2

    .line 164
    .local v2, "state":Lcom/motorola/android/internal/telephony/NrServiceState;
    const v3, 0xffff

    and-int/2addr v3, v0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 194
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const-string v4, "MESSAGE_ENDC_STATUS_CHANGE"

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 195
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 196
    .local v3, "enabled":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/NrServiceState;->getEndcEnabled()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 197
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/motorola/android/internal/telephony/NrServiceState;->setEndcEnabled(I)V

    .line 198
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$300(Lcom/motorola/android/internal/telephony/NrStateManager;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/NrServiceState;->isEndcEnabled()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyEndcStatusChanged(IZ)V

    goto/16 :goto_0

    .line 186
    .end local v3    # "enabled":Ljava/lang/Integer;
    :pswitch_2
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const-string v4, "MESSAGE_BEARER_ALLOCATION"

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 187
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 188
    .local v3, "bearer":I
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/NrServiceState;->getBearer()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 189
    invoke-virtual {v2, v3}, Lcom/motorola/android/internal/telephony/NrServiceState;->setBearer(I)V

    .line 190
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$300(Lcom/motorola/android/internal/telephony/NrStateManager;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyNrBearerAllocationChanged(II)V

    goto :goto_0

    .line 178
    .end local v3    # "bearer":I
    :pswitch_3
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const-string v4, "MESSAGE_DATA_ICON_CHANGED"

    invoke-virtual {v3, v4}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 179
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 180
    .local v3, "dataIconType":Ljava/lang/Integer;
    invoke-virtual {v2}, Lcom/motorola/android/internal/telephony/NrServiceState;->getDataIconType()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/motorola/android/internal/telephony/NrServiceState;->setDataIconType(I)V

    .line 182
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$300(Lcom/motorola/android/internal/telephony/NrStateManager;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyNrDataIconTypeChanged(II)V

    goto :goto_0

    .line 172
    .end local v3    # "dataIconType":Ljava/lang/Integer;
    :pswitch_4
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$200(Lcom/motorola/android/internal/telephony/NrStateManager;)V

    .line 176
    goto :goto_0

    .line 166
    :pswitch_5
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 167
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$1;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$100(Lcom/motorola/android/internal/telephony/NrStateManager;)V

    .line 170
    nop

    .line 205
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
