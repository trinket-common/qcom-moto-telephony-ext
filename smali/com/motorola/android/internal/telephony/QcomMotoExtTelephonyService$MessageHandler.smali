.class final Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;
.super Landroid/os/Handler;
.source "QcomMotoExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 241
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 243
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 251
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageHandler: msg id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->logd(Ljava/lang/String;)V

    .line 252
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageHandler: unexpected message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 317
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 318
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    .line 319
    .local v2, "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 320
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    .line 323
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimCardNumber: CommandException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v3, "setSimCardNumber: Unknown exception"

    invoke-virtual {v1, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 329
    :goto_0
    monitor-enter v2

    .line 330
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 331
    monitor-exit v2

    .line 332
    goto/16 :goto_2

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 304
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    .line 305
    .local v0, "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    const/16 v2, 0x7d6

    invoke-virtual {p0, v2, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 306
    .local v2, "onCompleted":Landroid/os/Message;
    iget-object v3, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->argument:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    .line 307
    .local v3, "simCardTagNum":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    iget-object v5, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 309
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    .line 310
    monitor-enter v0

    .line 311
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 312
    monitor-exit v0

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 270
    .end local v0    # "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    .end local v2    # "onCompleted":Landroid/os/Message;
    .end local v3    # "simCardTagNum":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;

    .line 271
    .restart local v0    # "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    iget-object v1, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;

    .line 274
    .local v1, "unlockInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;
    const/4 v2, 0x3

    :try_start_2
    new-instance v3, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;

    invoke-direct {v3, p0, v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler$1;-><init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;)V

    .line 286
    .local v3, "qcCallback":Lorg/codeaurora/internal/IDepersoResCallback;
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v4}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$300(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v4

    iget-object v5, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;->pin:Ljava/lang/String;

    iget v6, v1, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;->lockType:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    .line 286
    invoke-interface {v4, v5, v6, v3, v7}, Lorg/codeaurora/internal/IExtTelephony;->supplyIccDepersonalization(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/internal/IDepersoResCallback;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "qcCallback":Lorg/codeaurora/internal/IDepersoResCallback;
    goto :goto_1

    .line 294
    :catch_0
    move-exception v3

    .line 295
    .local v3, "ex":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException @unlockDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    .line 297
    monitor-enter v0

    .line 298
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 299
    monitor-exit v0

    .line 301
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    goto :goto_2

    .line 299
    .restart local v3    # "ex":Ljava/lang/NullPointerException;
    :catchall_2
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 288
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 289
    .local v3, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException @unlockDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->result:Ljava/lang/Object;

    .line 291
    monitor-enter v0

    .line 292
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 293
    monitor-exit v0

    .line 300
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 293
    .restart local v3    # "ex":Landroid/os/RemoteException;
    :catchall_3
    move-exception v2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    .line 266
    .end local v0    # "request":Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
    .end local v1    # "unlockInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$UnlockInfo;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :pswitch_4
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$200(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V

    .line 267
    goto :goto_2

    .line 255
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 256
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 257
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    .line 258
    .local v1, "data":[B
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 259
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v3, v2, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->notifyOemHookRawEventForPhone(I[B)V

    .line 260
    .end local v1    # "data":[B
    .end local v2    # "phoneId":I
    goto :goto_2

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM hook raw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 263
    nop

    .line 338
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
