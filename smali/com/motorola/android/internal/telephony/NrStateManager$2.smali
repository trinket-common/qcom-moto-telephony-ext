.class Lcom/motorola/android/internal/telephony/NrStateManager$2;
.super Ljava/lang/Object;
.source "NrStateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 208
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const-string v1, "cleanup"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$902(Lcom/motorola/android/internal/telephony/NrStateManager;Z)Z

    .line 247
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$502(Lcom/motorola/android/internal/telephony/NrStateManager;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    .line 248
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$602(Lcom/motorola/android/internal/telephony/NrStateManager;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    .line 249
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 232
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindingDied:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/NrStateManager$2;->cleanup()V

    .line 234
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$400(Lcom/motorola/android/internal/telephony/NrStateManager;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const-string v1, "try to re-bind"

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$1000(Lcom/motorola/android/internal/telephony/NrStateManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x400

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    .line 240
    invoke-static {v2}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$400(Lcom/motorola/android/internal/telephony/NrStateManager;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    .line 239
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 242
    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 211
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$402(Lcom/motorola/android/internal/telephony/NrStateManager;I)I

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {p2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$502(Lcom/motorola/android/internal/telephony/NrStateManager;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;

    .line 215
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$500(Lcom/motorola/android/internal/telephony/NrStateManager;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$700(Lcom/motorola/android/internal/telephony/NrStateManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v3}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$800(Lcom/motorola/android/internal/telephony/NrStateManager;)Lorg/codeaurora/internal/INetworkCallback;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/codeaurora/internal/IExtTelephony;->registerCallback(Ljava/lang/String;Lorg/codeaurora/internal/INetworkCallback;)Lorg/codeaurora/internal/Client;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$602(Lcom/motorola/android/internal/telephony/NrStateManager;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;

    .line 216
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$902(Lcom/motorola/android/internal/telephony/NrStateManager;Z)Z

    .line 217
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$200(Lcom/motorola/android/internal/telephony/NrStateManager;)V

    .line 218
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    invoke-static {v2}, Lcom/motorola/android/internal/telephony/NrStateManager;->access$600(Lcom/motorola/android/internal/telephony/NrStateManager;)Lorg/codeaurora/internal/Client;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 226
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/NrStateManager$2;->this$0:Lcom/motorola/android/internal/telephony/NrStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/internal/telephony/NrStateManager;->logd(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/NrStateManager$2;->cleanup()V

    .line 228
    return-void
.end method
