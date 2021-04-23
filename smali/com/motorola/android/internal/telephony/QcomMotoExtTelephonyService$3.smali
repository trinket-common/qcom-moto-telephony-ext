.class Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;
.super Ljava/lang/Object;
.source "QcomMotoExtTelephonyService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 3145
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 3148
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    const-string v1, "QcrilMsgService Died"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->loge(Ljava/lang/String;)V

    .line 3149
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$500(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$3;->this$0:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 3150
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->access$500(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3149
    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3152
    return-void
.end method
