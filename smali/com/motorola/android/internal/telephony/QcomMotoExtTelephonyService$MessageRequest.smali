.class final Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;
.super Ljava/lang/Object;
.source "QcomMotoExtTelephonyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageRequest"
.end annotation


# instance fields
.field public argument:Ljava/lang/Object;

.field public result:Ljava/lang/Object;

.field public subId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "argument"    # Ljava/lang/Object;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->subId:Ljava/lang/Integer;

    .line 217
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->argument:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "argument"    # Ljava/lang/Object;
    .param p2, "subId"    # Ljava/lang/Integer;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->subId:Ljava/lang/Integer;

    .line 221
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->argument:Ljava/lang/Object;

    .line 222
    if-eqz p2, :cond_0

    .line 223
    iput-object p2, p0, Lcom/motorola/android/internal/telephony/QcomMotoExtTelephonyService$MessageRequest;->subId:Ljava/lang/Integer;

    .line 225
    :cond_0
    return-void
.end method
