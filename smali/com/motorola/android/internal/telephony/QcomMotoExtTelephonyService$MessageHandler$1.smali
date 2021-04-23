.class Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;
.super Lorg/codeaurora/internal/IDepersoResCallback$Stub;
.source "QcomMotoExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

.field final synthetic val$request:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;)V
    .locals 0
    .param p1, "this$1"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    .line 274
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;->this$1:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    iput-object p2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;->val$request:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    invoke-direct {p0}, Lorg/codeaurora/internal/IDepersoResCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDepersoResult(II)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "phoneId"    # I

    .line 276
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;->this$1:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    iget-object v0, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

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

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;->val$request:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    .line 278
    :cond_1
    nop

    .line 277
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;->val$request:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;->val$request:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
