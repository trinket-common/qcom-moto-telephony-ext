.class public Lcom/motorola/android/internal/telephony/MotoOemHookIndication;
.super Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub;
.source "MotoOemHookIndication.java"


# instance fields
.field private mMotoService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;


# direct methods
.method public constructor <init>(Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;)V
    .locals 0
    .param p1, "motoService"    # Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 30
    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IMotoOemHookIndication$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/MotoOemHookIndication;->mMotoService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    .line 32
    return-void
.end method


# virtual methods
.method public onOemHookIndication(I[B)V
    .locals 2
    .param p1, "phoneid"    # I
    .param p2, "response"    # [B

    .line 39
    const-string v0, "MotoOemHookIndication"

    const-string v1, "received oemhook indication "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/MotoOemHookIndication;->mMotoService:Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;

    invoke-virtual {v0, p1, p2}, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;->handleOemHookIndication(I[B)V

    .line 41
    return-void
.end method
