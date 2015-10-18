.class Lcom/lge/wearable/chargingmode/ChargingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChargingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wearable/chargingmode/ChargingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;


# direct methods
.method constructor <init>(Lcom/lge/wearable/chargingmode/ChargingActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setExpectedTime(I)J
    .locals 10
    .param p1, "batteryStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    const-wide/16 v6, -0x1

    .line 115
    .local v6, "rst":J
    :try_start_0
    iget-object v5, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->status:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v5}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$400(Lcom/lge/wearable/chargingmode/ChargingActivity;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    .line 116
    .local v3, "mBatteryInfo":Lcom/android/internal/app/IBatteryStats;
    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v1

    .line 117
    .local v1, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 118
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v8, v1

    invoke-virtual {v4, v1, v5, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 119
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "data":[B
    .end local v3    # "mBatteryInfo":Lcom/android/internal/app/IBatteryStats;
    .end local v4    # "parcel":Landroid/os/Parcel;
    :goto_0
    move v0, p1

    .line 125
    .local v0, "curStatus":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 126
    const-string v5, "charging"

    invoke-static {v5}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->status:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v5}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$400(Lcom/lge/wearable/chargingmode/ChargingActivity;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v6

    .line 128
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 129
    const-string v5, "getting battery info"

    invoke-static {v5}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_1
    return-wide v6

    .line 120
    .end local v0    # "curStatus":I
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/wearable/chargingmode/ChargingLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "curStatus":I
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remain time for full charging: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # invokes: Lcom/lge/wearable/chargingmode/ChargingActivity;->getRemainTime(J)Ljava/lang/String;
    invoke-static {v8, v6, v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$500(Lcom/lge/wearable/chargingmode/ChargingActivity;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "action":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive action:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 69
    const-string v7, "android.intent.action.DOCK_EVENT"

    if-ne v0, v7, :cond_1

    .line 70
    const-string v7, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 71
    .local v4, "mDockState":I
    if-nez v4, :cond_0

    .line 72
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    invoke-virtual {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->finish()V

    .line 109
    .end local v4    # "mDockState":I
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 75
    const-string v7, "level"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 76
    .local v3, "level":I
    const-string v7, "scale"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 77
    .local v5, "scale":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive level:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", scale: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 78
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I
    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$000(Lcom/lge/wearable/chargingmode/ChargingActivity;)I

    move-result v6

    .line 79
    .local v6, "tempBatteryLevel":I
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J
    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$100(Lcom/lge/wearable/chargingmode/ChargingActivity;)J

    move-result-wide v8

    .line 80
    .local v8, "tempRemainTime":J
    if-eq v3, v11, :cond_2

    if-ne v5, v11, :cond_4

    .line 86
    :cond_2
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempBatteryLevel: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 87
    const-string v7, "status"

    invoke-virtual {p2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "batteryStatus":I
    :try_start_0
    invoke-direct {p0, v1}, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->setExpectedTime(I)J

    move-result-wide v8

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tempRemainTime: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_2
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I
    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$000(Lcom/lge/wearable/chargingmode/ChargingActivity;)I

    move-result v7

    if-ne v7, v6, :cond_3

    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J
    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$100(Lcom/lge/wearable/chargingmode/ChargingActivity;)J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-eqz v7, :cond_0

    .line 98
    :cond_3
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # setter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I
    invoke-static {v7, v6}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$002(Lcom/lge/wearable/chargingmode/ChargingActivity;I)I

    .line 99
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # setter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J
    invoke-static {v7, v8, v9}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$102(Lcom/lge/wearable/chargingmode/ChargingActivity;J)J

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBatteryLevel: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mBatteryLevel:I
    invoke-static {v10}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$000(Lcom/lge/wearable/chargingmode/ChargingActivity;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", mRemainTime: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # getter for: Lcom/lge/wearable/chargingmode/ChargingActivity;->mRemainTime:J
    invoke-static {v10}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$100(Lcom/lge/wearable/chargingmode/ChargingActivity;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingLog;->d(Ljava/lang/String;)V

    .line 101
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # invokes: Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshBattery()V
    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$200(Lcom/lge/wearable/chargingmode/ChargingActivity;)V

    goto/16 :goto_0

    .line 83
    .end local v1    # "batteryStatus":I
    :cond_4
    int-to-float v7, v3

    int-to-float v10, v5

    div-float/2addr v7, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v7, v10

    float-to-int v6, v7

    goto/16 :goto_1

    .line 93
    .restart local v1    # "batteryStatus":I
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 104
    .end local v1    # "batteryStatus":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "level":I
    .end local v5    # "scale":I
    .end local v6    # "tempBatteryLevel":I
    .end local v8    # "tempRemainTime":J
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.intent.action.TIME_TICK"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.intent.action.TIME_SET"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v10, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    :cond_6
    iget-object v7, p0, Lcom/lge/wearable/chargingmode/ChargingActivity$1;->this$0:Lcom/lge/wearable/chargingmode/ChargingActivity;

    # invokes: Lcom/lge/wearable/chargingmode/ChargingActivity;->refreshTimeTextView()V
    invoke-static {v7}, Lcom/lge/wearable/chargingmode/ChargingActivity;->access$300(Lcom/lge/wearable/chargingmode/ChargingActivity;)V

    goto/16 :goto_0
.end method
