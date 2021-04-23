.class public Lcom/motorola/android/internal/telephony/MotoOemHookCallback;
.super Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;
.source "MotoOemHookCallback.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String; = "MotoOemHookCallback"


# instance fields
.field private mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/motorola/android/internal/telephony/IMotoOemCB;)V
    .locals 1
    .param p1, "motoOemCB"    # Lcom/motorola/android/internal/telephony/IMotoOemCB;

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/qcrilhook/IOemHookCallback$Stub;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;

    .line 38
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;

    .line 39
    return-void
.end method


# virtual methods
.method public onOemHookException(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 58
    const-string v0, "MotoOemHookCallback"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;

    if-eqz v1, :cond_1

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->DBG:Z

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOemHookException + phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/IMotoOemCB;->onOemHookException()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "got RemoteException when call motoOemCB.onOemHookResponse()"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onOemHookResponse([BI)V
    .locals 3
    .param p1, "response"    # [B
    .param p2, "phoneId"    # I

    .line 43
    const-string v0, "MotoOemHookCallback"

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;

    if-eqz v1, :cond_1

    .line 45
    :try_start_0
    sget-boolean v1, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->DBG:Z

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOemHookResponse + phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " response = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/MotoOemHookCallback;->mMotoOemCB:Lcom/motorola/android/internal/telephony/IMotoOemCB;

    invoke-interface {v1, p1}, Lcom/motorola/android/internal/telephony/IMotoOemCB;->onOemHookResponse([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "got RemoteException when call motoOemCB.onOemHookResponse()"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method
