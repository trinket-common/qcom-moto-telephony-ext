.class Lcom/motorola/android/internal/telephony/QcomNvManager$2;
.super Lcom/motorola/android/internal/telephony/IMotoOemCB$Stub;
.source "QcomNvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/QcomNvManager;->CSGSetSysSelectPref(ILcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSelectionInfo;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

.field final synthetic val$selectionCB:Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomNvManager;Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/QcomNvManager;

    .line 1010
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$2;->this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

    iput-object p2, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$2;->val$selectionCB:Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;

    invoke-direct {p0}, Lcom/motorola/android/internal/telephony/IMotoOemCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOemHookException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$2;->this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

    const-string v1, "CSGSetSysSelectPref exception"

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->access$100(Lcom/motorola/android/internal/telephony/QcomNvManager;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$2;->val$selectionCB:Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;->onSelectionDone(I)V

    .line 1020
    return-void
.end method

.method public onOemHookResponse([B)V
    .locals 2
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$2;->val$selectionCB:Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/motorola/android/internal/telephony/IMotoCSGSelectionCB;->onSelectionDone(I)V

    .line 1014
    return-void
.end method
