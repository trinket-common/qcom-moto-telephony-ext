.class public final enum Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
.super Ljava/lang/Enum;
.source "QcomNvUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/internal/telephony/QcomNvUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OemHookRespError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

.field public static final enum OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

.field public static final enum OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

.field public static final enum OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

.field public static final enum OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

.field public static final enum OEM_RIL_CDMA_RADIO_NOT_AVAILABLE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

.field public static final enum OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 156
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const-string v1, "OEM_RIL_CDMA_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 157
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const-string v1, "OEM_RIL_CDMA_RADIO_NOT_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_RADIO_NOT_AVAILABLE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 158
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const-string v1, "OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 159
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const-string v1, "OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 160
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const-string v1, "OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 161
    new-instance v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    const-string v1, "OEM_RIL_CDMA_GENERIC_FAILURE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    .line 155
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    sget-object v8, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_SUCCESS:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    aput-object v8, v1, v2

    sget-object v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_RADIO_NOT_AVAILABLE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_NAM_READ_WRITE_FAILURE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_NAM_PASSWORD_INCORRECT:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_NAM_ACCESS_COUNTER_EXCEEDED:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->$VALUES:[Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    iput p3, p0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->id:I

    .line 166
    return-void
.end method

.method public static fromInt(I)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    .locals 5
    .param p0, "id"    # I

    .line 173
    invoke-static {}, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->values()[Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 174
    .local v3, "en":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    iget v4, v3, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->id:I

    if-ne v4, p0, :cond_0

    .line 175
    return-object v3

    .line 173
    .end local v3    # "en":Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->OEM_RIL_CDMA_GENERIC_FAILURE:Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 155
    const-class v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    return-object v0
.end method

.method public static values()[Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;
    .locals 1

    .line 155
    sget-object v0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->$VALUES:[Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    invoke-virtual {v0}, [Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/motorola/android/internal/telephony/QcomNvUtils$OemHookRespError;->id:I

    return v0
.end method
