.class Lcom/motorola/android/internal/telephony/QcomNvManager$1;
.super Lcom/motorola/android/internal/telephony/IMotoOemCB$Stub;
.source "QcomNvManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/internal/telephony/QcomNvManager;->CSGPerformNWScan(ILcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

.field final synthetic val$scanCB:Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;


# direct methods
.method constructor <init>(Lcom/motorola/android/internal/telephony/QcomNvManager;Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/motorola/android/internal/telephony/QcomNvManager;

    .line 980
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$1;->this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

    iput-object p2, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$1;->val$scanCB:Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;

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

    .line 997
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$1;->this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

    const-string v1, "CSGPerformNWScan exception"

    invoke-static {v0, v1}, Lcom/motorola/android/internal/telephony/QcomNvManager;->access$100(Lcom/motorola/android/internal/telephony/QcomNvManager;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$1;->val$scanCB:Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;

    invoke-interface {v0}, Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;->onSearchFailed()V

    .line 999
    return-void
.end method

.method public onOemHookResponse([B)V
    .locals 4
    .param p1, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 983
    const/4 v0, 0x0

    .line 984
    .local v0, "resultInfo":Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSearchResultInfo;
    if-eqz p1, :cond_0

    .line 985
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 986
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;->deserialize(Ljava/nio/ByteBuffer;)Lcom/motorola/android/internal/telephony/QcomNvInfo$QcomCsgSearchResultInfo;

    move-result-object v0

    .line 989
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    :cond_0
    if-eqz v0, :cond_1

    .line 990
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$1;->this$0:Lcom/motorola/android/internal/telephony/QcomNvManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsed csg search result Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSearchResultInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/android/internal/telephony/QcomNvManager;->access$000(Lcom/motorola/android/internal/telephony/QcomNvManager;Ljava/lang/String;)V

    .line 992
    :cond_1
    iget-object v1, p0, Lcom/motorola/android/internal/telephony/QcomNvManager$1;->val$scanCB:Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;

    invoke-interface {v1, v0}, Lcom/motorola/android/internal/telephony/IMotoCSGNWScanCB;->onSearchCompleted(Lcom/motorola/android/telephony/MotoExtTelephonyInfo$CsgSearchResultInfo;)V

    .line 993
    return-void
.end method
